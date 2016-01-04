{% extends "tufte_base.tpl" %}

{# Page for TABLET+ #}

{% block main %}
	{# include "_meta.tpl" #}

    <h1>{{ m.rsc[id].title }}</h1>
    {% if m.rsc[id].short_title %}
        <p class="subtitle">{{ m.rsc[id].short_title }}</p>
    {% endif %}

	{% block summary %}
	{% if m.rsc[id].summary %}
		<div class="epigraph">{{ m.rsc[id].summary }}</div>
	{% endif %}
	{% endblock %}

	{% block depiction %}
	    {# include "_page_depiction.tpl" #}
	{% endblock %}
	{% include "_address.tpl" %}

    <section>
    {% block body %}
		{{ m.rsc[id].body|show_media }}
		{# include "_blocks.tpl" #}
	{% endblock %}
    </section>

	{% block below_body %}
	{% endblock %}

	{# block seealso %}
        {% include "_content_list.tpl" list=id.o.haspart in_collection=id is_large %}
        {% include "_content_list.tpl" list=id.o.relation is_large %}
	{% endblock #}

	{# block thumbnails %}
	    {% include "_page_thumbnails.tpl" %}
	{% endblock #}
</div>
{% endblock %}

{% block subnavbar %}
{#
	{% catinclude "_subnavbar.tpl" id %}
	&nbsp;
    #}
{% endblock %}
