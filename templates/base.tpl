<!doctype html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="title" content="{% block meta_title %}{% endblock %}">
    <meta name="keywords" content="{% block meta_keywords %}{% endblock %}">
    <meta name="description" content="{% block meta_description %}{% endblock %}">
    <title>{{ title }}</title>

    <link rel="shortcut icon" type="image/png" href="{{ url_for('static', filename='img/favicon.png') }}">

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
