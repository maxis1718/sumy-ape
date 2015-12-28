<!doctype html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="title" content="{% block meta_title %}{% endblock %}">
    <meta name="keywords" content="{% block meta_keywords %}{% endblock %}">
    <meta name="description" content="{% block meta_description %}{% endblock %}">
    <title>{{ title }}</title>

    <link rel="shortcut icon" type="image/png" href="{{ url_for('static', filename='img/favicon.png') }}" sizes="128x128" />

    <link rel="apple-touch-icon" sizes="57x57" href="static/img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="static/img/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="static/img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="static/img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="static/img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="static/img/apple-touch-icon-120x120.png">
    <link rel="icon" type="image/png" href="static/img/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="static/img/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="static/img/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="static/img/manifest.json">
    <link rel="mask-icon" href="static/img/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="apple-mobile-web-app-title" content="kerker">
    <meta name="application-name" content="kerker">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

    <link rel="stylesheet" href="{{ url_for('static', filename='components/bootstrap/dist/css/bootstrap-theme.min.css') }}">
    <link rel="stylesheet" href="{{ url_for('static', filename='components/bootstrap/dist/css/bootstrap.min.css') }}">

    {% block extra_css %}
    {% endblock %}

    <script src="{{ url_for('static', filename='components/jquery/dist/jquery.min.js') }}"></script>
    <script src="{{ url_for('static', filename='components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <script src="{{ url_for('static', filename='scripts/main.js') }}"></script>


    {% block extra_js %}
    {% endblock %}

    {% block extra_head %}
    {% endblock %}

</head>

<body>
<div class="wrap">
    {% block main %}
    {% endblock %}
</div>

</body>
</html>
