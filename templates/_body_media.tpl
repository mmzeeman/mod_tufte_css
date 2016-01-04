{% with m.rsc[id] as media %}
{% ifequal align "block" %}
	{% ifequal m.rsc[id].medium.mime "text/html-oembed" %}
		<section class="oembed-wrapper">
			{% media m.rsc[id].medium %}
		</section>
	{% else %}
        {% if sizename == "large" %}
        <figure class="fullwidth">
			{% media m.rsc[id].medium width=2048 height=2048 alt=m.rsc[id].title %}
			{% if m.rsc[id].summary %}<p class="image-caption">{{ m.rsc[id].summary }}</p>{% endif %}
		</figure>

        {% elif sizename == "medium" %}
        <figure>
            <p class="marginnote">
                {% if m.rsc[id].title %}{{ m.rsc[id].title }}{% endif %}
                {% if m.rsc[id].summary %}<em>{{ m.rsc[id].summary }}</em>{% endif %}
            </p>
            {% media m.rsc[id].medium width=1600 height=1600 alt=m.rsc[id].title %}
		</figure>

        {% elif sizename == "small" %}
        <p>
            <span class="marginnote">
			{% media m.rsc[id].medium width=500 height=500 link=link alt=m.rsc[id].title %}
            {% if m.rsc[id].title %}{{ m.rsc[id].title }}{% endif %}
            {% if m.rsc[id].summary %}<em>{{ m.rsc[id].summary }}</em>{% endif %}
		    </span>
        </p>

        {% endif %}

	{% endifequal %}
{% else %}
	{% media m.rsc[id].medium width=size.width height=size.height crop=crop class=align link=link alt=m.rsc[id].title %}
{% endifequal %}
{% endwith %}
