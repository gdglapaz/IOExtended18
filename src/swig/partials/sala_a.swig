
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
        speaker: 'Victor Aguilar',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/avatar.jpg',
        type: 'SPEECH'
    },
    {
        time: '09:15 - 09:50',
        title: 'Monetizando con Apps - InApp Billing',
        speaker: 'Sergio Mejia',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/09/sergio.png',
        type: 'SPEECH'
    },
    {
        time: '09:50 - 10:25',
        title: 'La infraestructura para IOT',
        speaker: 'Miguel Callejas',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/16/miguel.png',
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
        title: 'Kotlin: El despertar de la fuerza!',
        speaker: 'Marco Avendaño',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/09/marco_orS5Hef.png',
        type: 'SPEECH'
    },
    {
        time: '11:20 - 11:55',
        title: 'Design Thinking - Aprendamos a diseñar!',
        speaker: 'Rosa María Orellana',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/29/anamaria_8nB5Fiz.png',
        type: 'SPEECH'
    },
    {
        time: '11:55 - 12:35',
        title: 'Como y porque ser Google Developer Expert',
        speaker: 'GDE Enrique Diaz',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/enrique.png',
        type: 'SPEECH'
    },
    {
        time: '12:35 - 12:45',
        title: 'IGNITE: Red Nueva Empresa',
        speaker: 'Andres Vasquez',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/andres.jpg',
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
        title: 'Los GDGs como semillero de proyectos',
        speaker: 'Antonio Guzman',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/antonio.png',
        type: 'SPEECH'
    },
    {
        time: '13:55 - 14:30',
        title: 'Charla IOT',
        speaker: 'Mojix - Coderoad',
        photo: '/img/avatar_default.png',
        type: 'SPEECH'
    },
    {
        time: '14:30 - 15:05',
        title: 'Apps que se vean y se sientan bien',
        speaker: 'Daniel Alvarez',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/daniel.jpg',
        type: 'SPEECH'
    },
    {
        time: '15:05 - 15:40',
        title: 'Como hacer Networking',
        speaker: 'Rene Michel',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/18/rene.jpg',
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

