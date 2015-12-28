{% extends "base.tpl" %}

{% block meta_title %}{% endblock %}
{% block title %}{% endblock %}

<!-- extrac css -->
{% block extra_css %}
<link rel="stylesheet" href="{{ url_for('static', filename='styles/main.css') }}">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
{% endblock %}

<!-- extrac js -->
{% block extra_js %}
{% endblock %}

{% block main %}
<div>
    <div>
        <h1>Sumly</h1>
        <hr />
    </div>
    <div>
        <div>
            <h3>Count</h3>
        </div>
        <input id="count" value="3"></input>
    </div>
    <div>
        <div>
            <h3>Language</h3>
        </div>
        <input id="lang" value="english"></input>
    </div>
    <div>
        <div>
            <h3>Article</h3>
        </div>
        <textarea id="article">Star Wars: The Force Awakens (also known as Star Wars Episode VII: The Force Awakens) is a 2015 American epic space opera film directed, co-produced, and co-written by J. J. Abrams. The seventh installment in the main Star Wars film series, it stars Harrison Ford, Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong'o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Peter Mayhew, and Max von Sydow. Produced by Lucasfilm and Abrams' Bad Robot Productions and distributed worldwide by Walt Disney Studios Motion Pictures, The Force Awakens is set approximately 30 years after Return of the Jedi (1983), and follows Rey, Finn, and Poe Dameron's fight with the Resistance, led by veterans of the Rebel Alliance, against Kylo Ren and the First Order, descended from the Galactic Empire.</textarea>
    </div>
    <div class="sumy-wrap">
        <button id="sumy-btn">Sumy</button>
    </div>

    <div id="results"></div>
</div>

{% endblock %}
