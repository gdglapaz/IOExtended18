{% set DEBUG = true %}

<!DOCTYPE html>
<html lang="es">
<head>
    <title>{% block title %}{% endblock %} &#124;</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Dev Fest - La Paz, Bolivia 2015">
    <meta name="author" content="Victor Aguilar C. - @jvacx">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="ico/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">


    <link rel="apple-touch-icon" sizes="57x57" href="ico/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="ico/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="ico/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="ico/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="ico/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="ico/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="ico/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="ico/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="ico/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="ico/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="ico/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="ico/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="ico/favicon-16x16.png">
    <link rel="manifest" href="ico/manifest.json">


    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


    {#<link rel="stylesheet" href="vendor/mdl/material.min.css">#}
    <link rel="stylesheet" href="vendor/materialize/css/materialize.css">
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/material-preloader/preloader.min.css">

    <link rel="stylesheet" href="css/app.css">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    {% block extrastyles %}{% endblock %}
    {% block extrahead %}{% endblock %}
</head>

    <body class="{% block body_class %}{% endblock %}">



            {% block content %} {% endblock %}


        {% block prescripts %} {% endblock %}

        {% if DEBUG %}
            <script src="vendor/jquery.min.js"></script>
            {#<script src="vendor/mdl/material.min.js"></script>#}
            <script src="vendor/materialize/js/materialize.js"></script>
            <script src="vendor/verify.notify.min.js"></script>
            <script src="vendor/material-preloader/preloader.min.js"></script>
            <script src="vendor/singlenav.js"></script>

            <script src="js/notary.js"></script>
            <script src="js/app.js"></script>
        {% else %}
            <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
            {#<script src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>#}
            {#<script src="js/scripts.min.js"></script>#}
        {% endif %}
        <script>
              (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
              m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
              })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

              ga('create', 'UA-69541851-1', 'auto');
              ga('send', 'pageview');

            </script>

        {% block scripts %}{% endblock %}
        {% block extrascripts %}{% endblock %}
    </body>
</html>
