var $ = jQuery;

// var SERVER = "http://192.168.33.100:5000";
var SERVER = "http://api.devfest.xyz";
var SPEAKERS_ENDPOINT = SERVER + "/api/devfest/speakers/";
var SPEECHES_ENDPOINT = SERVER + "/api/devfest/speeches/";
var SPONSORS_ENDPOINT = SERVER + "/api/devfest/sponsors/";
var REGISTER_ENDPOINT = SERVER + "/api/devfest/attends/";


$(document).on("ready", function(){


    var $intro = $('.intro-block');
    var $navbar = $('.navbar');
    var $showMoreBlock = $(".more-speakers");
    var $speakerBlock = $("#speakers-block");


    var valH = $(window).height();

    // Preloader
    var preloader = new $.materialPreloader({
        position: 'top',
        height: '5px',
        col_1: '#159756',
        col_2: '#da4733',
        col_3: '#3b78e7',
        col_4: '#fdba2c',
        fadeIn: 200,
        fadeOut: 200
    });

    // Intro block.
    // $intro.css({
    //     "height": valH
    // });


    // Populate SPEAKERS
    $.get( SPEAKERS_ENDPOINT, function( data ) {
        Notary.populate("speaker", data, "speakers", function($dom, obj){


            var $menu = $dom.find("[data-card-menu]");
            var $back = $dom.find("[data-card-back]");
            var $card = $dom.find(".speaker-card");

            $menu.click(function(){
                $card.toggleClass("show-menu");
            });

            $back.click(function(){
                $card.toggleClass("show-menu");
            });
        });
    });


     //Poulate Schedule
    $.get(SPEECHES_ENDPOINT, function(data){
       Notary.populate("speech", data, "speeches", function($dom, obj){
           console.log(obj);
           var $sala = $dom.find("[schedule-item-info]");

       });
    });


    var $btnRegister = $("#btnRegister");
    var $registerForm = $("#registerForm");

    $btnRegister.click(function(e){
        e.preventDefault();
        e.stopPropagation();
        preloader.on();

        $registerForm.validate(function(success){

            setTimeout(function() {
                if(success) {
                    var obj = Notary.makeAttende();

                    $.ajax({
                        url: REGISTER_ENDPOINT,
                        method: 'POST',
                        data: obj,
                        success: function(data, textStatus, jqXHR){
                            $registerForm.trigger("reset");
                            Materialize.toast('Te has registrado exitosamente!', 4000);
                        },
                        error: function( jqXHR, textStatus, errorThrown){
                            Materialize.toast('Hubo un error en el registro', 2000);

                            if(!!jqXHR.responseJSON.email){
                                Materialize.toast('Su correo ya fué regitrado.', 2000);
                                $("#email").get(0).focus();
                            }
                        },
                        beforeSend: function( jqXHR, settings){
                            preloader.on();
                        },
                        complete: function(jqXHR, textStatus){
                            preloader.off();
                        },
                    })
                } else {
                    preloader.off();
                    Materialize.toast('Formulario Invalido', 2000);
                }
            }, 2000);

        });

    })


    // Populate SPONSORS
    $.get( SPONSORS_ENDPOINT, function( data ) {
        Notary.populate("sponsor", data, "sponsors");
    });

    // Apply navigation
    $('#navPage').singlePageNav();


    // Show more speakers
    $(".button-more").click(function(){

        if($speakerBlock.hasClass("open")) {
            $speakerBlock.removeClass("open");
            $(this).text("VER MAS");
        } else {
            $speakerBlock.addClass("open");
            $(this).text("VER MENOS");
        }

        $('html, body').animate({
            scrollTop: $speakerBlock.offset().top
        }, 300);

    });

    // data-model
    // data-text
    // data-link
    // data-image


});
