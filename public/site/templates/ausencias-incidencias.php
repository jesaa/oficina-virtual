<?php setlocale(LC_TIME, 'es_MX.UTF-8');
include('./_head.php'); ?>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
          
        <?php include('./_nav.php'); ?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Formulario de Ausencias</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  
                </div>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Registra tus eventos fuera de IMEPLAN <small>Fecha: <?= ucwords(strftime("%d %B de %G", strtotime(date('d-m-Y')))); ?></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <!-- Smart Wizard -->
                    <p>Registra aquí todos los eventos fuera de IMEPLAN para ajustarlo a tu lista de asistencias.</p>
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              Paso 1<br />
                                              <small>Datos Generales</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Paso 2<br />
                                              <small>Acerca del Evento</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              Paso 3<br />
                                              <small>Apoyo economico</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                              Paso 4<br />
                                              <small>Resultados</small>
                                          </span>
                          </a>
                        </li>
                      </ul>
                      <div id="step-1">
                        <form class="form-horizontal form-label-left" id="sendAuse">
                          <!-- Nombre del miembro del equipo -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre:<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <h4><?= $user->nombre ?></h4>
                            </div>
                          </div>
                          <!-- Adscripción -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Adscripción <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <h4><?= $user->pertenece ?></h4>
                            </div>
                          </div>
                          <!-- Información general del evento -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Información general <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <textarea type="text" id="infoGe" required="required" class="form-control col-md-7 col-xs-12" name="infoGe"></textarea>
                            </div>
                          </div>
                          <!-- Fecha y hora de ausencia  -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Fecha y hora de ausencia <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div class="input-prepend input-group">
                                <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                <input type="text"  id="reservation-time1" class="form-control" value="01/01/2016 - 01/25/2016" name="fechas">
                              </div>
                            </div>
                          </div>
                          <hr>
                          <!--  Input con los nombres del equipo divididos por adscripciones -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">RUTA 2042: Seleccione personas que lo acompañan.</label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                              <select class="select2_group form-control" id="asistentes">
                                  <option value="Seleccionar">Seleccionar</option>
                                <optgroup label="Dirección General">
                                  <option value="Galvan Rodriguez Omar Alonzo">Galvan Rodriguez Omar Alonzo</option>
                                </optgroup>
                                <optgroup label="Coordinación de Comunicación y Vinculación Metropolitana	">
                                  <option value="Zarate Khalili Anis Badi">Zarate Khalili Anis Badi</option>
                                  <option value="AGUILA GONZALEZ JOSE GERMAN">AGUILA GONZALEZ JOSE GERMAN</option>
                                  <option value="PALACIOS ÁLVAREZ DANIA">PALACIOS ÁLVAREZ DANIA</option>
                                </optgroup>
                                <optgroup label="CONTRALORÍA">
                                  <option value="LOPEZ MALDONADO JOSE LUIS ">LOPEZ MALDONADO JOSE LUIS </option>
                                </optgroup>
                                <optgroup label="SECRETARIA TECNICA DEL CCM	">
                                  <option value="ARAMBULA QUIRARTE ROBERTO ">ARAMBULA QUIRARTE ROBERTO </option>
                                </optgroup>
                                <optgroup label="UNIDAD ADMINISTRATIVA	">
                                  <option value="LLAMAS VILLANUEVA LILIA MYRNA">LLAMAS VILLANUEVA LILIA MYRNA</option>
                                  <option value="GRANATA ARREOLA MARINELLA">GRANATA ARREOLA MARINELLA</option>
                                  <option value="LORENZO SOTO THALIA MAIRANI">LORENZO SOTO THALIA MAIRANI</option>
                                </optgroup>
                                <optgroup label="UNIDAD JURIDICA	">
                                  <option value="HERNANDEZ SANTILLAN ALEJANDRA GPE. ">HERNANDEZ SANTILLAN ALEJANDRA GPE. </option>
                                  <option value="BELTRAN DE LA TORRE JUAN JESUS ">BELTRAN DE LA TORRE JUAN JESUS </option>
                                </optgroup>
                                <optgroup label="DIRECCION DE PLANEACION METROPOLITANA	">
                                  <option value="RODRIGUEZ URREGO MIGUEL ANGEL ">RODRIGUEZ URREGO MIGUEL ANGEL </option>
                                </optgroup>
                                <optgroup label="Gerencia Técnica de Sustentabilidad y Cambio Climático	">
                                  <option value="CERVANTES FLORES PAULINA">CERVANTES FLORES PAULINA</option>
                                  <option value="LAZCANO VELASCO MONICA LETICIA">LAZCANO VELASCO MONICA LETICIA</option>
                                  <option value="ROMERO MAGAÑA MARÍA DEL PILAR">ROMERO MAGAÑA MARÍA DEL PILAR</option>
                                </optgroup>
                                <optgroup label="Gerencia Técnica de Ordenamiento Territorial y Control de Suelo	">
                                  <option value="ZAMORA MACÍAS PERLA MARÍA ">ZAMORA MACÍAS PERLA MARÍA </option>
                                  <option value="HERNANDEZ CRUZ IVAN ALEJANDRO ">HERNANDEZ CRUZ IVAN ALEJANDRO </option>
                                  <option value="OROZCO  MURILLO FERNANDO">OROZCO  MURILLO FERNANDO</option>
                                  <option value="OROZCO SEIFERT JUAN IGNACIO">OROZCO SEIFERT JUAN IGNACIO</option>
                                  <option value="GONZALEZ PIMENTEL GASTON">GONZALEZ PIMENTEL GASTON</option>
                                  <option value="NAVARRO OROZCO DIANA ELIZABETH">NAVARRO OROZCO DIANA ELIZABETH</option>
                                </optgroup>
                                <optgroup label="Gerencia Técnica de Movilidad 	">
                                  <option value="LOAIZA CISNEROS CECILIA">LOAIZA CISNEROS CECILIA</option>
                                  <option value="CHARENTON MALOU">CHARENTON MALOU</option>
                                  <option value="ROSAS SANCHEZ JONATHAN MIZAEL ">ROSAS SANCHEZ JONATHAN MIZAEL </option>
                                </optgroup>
                                <optgroup label="Gerencia Técnica de Riesgo y Resiliencia	">
                                  <option value="PRECIADO SANTANA ALAN GERARDO ">PRECIADO SANTANA ALAN GERARDO </option>
                                  <option value="ZUÑIGA LAZARO CUAHUTEMOC AQUILES ">ZUÑIGA LAZARO CUAHUTEMOC AQUILES </option>
                                </optgroup>
                                <optgroup label="Coordinador de Gestión, Información, Evaluación y Seguimiento	">
                                  <option value="LLAMAS CASTAÑEDA LUIS MIGUEL ">LLAMAS CASTAÑEDA LUIS MIGUEL </option>
                                  <option value="SIQUEIROS QUIROZ CRISTINA">SIQUEIROS QUIROZ CRISTINA</option>
                                </optgroup>
                                <optgroup label="DIRECCION DE GESTION DEL DESARROLLO">
                                  <option value="CANALES GALLARDO CLAUDIA GABRIELA">CANALES GALLARDO CLAUDIA GABRIELA</option>
                                </optgroup>
                                <optgroup label="Gerente de Banco de Proyectos">
                                  <option value="RIZO RANGEL GERARDO ALONSO">RIZO RANGEL GERARDO ALONSO</option>
                                  <option value="REYNOSO DELGADILLO JACOB RAMIRO">REYNOSO DELGADILLO JACOB RAMIRO</option>
                                  <option value="FREGOSO CUENCA ERIKA ALEJANDRA">FREGOSO CUENCA ERIKA ALEJANDRA</option>
                                </optgroup>
                                <optgroup label="Coordinación de Tecnologías de la información">
                                  <option value="COVARRUBIAS LEOS ERICK YESAI">COVARRUBIAS LEOS ERICK YESAI</option>
                                  <option value="PEDRO JESAI NAVARRO MEDINA">PEDRO JESAI NAVARRO MEDINA</option>
                                </optgroup>
                                <optgroup label="Coordinación de Cooperación Internacional">
                                  <option value="DIEZ DE SOLLANO ENRIQUEZ CLARA">DIEZ DE SOLLANO ENRIQUEZ CLARA</option>
                                  <option value="LEDEZMA ESCALANTE MONTSERRAT">LEDEZMA ESCALANTE MONTSERRAT</option>
                                </optgroup>
                                <optgroup label="Coordinación de Marca Guadalajara Guadalajara">
                                  <option value="SANCHEZ CEBALLOS CARLOS PABLO">SANCHEZ CEBALLOS CARLOS PABLO</option>
                                  <option value="MONTAÑO GUTIERREZ JOSE CARLOS">MONTAÑO GUTIERREZ JOSE CARLOS</option>
                                  <option value="CAMACHO SALAZAR LUIS FERNANDO">CAMACHO SALAZAR LUIS FERNANDO</option>
                                </optgroup>
                                <optgroup label="PR">
                                  <option value="AK">AK</option>
                                </optgroup>
                              </select>
                            </div>
                          </div>
                          <!--  Tag input para sumar elementos del equipo-->
                          <div class="control-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                              <input id="tags_1" type="text" class="tags form-control" value="" name="tags" />
                              <div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
                            </div>
                          </div>
                         </form>
                      </div>
                      <div id="step-2">
                        <form class="form-horizontal form-label-left" id="sendAuse1">
                        <div class="form-horizontal form-label-left">
                          <!-- Nombre del evento -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre del evento <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="evento" required="required" class="form-control col-md-7 col-xs-12" name="evento">
                            </div>
                          </div>
                          <!-- Lugar del evento -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Lugar del evento y dirección <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="lugar" required="required" class="form-control col-md-7 col-xs-12" name="lugar">
                            </div>
                          </div>
                          <!-- Quien nos mando al evento-->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre de la autoridad que le asigno la asistencia o participación en el evento <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="autoridad" required="required" class="form-control col-md-7 col-xs-12" name="autoridad">
                            </div>
                          </div>
                          <!-- Medio que se notifico-->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Medio por el cual se le notifico su participación. <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="medio" required="required" class="form-control col-md-7 col-xs-12" name="medio">
                            </div>
                          </div>
                        </div>
                        </form>
                      </div>
                      <div id="step-3">
                        <form class="form-horizontal form-label-left" id="sendAuse2">
                        <div class="form-horizontal form-label-left">
                          <!-- Apoyo economico -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Se requiere apoyo economico <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <p>
                                  Si necesito: <input type="radio" class="flat" name="apoyo" id="apoyos" value="Si " checked=""/>
                                  No necesito: <input type="radio" class="flat" name="apoyo" id="apoyon" value="No"  />
                                </p>
                            </div>
                          </div>
                          <!-- Lugar del evento -->
                          <div class="form-group" style="display:block;"  id="cantiRe">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Cantidad que se require<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="cuanto" required="required" name="cuanto" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                        </div>
                        </form>
                      </div>
                      <div id="step-4">
                          <form class="form-horizontal form-label-left" id="sendAuse3">
                          <div class="form-horizontal form-label-left">
                            <!-- Motivo del cargo -->
                            <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Motivo del cargo o comisión <span class="required">*</span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <select class="select2_group form-control" name="motivo" id="motivo">
                                    <option value="Seleccionar">Seleccionar</option>
                                    <option value="Ruta2042">Ruta2042</option>
                                    <option value="Ponente">Ponente</option>
                                    <option value="Organizador">Organizador</option>
                                    <option value="Mesa de Gestión Metropolitana">Mesa de Gestión Metropolitana</option>
                                    <option value="Staff">Staff</option>
                                    <option value="Otro">Otro</option>
                                </select>
                              </div>
                            </div>
                            <div class="form-group" style="display:none;" id="otroMotivo">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Otro: <span class="required">*</span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="otroMo" required="required" class="form-control col-md-7 col-xs-12" name="otroMotivo">
                              </div>
                            </div>
                            <!-- Motivo del cargo -->
                            <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Programa o Proyecto del Plan Anual de Trabajo 2018 atiende la comisión o encargo.<span class="required">*</span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <select class="select2_group form-control" name="programa" id="programa">
                                    <option value="Seleccionar">Seleccionar</option>
                                    <option value="Sistema Integral de Desarrollo Metropolitano">Sistema Integral de Desarrollo Metropolitano</option>
                                    <option value="Planeación Metropolitana">Planeación Metropolitana</option>
                                    <option value="Gestión del Desarrollo Metropolitano">Gestión del Desarrollo Metropolitano</option>
                                    <option value="Mesa de Gestión Metropolitana">Mesa de Gestión Metropolitana</option>
                                    <option value="Desarrollo Administrativo">Desarrollo Administrativo</option>
                                    <option value="Otro">Otro</option>
                                </select>
                              </div>
                            </div>
                            <div class="form-group" style="display:none;" id="otroPrograma">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Otro: <span class="required">*</span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="otroPr" required="required" class="form-control col-md-7 col-xs-12" name="otroPrograma">
                              </div>
                            </div>
                            <!-- Informe breve de la comisión o encargo -->
                            <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Informe breve de la comisión o encargo <span class="required">*</span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea type="text" id="breve" required="required" class="form-control col-md-7 col-xs-12" name="breve"></textarea>
                              </div>
                            </div>
                            <!-- Resultados obtenidos con su participación -->
                            <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Resultados obtenidos con su participación <span class="required">*</span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea type="text" id="resultados" required="required" class="form-control col-md-7 col-xs-12" name="resultados"></textarea>
                              </div>
                            </div>
                            <!-- Observaciones -->
                            <div class="form-group">
                              <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Observaciones <span class="required"></span>
                              </label>
                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea type="text" id="observaciones" required="required" class="form-control col-md-7 col-xs-12" name="observaciones"></textarea>
                              </div>
                            </div>
                           </div>
                          </form>
                        </div>
                    </div>
                    <!-- End SmartWizard Content -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <?php include('./_foot.php'); ?>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="<?= $config->urls->templates ?>vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?= $config->urls->templates ?>vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<?= $config->urls->templates ?>vendors/fastclick/lib/fastclick.js"></script>
    <!-- jQuery Tags Input -->
    <script src="<?= $config->urls->templates ?>vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<?= $config->urls->templates ?>vendors/moment/min/moment.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->
    <script src="<?= $config->urls->templates ?>vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
    <!-- NProgress -->
    <script src="<?= $config->urls->templates ?>vendors/nprogress/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="<?= $config->urls->templates ?>vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
    <script>
    $('#myDatepicker').datetimepicker();
    
    $('#reservation-time1').daterangepicker({
			  timePicker: true,
			  timePickerIncrement: 5,
			  startDate: moment().startOf('hour').add(1, 'hour'),
              endDate: moment().startOf('hour').add(2, 'hour'),
			  locale: {
				format: 'MM/DD/YY hh:mm A',
				separator: " - ",
                applyLabel: "Elegir",
                cancelLabel: "Cancelar",
                weekLabel: "W",
                daysOfWeek: [
                        "Do",
                        "Lu",
                        "Ma",
                        "Mi",
                        "Ju",
                        "Vi",
                        "Sa"
                    ],
                monthNames: [
                        "Enero",
                        "Febrero",
                        "Marzo",
                        "Abril",
                        "Mayo",
                        "Junio",
                        "Julio",
                        "Agosto",
                        "Septiembre",
                        "Octubre",
                        "Noviembre",
                        "Diciembre"
                    ]
			  }
			});
          
    $('#myDatepicker2').datetimepicker({
          format: 'DD.MM.YYYY'
      });

    $('#myDatepicker3').datetimepicker({
          format: 'hh:mm A'
      });

    $('#myDatepicker4').datetimepicker({
          ignoreReadonly: true,
          allowInputToggle: true
      });

    $('#datetimepicker6').datetimepicker();

    $('#datetimepicker7').datetimepicker({
          useCurrent: false
      });

    $("#datetimepicker6").on("dp.change", function(e) {
          $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
      });

    $("#datetimepicker7").on("dp.change", function(e) {
          $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
      });
      
    $( "#asistentes" ).change(function() {
          if ($('#tags_1').tagExist($(this).val())) { 
              console.log('Tag repetido');
          }else{
              $('#tags_1').addTag($(this).val());
          }
          
          
      });
    $("#tags_1").tagsInput({
       'defaultText':'',
        width: 'auto'
    });

    $('#wizard').smartWizard({
              // Properties
                selected: 0,  // Selected Step, 0 = first step   
                keyNavigation: true, // Enable/Disable key navigation(left and right keys are used if enabled)
                enableAllSteps: false,  // Enable/Disable all steps on first load
                transitionEffect: 'fade', // Effect on navigation, none/fade/slide/slideleft
                contentURL:null, // specifying content url enables ajax content loading
                contentURLData:null, // override ajax query parameters
                contentCache:true, // cache step contents, if false content is fetched always from ajax url
                cycleSteps: false, // cycle step navigation
                enableFinishButton: false, // makes finish button enabled always
            	hideButtonsOnDisabled: true, // when the previous/next/finish buttons are disabled, hide them instead
                errorSteps:[],    // array of step numbers to highlighting as error steps
                labelNext:'Siguiente', // label for Next button
                labelPrevious:'Anterior', // label for Previous button
                labelFinish:'Finalizar',  // label for Finish button        
                noForwardJumping:false,
                ajaxType: 'POST',
              // Events
                onLeaveStep: leaveAStepCallback, // triggers when leaving a step
                onShowStep: null,  // triggers when showing a step
                onFinish:onFinishCallback,  // triggers when Finish button is clicked  
            });
            
    function leaveAStepCallback(obj, context){
                if(context.fromStep==1 && $("#infoGe").val().length < 3){
                    $("#infoGe").focus();
                    swal("Oops...", "Debe ingresar la información general del evento.", "error");
                }else if(context.fromStep==2 && $("#evento").val().length < 3){
                    $("#evento").focus();
                    swal("Oops...", "Debe ingresar el nombre del evento.", "error");
                }else if(context.fromStep==2 && $("#lugar").val().length < 3){
                    $("#lugar").focus();
                     swal("Oops...", "Debe ingresar el nombre del lugar del evento.", "error");
                }else if(context.fromStep==2 && $("#autoridad").val().length < 3){
                    $("#autoridad").focus();
                    swal("Oops...", "Debe ingresar la autoridad que le asigno el evento.", "error");
                }else if(context.fromStep==2 && $("#medio").val().length < 3){
                    $("#medio").focus();
                     swal("Oops...", "Debe ingresar el medio por el cual se le notificó.", "error");
                }else if(context.fromStep==3 && $("#apoyos").prop('checked') && $("#cuanto").val().length < 1){
                    $("#cuanto").focus();
                     swal("Oops...", "Debe ingresar el monto que requiere.", "error");
                }else{
                    return true;
                }
            }
    
    function onFinishCallback(objs, context){
        if(context.fromStep==4 && $("#motivo").val() == 'Seleccionar'){
                $("#motivo").focus();
                swal("Oops...", "Seleccione el motivo del cargo o comisión.", "error");
        }else if(context.fromStep==4 && $("#programa").val() == 'Seleccionar'){
                $("#programa").focus();
                swal("Oops...", "Seleccione el programa o proyecto que atiende.", "error");
        }else  if(context.fromStep==4 && $("#motivo").val() == 'Otro' && $("#otroMo").val().length < 3){
                $("#otroMo").focus();
                swal("Oops...", "Debe ingresar el otro motivo.", "error");
        }else if(context.fromStep==4 && $("#programa").val() == 'Otro' && $("#otroPr").val().length < 3){
                $("#otroPr").focus();
                swal("Oops...", "Debe ingresar el otro programa o proyecto.", "error");
        }else if(context.fromStep==4 && $("#breve").val().length < 3){
                $("#breve").focus();
                swal("Oops...", "Debe ingresar la información.", "error");
        }else{
           $.ajax({
                url: "/send-ausencia",
                type: "post",
                data: $("#sendAuse").serialize()+'&'+$("#sendAuse1").serialize()+'&'+$("#sendAuse2").serialize()+'&'+$("#sendAuse3").serialize(),
                dataType: "html",
              }).done(function(msg){
                if(msg){
                    swal({
                  title: 'Correcto',
                  text: 'El evento fue registrado correctamente',
                  type: 'success'
                  },
                  setTimeout(function(){
                    top.window.location='/perfil-ausencias';
                }, 1900)
                  );
                }else{
                  swal(':(','<?=__("Algo anda mal, vuelva a intentar.");?>','error'); 
                }
              }).fail(function (jqXHR, textStatus) {
                  console.log(textStatus);
              })         
        }
    }
    
    $('#apoyos').change(function() {
        if(this.checked) 
            $('#cantiRe').show();
        else
             $('#cantiRe').hide();
               
    });
    
    $('#apoyon').change(function() {
        if(this.checked) 
            $('#cantiRe').hide();
        else
             $('#cantiRe').show();
               
    });
    
    $( "#motivo" ).change(function() {
        console.log($("#motivo").val());
       if($("#motivo").val()=='Otro')
            $("#otroMotivo").show();
        else
            $("#otroMotivo").hide();
    });
    
    $( "#programa" ).change(function() {
       if($("#programa").val()=='Otro')
            $("#otroPrograma").show();
        else
            $("#otroPrograma").hide();
    });
    </script>
  </body>
</html>