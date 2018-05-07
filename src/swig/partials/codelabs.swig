
{% set SPEECHES = [
    {
        time: '08:30 - 09:00',
        title: 'REGISTRO DE PARTICIPANTES',
        speaker: '',
        photo: '',
        type: 'ACTIVITY'
    },
    {
        time: '09:15 - 10:25',
        title: 'CODELAB: Build VR with Google CardBoard',
        speaker: 'Gustavo Lizarraga',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/15/gustavo.jpg',
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
        time: '10:45 - 11:55',
        title: 'CODELAB: Firebase y Android.',
        speaker: 'GDE Antonio Guzman',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/antonio.png',
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
        time: '13:15 - 14:30',
        title: 'CODELAB: Material Design en Android SDK',
        speaker: 'GDE Enrique Díaz',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/14/enrique.png',
        type: 'SPEECH'
    },
    {
        time: '15:05 - 15:40',
        title: 'Sesión de Preguntas Técnicas a los Experts.',
        speaker: 'Antonio Guzman y Enrique Díaz',
        photo: '/img/avatar_default.png',
        type: 'SPEECH'
    },
    {
        time: '15:40 - 16:00',
        title: 'Presentación Women Tech Makers',
        speaker: 'Jennylee Murillo',
        photo: 'http://api.devfest.xyz/media/photos/2015/10/09/jen.png',
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

