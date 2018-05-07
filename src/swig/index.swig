{% extends 'layouts/base.swig' %}

{% block extrastyles %}{% endblock %}
{% block extrahead %}{% endblock %}


{% block title %}DevFest 2015{% endblock %}


{% block content %}
    {% include "sections/_navbar.swig" %}
    {% include "sections/_intro.swig" %}

    {% include "sections/_about.swig" %}

    {% include "sections/_speakers.swig" %}

    {% include "sections/_schedule.swig" %}

    {% include "sections/_register.swig" %}

    {% include "sections/_location.swig" %}

    {% include "sections/_sponsors.swig" %}

    {% include "sections/_footer.swig" %}

{% endblock %}

