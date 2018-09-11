<?php include('./_head.php'); ?>

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
                <h3>Formulario de permisos e incidencias</h3>
              </div>

              <div class="title_right">
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Formulario de Permisos e Incidencias <small>Formulario para permisos laborales, recuerda que el permiso final necesita ser firmado por el titular de tu área y la unidad administrativa</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br>
                    <form class="form-horizontal form-label-left"  id="sendPerm">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <h4><?= $user->nombre ?></h4>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Adscrito a: <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <h4><?= $user->pertenece ?></h4>
                            </div>
                      </div>
                      
                      <input type="hidden" name="usr" value="<?= $user->id;?>">
                      
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Tipo de incidencia laboral</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control col-md-7 col-xs-12" id="selInci" name="tipoIncidencia">
                            <option value="Entrada y salida irregulares al horario laboral con reposición de tiempo">Entrada y salida irregulares al horario laboral con reposición de tiempo</option>
                            <option value="Permiso de inasistencia con reposición de tiempo">Permiso de inasistencia con reposición de tiempo</option>
                            <option value="Permiso sin goce de sueldo">Permiso sin goce de sueldo</option>
                            <option value="Incapacidad por enfermedad o accidente (presentar justificante)">Incapacidad por enfermedad o accidente (presentar justificante)</option>
                            <option value="Vacaciones">Vacaciones</option>
                            <option value="Maternidad/ Paternidad">Maternidad/ Paternidad</option>
                            <option value="Matimonio civil">Matimonio civil</option>
                            <option value="Fallecimiento familiar">Fallecimiento familiar</option>
                            <option value="Otro">Otro</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group" style="display:none" id="inciOtro">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Otro</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="last-name" name="otroMotivo" class="form-control col-md-7 col-xs-12" placeholder="Ya que el motivo de su incidencia no está en la lista, escriba su tipo de incidencia ">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de permiso o incidencia</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="input-prepend input-group">
                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                            <input type="text" name="fechaRepo" id="reservation-time1" class="form-control" value="01/01/2016 - 01/25/2016">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Reposición de horarios</label>
                        <div class="col-md-6 col-sm-6 col-xs-12" >
                          <div id="gender" class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="resp" value="Si" id="respSi"> &nbsp; Si &nbsp;
                            </label>
                            <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="resp" value="No" id="respNo"> No
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group" id="reponer" style="display:none;">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Necesitas reponer <span class="red" id="quedanHoras">[X]</span> horas, te quedan <span class="red" id="restanHoras">[X]</span> por reponer.   </label>
                      </div>
                      <div class="form-group" id="permisos" style="display:none;">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de reposición</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="input-prepend input-group">
                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                            <input type="text" name="reservation-time" id="reservation-time-2" class="form-control" value="01/01/2016 - 01/25/2016">
                          </div>
                        </div>
                      </div>
                      <div class="control-group" id="tags" style="display:none;">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input name="fechasRepo" id="tags_1" type="text" class="tags form-control" value="" />
                          <div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Observaciones <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea name="observaciones" class="form-control" rows="3" placeholder="Escribe aquí tus observaciones"></textarea>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary" type="button">Cancelar</button>
                          <button type="submit" class="btn btn-success">Enviar</button>
                        </div>
                      </div>

                    </form>
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
    
          $('#reservation-time1').daterangepicker({
			  timePicker: true,
			  timePickerIncrement: 5,
			  startDate: moment().startOf('hour').add(1, 'hour'),
              endDate: moment().startOf('hour').add(2, 'hour'),
			  locale: {
				format: 'MM/DD/YYYY hh:mm A',
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
			
			$('#reservation-time-2').daterangepicker({
			  timePicker: true,
			  timePickerIncrement: 5,
			  startDate: moment().startOf('hour').add(1, 'hour'),
              endDate: moment().startOf('hour').add(2, 'hour'),
			  locale: {
				format: 'MM/DD/YYYY hh:mm A',
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
                    top.window.location='/';
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
    
    $("#selInci").change(function() {
       if($("#selInci").val()=='Otro')
            $("#inciOtro").show();
        else
            $("#inciOtro").hide();
    });
    
    $("#respSi").change(function() {
        if($("#respSi").val()=='Si'){
            $("#reponer").show();
            $("#permisos").show();
            $("#tags").show();
        }else{
            $("#reponer").hide();
            $("#permisos").hide();
            $("#tags").hide();
        }
    });
    
    $("#respNo").change(function() {
        if($("#respNo").val()=='No'){
            $("#reponer").hide();
            $("#permisos").hide();
            $("#tags").hide();
        }else{
            $("#reponer").show();
            $("#permisos").show();
            $("#tags").show();
        }
    });
    
    $("#reservation-time1").change(function(){
        AllTags=$('#tags_1').val().split(",");
        var sumHours=0;
        var newFe1="", HourIn=0, HourFi=0, totalHours1=0;
        
           AllTags.forEach(function(element) {
               if(element.length == 0) return;
            newFe1=element.split("-");
            HourIn=(new Date(newFe1[0])).valueOf();
            HourFi=(new Date(newFe1[1])).valueOf();
            totalHours1=(parseInt(HourFi)-parseInt(HourIn))/1000/60/60;
            sumHours+=parseInt(totalHours1);
            }); 
        
        var newFe=$("#reservation-time1").val().split("-");
        var HourI=(new Date(newFe[0])).valueOf();
        var HourF=(new Date(newFe[1])).valueOf();
        var totalHours=(HourF-HourI)/1000/60/60;
       
            var dIni=moment(HourI).format('MM/DD/YYYY');
            var dFin=moment(HourF).format('MM/DD/YYYY');
            var limit=new Date(dIni+' 05:00 PM').valueOf();
            var limitF=new Date(dFin+' 09:00 AM').valueOf();
            var nTotalHours=((limit-HourI)/1000/60/60);

              dIni=moment(HourI);
            while(dIni.format('MM/DD/YYYY')!=dFin){
              dIni=moment(HourI).add(1,'day');
                HourI=dIni.valueOf();
                var dow = dIni.day();
                if(dow!=0 && dow!=6)
                  nTotalHours+=8;
            }

            nTotalHours+=((HourF-limitF)/1000/60/60);

            $("#quedanHoras").text(nTotalHours-8);
            $("#restanHoras").text(parseInt(nTotalHours-8)-parseInt(sumHours));

        
    });
    
    $( "#reservation-time-2" ).change(function() {
          if ($('#tags_1').tagExist($(this).val())) { 
              console.log('Tag repetido');
          }else{
              $('#tags_1').addTag($(this).val());
              var newFe=$(this).val().split("-");
              var HourI=(new Date(newFe[0])).valueOf();
              var HourF=(new Date(newFe[1])).valueOf();
              
              var totalHours=(HourF-HourI)/1000/60/60;
              var res=$("#restanHoras").text();
              var total=parseInt(res)-parseInt(totalHours);
              if(total<0)
                total=0;
              $("#restanHoras").text(total);
          }
          
          
      });
      $("#tags_1").tagsInput({
       'defaultText':'',
        width: 'auto'
    });
    
    
    $( "#sendPerm" ).submit(function( event ) {
            $.ajax({
                url: "/send-permiso",
                type: "post",
                data: $("#sendPerm").serialize(),
                dataType: "html",
            }).done(function(msg){
                console.log(msg);
                if(msg){
                    swal({
                  title: 'Correcto',
                  text: 'El permiso se ha registrado, ahora lo puedes imprimir',
                  type: 'success'
                  },
                  setTimeout(function(){
                    top.window.location=msg;
                }, 1900)
                  );
                }else{
                  swal(':(','<?=__("Algo anda mal, vuelva a intentar.");?>','error'); 
                }
            }).fail(function (jqXHR, textStatus) {
                  console.log(textStatus);
            }) 
        event.preventDefault();
    });
    
    </script>
  </body>
</html>
