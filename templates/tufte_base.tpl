<!DOCTYPE html>
<html lang="{{ z_language|default:"en"|escape }}">
<head>
	<meta charset="utf-8" />
	<title>{% block title %}{{ id.title }}{% endblock %} &mdash; {{ m.config.site.title.value }}</title>

	<link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="Maas-Maarten Zeeman" />

	{% all include "_html_head.tpl" %}
	{% lib
                "css/et-book.css"
                "css/tufte.css"
				"css/tufte_nav.css"
	%}
	{% block html_head_extra %}{% endblock %}
</head>

<body class="{% block page_class %}{% endblock %}">

{% block navbar %}
<nav class="sans fullwidth" role="navigation">
	{% optional include "_tufte_navbar.tpl" %}
</nav>
{% endblock %}

<article>
{% block content_area %}
	{% block content %}
		{% block above %}{% endblock %}

		{% block main %}{% endblock %}

		{% block subnavbar %}
        	{% optional include "_subnav.tpl" %}
		{% endblock %}

		{% block below %}{% endblock %}
	{% endblock %}
{% endblock %}
</article>

<footer>
{% block footer %}
	{% optional include "_footer.tpl" %}
{% endblock %}
</footer>

{% include "_js_include.tpl" %}
{% script %}

{% block ua_probe %}
	{% include "_ua_probe.tpl"%}
{% endblock %}
</body>
</html>
