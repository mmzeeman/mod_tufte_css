<form method="GET" action="{% url search %}#content-pager">
    <input type="hidden" name="qcat" value="{{ q.qcat|escape }}" />
    <input class="sans" type="text" name="qs" placeholder="{_ Search _}" value="{{ q.qs|escape }}" />
</form>
