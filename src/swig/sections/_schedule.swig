<div class="schedule-block" id="schedule-block">
    <div class="container">
        <div class="row">
            <h4 class="main-title">Agenda
                <a href="files/agenda.pdf" target="_blank"class="download-link">(<i class="fa fa-download"></i>Descargar)</a>
            </h4>

            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s3">
                        <a href="#sala1"><strong>SALA I </strong><i>(Amalia Gallardo)</i></a>
                    </li>
                    <li class="tab col s3">
                        <a href="#sala2"><strong>SALA II </strong><i>(Oscar Soria Gamarra)</i></a>
                    </li>
                    <li class="tab col s3">
                        <a href="#sala3"><strong>AULA </strong>Luis Bazoberry (Codelabs)</a>
                    </li>
                </ul>
            </div>

            <div id="sala1" class="col s12 tabs-panel-wrapper">

                {% include "../partials/sala_a.swig" %}

            </div>

            <div id="sala2" class="col s12 tabs-panel-wrapper">
                {% include "../partials/sala_b.swig" %}

            </div>
            <div id="sala3" class="col s12 tabs-panel-wrapper">
                {% include "../partials/codelabs.swig" %}
            </div>
        </div>
    </div>
</div>
</div>