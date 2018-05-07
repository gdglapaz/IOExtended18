
<div class="register-block" id="registrarse">
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">
                <form id="registerForm" class="register-card card">
                    <div class="card-content">
                        <span class="card-title">Registro</span>

                        <div class="row">
                            <div class="col l8 m12 s12" action=".">
                                <p style="font-weight:300;">Para participar en un CODELAB necesitaras traer tu laptop con <a href="https://nodejs.org/en/"><strong>NodeJS</strong></a> y <a href="http://www.sublimetext.com/"><strong>algun editor de texto</strong></a> instalados.</p>

                                <div class="row">
                                    <div class="input-field col s4">
                                        <input id="first_name" type="text" class="validate" data-validate="required" data-register="first_name">
                                        <label for="first_name">Nombres</label>
                                    </div>
                                    <div class="input-field col s5">
                                        <input id="last_name" type="text" class="validate" data-validate="required" data-register="last_name">
                                        <label for="last_name">Apellidos</label>
                                    </div>
                                    <div class="col s3">
                                        <label>Género:</label>
                                        <select class="browser-default" data-register="gender">
                                              <option value="M">Masculino</option>
                                              <option value="F">Femenino</option>
                                              <option value="S">Sin especificar</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input id="email" type="text" class="validate" data-validate="required,email" data-register="email">
                                        <label for="email">Correo electrónico</label>
                                    </div>
                                    <div class="col s6">
                                        <label>Ciudad</label>
                                        <select class="browser-default" data-register="city">
                                          <option value="LA_PAZ" selected>La Paz</option>
                                          <option value="COCHABAMBA">Cochamba</option>
                                          <option value="SANTA_CRUZ">Santa Cruz</option>
                                          <option value="POTOSI">Potosí</option>
                                          <option value="ORURO">Oruro</option>
                                          <option value="CHUQUISACA">Chuquisaca</option>
                                          <option value="TARIJA">Tarija</option>
                                          <option value="PANDO">Pando</option>
                                          <option value="BENI">Beni</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s4">
                                        <input id="university_organization" type="text" class="validate" data-validate="required" data-register="university_organization">
                                        <label for="university_organization">Universidad / Organización</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input id="phone" type="text" class="validate" data-validate="required,number" data-register="phone">
                                        <label for="phone">Telefono / Celular</label>
                                    </div>
                                    <div class="col s4">
                                        <label>Registrarse como:</label>
                                        <select class="browser-default" data-register="type">
                                          <option value="E">Estudiante</option>
                                          <option value="P">Profesional</option>
                                        </select>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="input-field col s4">
                                        <input id="depot" type="text" class="validate" data-register="depot">
                                        <label for="depot">Número de Depósito</label>
                                    </div>
                                    <div class="col s4">
                                        <label>Banco donde se hizo el depósito:</label>
                                        <select class="browser-default" data-register="bank">
                                          <option value="BISA">Banco BISA</option>
                                          <option value="BNB">Banco Nacional de Bolivia</option>
                                          <option value="BCP">Banco de Crédito</option>
                                        </select>
                                    </div>
                                    <div class="col s4">
                                        <label>¿Asistiras a un Codelab?</label>
                                        <select class="browser-default" data-register="codelab">
                                          <option value="NO_CODELAB">No, gracias</option>
                                          <option value="CODELAB_A">Codelab FIREBASE</option>
                                          <option value="CODELAB_B">Codelab ANDROID</option>
                                          <option value="CODELAB_C">Codelab SORPRESA</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="without-bottom-margin row">
                                    <div class="input-field col s12">
                                        <h6>Las cosas que me apasionan son:</h6>
                                        <div class="row without-bottom-margin">
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="val1" name="val1" data-tech="WEB"/>
                                                    <label for="val1">Desarrollo web</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type2" data-tech="MÓVIL"/>
                                                    <label for="type2">Desarrollo móvil</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type3" data-tech="DISEÑO"/>
                                                    <label for="type3">Diseño</label>
                                                </p>
                                            </div>

                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type4" data-tech="MARKETING"/>
                                                    <label for="type4">Marketing Digital</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type5" data-tech="UX"/>
                                                    <label for="type5">Diseño de experiencia de usuario (UX)</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type6" data-tech="BUSSINNES"/>
                                                    <label for="type6">Inteligencia/Analítica de negocios</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type7" data-tech="IT"/>
                                                    <label for="type7">Administración de sistemas (IT)</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type8" data-tech="QA"/>
                                                    <label for="type8">Control de calidad (QA)</label>
                                                </p>
                                            </div>
                                            <div class="col s6">
                                                <p>
                                                    <input type="checkbox" id="type9" data-tech="SEGURIDAD"/>
                                                    <label for="type9">Redes/Seguridad</label>
                                                </p>
                                            </div>

                                            <div class="input-field col s6">
                                                <input id="otherTech" type="text" class="validate" placeholder="Otro">
                                            </div>
                                        </div>
                                        <div class="without-bottom-margin row">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="register-banner col l4 m12 s12">
                                <span class="title">Adhesión</span>
                                <p>
                                    La adhesión cubre:
                                    <ul class="list">
                                        <li>El Pase al evento.</li>
                                        <li>Refrigerio y Almuerzo.</li>
                                        <li>Credencial del Evento.</li>
                                        <li>Posibilidad de registrarse a un Codelab.</li>
                                    </ul>
                                </p>
                                <hr>
                                <span class="subtitle">Estudiantes</span>
                                <div class="row">
                                    <span class="col l6">
                                        <span class="amount">30 <i class="courrency">Bs.</i></span>
                                        <span class="limit">Hasta el 30 de Octubre</span>
                                    </span>
                                    <span class="col l6">
                                        <span class="amount">45 <i class="courrency">Bs.</i></span>
                                        <span class="limit">Despues del 30 de Octubre</span>
                                    </span>
                                </div>

                                <span class="subtitle">Profesionales</span>
                                <div class="row">
                                    <span class="col l6">
                                        <span class="amount">50 <i class="courrency">Bs.</i></span>
                                        <span class="limit">Hasta el 30 de Octubre</span>
                                    </span>
                                    <span class="col l6">
                                        <span class="amount">65 <i class="courrency">Bs.</i></span>
                                        <span class="limit">Despues del 30 de Octubre</span>
                                    </span>
                                </div>
                                <hr><br>

                                <p>Podrá efectivizar su adhesión en las siguientes</p>
                                <span class="subtitle">CUENTAS BANCARIAS</span>

                                <span class="bank">BISA</span class="bank">
                                <span class="account">396357-401-0</span>
                                <span class="owner">JUAN VICTOR AGUILAR CUSICANQUI </span>

                                <span class="bank">BCP</span class="bank">
                                <span class="account">201-50904164-3-28</span>
                                <span class="owner">JENNYLEE DAYAN MURILLO ZAMBRANA</span>

                                <span class="bank">BNB</span class="bank">
                                <span class="account">150-1261749</span>
                                <span class="owner">RENATO VELASQUEZ LUIS</span>

                            </div>

                        </div>
                    </div>
                    <div class="card-action">
                        <button class="btn waves-effect waves-light" id="btnRegister">
                            ENVIAR
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </form>
            </div>
            <div class="col s12 m4 l4">



            </div>
        </div>
    </div>
</div>