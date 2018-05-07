
{% set SPEECHES = [
    {
        time: '08:30 - 09:00',
        title: 'REGISTRO DE PARTICIPANTES',
        speaker: '',
        photo: '',
        type: 'ACTIVITY'
    },
    {
        time: '09:00 - 09:15',
        title: 'INTRODUCCION Y BIENVENIDA',
        speaker: 'Marco Avendaño',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/09/marco_orS5Hef.png',
        type: 'SPEECH'
    },
    {
        time: '09:15 - 09:50',
        title: 'Docker para principiantes',
        speaker: 'Yamil Urbina',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/16/yamil.jpg',
        type: 'SPEECH'
    },
    {
        time: '09:50 - 10:25',
        title: 'Hacer que los números cuenten: Google Analytics',
        speaker: 'Ruth Chirinos',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/Ruth.png',
        type: 'SPEECH'
    },

    {
        time: '10:25 - 10:45',
        title: 'REFRIGERIO',
        speaker: '',
        photo: '',
        type: 'REST'
    },
    {
        time: '10:45 - 11:20',
        title: 'Android Libs',
        speaker: 'Andres Vasquez',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/andres.jpg',
        type: 'SPEECH'
    },
    {
        time: '11:20 - 11:55',
        title: 'Desarrollo de videojuegos para llaneros solitarios',
        speaker: 'Ruth Garcia',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/16/angry-miner.png',
        type: 'SPEECH'
    },
    {
        time: '11:55 - 12:35',
        title: 'BPMN aplicado a Google Apps Scripts',
        speaker: 'Maria Morales',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/maria.jpg',
        type: 'SPEECH'
    },
    {
        time: '12:35 - 12:45',
        title: 'IGNITE: Bolivia Tech Hub origins',
        speaker: 'Willmar Pimentel',
        photo: 'http://api.devfest.xyz/media/photos/2015/11/03/willmar.png',
        type: 'SPEECH'
    },
    {
        time: '12:45 - 13:15',
        title: 'ALMUERZO',
        speaker: '',
        photo: '',
        type: 'REST'
    },
    {
        time: '13:15 - 13:55',
        title: 'Android Annotations, simplifica tu código',
        speaker: 'Cristian Cornejo',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/cristian.jpg',
        type: 'SPEECH'
    },
    {
        time: '13:55 - 14:30',
        title: 'Desarrollando con Ionic',
        speaker: 'Milton Yarleque',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/22/milton.jpeg',
        type: 'SPEECH'
    },
    {
        time: '14:30 - 15:05',
        title: 'Investigación Forense Digital Android',
        speaker: 'Ibar Vasquez',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/22/Yo_2014.jpg',
        type: 'SPEECH'
    },
    {
        time: '15:05 - 15:40',
        title: 'Realizando UI Testing con Android Espresso',
        speaker: 'Armando Picon',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/29/armando.png',
        type: 'SPEECH'
    }

]; %}

{% for speech in SPEECHES %}

    {% if speech.type == 'SPEECH' %}
        <div class="schedule-item">
            <div class="schedule-item-img">
                <img class="avatar-image" src="{{speech.photo}}" alt="{{speech.speaker}}" />
            </div>
            <div class="schedule-item-info">
                <div class="item-info-inner">
                    <div class="item-info-time">
                        <i class="fa fa-clock-o"></i> <span>{{speech.time}}</span>
                        <i class="fa fa-user"></i> <span>{{speech.speaker}}</span>
                    </div>
                    <h5>{{speech.title}}</h5>
                </div>
            </div>
        </div>
    {% endif %}

    {% if speech.type == 'REST' %}
        <div class="schedule-item">
            <div class="schedule-item-img">
                <div class="schedule-break"><i class="material-icons md-36">local_cafe</i></div>
            </div>
            <div class="schedule-item-info">
                <div class="item-info-inner">
                    <div class="item-info-time">
                        <i class="fa fa-clock-o"></i> <span>{{speech.time}}</span>
                    </div>
                    <h5>{{speech.title}}</h5>
                </div>
            </div>
        </div>
    {% endif %}

    {% if speech.type == 'ACTIVITY' %}
        <div class="schedule-item">
            <div class="schedule-item-img">
                <div class="schedule-break"><i class="material-icons md-36">view_module</i></div>
            </div>
            <div class="schedule-item-info">
                <div class="item-info-inner">
                    <div class="item-info-time">
                        <i class="fa fa-clock-o"></i> <span>{{speech.time}}</span>
                    </div>
                    <h5>{{speech.title}}</h5>
                </div>
            </div>
        </div>
    {% endif %}

{% endfor %}

