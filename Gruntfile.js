/*
 * Default Gruntfile for AppGyver Steroids
 * http://www.appgyver.com
 *
 * Licensed under the MIT license.
 */

'use strict';

var LIVERELOAD_PORT = 35735;
var lrSnippet = require('connect-livereload')({
  port: LIVERELOAD_PORT
});

var mountFolder = function (connect, dir) {
  return connect.static(require('path').resolve(dir));
};

module.exports = function(grunt) {

    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
    grunt.initConfig({

    pkg: grunt.file.readJSON('package.json'),

    project: {
      src: 'src',
      www: 'www',
      scss: '<%= project.src %>/scss',
      swig: '<%= project.src %>/swig',
      js: '<%= project.www %>/js',
      css: '<%= project.www %>/css',
      vendor: '<%= project.www %>/vendor',
      conf: '<%= project.scss %>/config.rb'
    },

    tag: {
      banner: '/*!\n' +
        ' * <%= pkg.name %>\n' +
        ' * <%= pkg.title %>\n' +
        ' * <%= pkg.url %>\n' +
        ' * @author <%= pkg.author %>\n' +
        ' * @version <%= pkg.version %>\n' +
        ' * Copyright <%= pkg.copyright %>. <%= pkg.license %> licensed.\n' +
        ' */\n'
    },

    /**
     * Connect port/livereload
     * https://github.com/gruntjs/grunt-contrib-connect
     * Starts a local webserver and injects
     * livereload snippet
     */
    connect: {
      options: {
        port: 9000,
        hostname: '*',
        base: 'www'
      },
      livereload: {
        options: {
          middleware: function (connect) {
            return [lrSnippet, mountFolder(connect, 'www')];
          }
        }
      }
    },

    /**
     * JSHint
     * https://github.com/gruntjs/grunt-contrib-jshint
     * Manage the options inside .jshintrc file

    jshint: {
      files: ['src/js/*.js'],
      options: {
        jshintrc: '.jshintrc'
      }
    },
     */

    concat: {
      dist: {
        files: {
          '<%= project.js %>/scripts.min.js': '<%= project.js %>/*.js'
        }
      },
      options: {
        stripBanners: true,
        nonull: true,
        banner: '<%= tag.banner %>'
      }
    },

    uglify: {
      options: {
        banner: "<%= tag.banner %>"
      },
      dist: {
        files: {
          '<%= project.js %>/scripts.min.js': [
              '<%= project.js %>/*.js'
          ]
        }
      }
    },

    /**
      * COPY task
    **/
    // copy: {
    //   main: {
    //     files: [
    //       // {expand: true, cwd: '<%= project.extraStyles %>/', src: ['**'], dest: '<%= project.css %>/'},
    //     ],
    //   },
    // },
    compass: {
        dev: {
            options: {
                config: '<%= project.conf %>'
            }
        }
    },

    tasty_swig: {
        dev: {
            context: {
                'word': 'World'
            },
            src: ['<%= project.swig %>/*.swig'],
            dest: '<%= project.www %>'
        }
    },

    htmlmin: {                                     // Task
        dist: {                                      // Target
            options: {                                 // Target options
                removeComments: true,
                collapseWhitespace: true
            },
            files: {                                   // Dictionary of files
                '<%= project.www %>/index.html': '<%= project.www %>/index.html',     // 'destination': 'source'
            }
        },
    },

    open: {
      server: {
        path: 'http://0.0.0.0:<%= connect.options.port %>'
      }
    },

    watch: {
      sass: {
        files: '<%= project.scss %>/{,*/}*.{scss,sass}',
        tasks: ['compass:dev']
      },
      swig: {
        files: '<%= project.swig %>/{,*/}*.swig',
        tasks: ['tasty_swig:dev']
      },
      livereload: {
        options: {
          livereload: LIVERELOAD_PORT
        },
        files: [
          '<%= project.www %>/{,*/}*.html',
          '<%= project.www %>/css/{,*/}*.css',
          '<%= project.www %>/js/{,*/}*.js',
          '<%= project.www %>/{,*/}*.{png,jpg,jpeg,gif,webp,svg}'
        ]
      }
    }
  });

  grunt.registerTask('start', [
    'compass:dev',
    'concat:dist',
    'uglify:dist',
    'tasty_swig:dev',
    // 'htmlmin:dist',
    'connect:livereload',
    'open',
    'watch'
  ]);

  grunt.registerTask("default", ["start"]);
};

