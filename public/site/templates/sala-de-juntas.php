<?php if(!$user->isLoggedin()) $session->redirect("/iniciar-sesion");
    
      if($user->firstL == 0) $session->redirect("/cambiar-contrasena"); 
       
 include('./_head.php'); ?>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include('./_nav.php'); ?>

        <!-- page content -->
        <div class="right_col" role="main">
    
            <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Calendario <small>Haga click en el cuadro del día para agendar.</small></h3>
              </div>

             
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Sala de juntas <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <div id='calendar1'></div>

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

     <div id="CalenderModalNew" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">Nuevo evento</h4>
          </div>
          <div class="modal-body">
            <div id="testmodal" style="padding: 5px 20px;">
              <form id="antoform" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Motivo</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="motivo" name="motivo">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Descripción</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="desc" name="desc"></textarea>
                  </div>
                </div>
			     	<div class="form-group" style="padding-right: 10px;padding-left: 16px;">
			     		<label class="col-sm-3 control-label">Hora de inicio</label>
			         	<div class='input-group date col-sm-9' id='datetimepicker6'>
			                <input type='text' class="form-control datetimepicker6" name="horaIni" id="horaIni" />
			                <span class="input-group-addon">
			                    <span class="glyphicon glyphicon-calendar"></span>
			                </span>
			        	</div>
			     	</div>
			        <div class="form-group" style="padding-right: 10px;padding-left: 16px;">
			        	<label class="col-sm-3 control-label">Hora de finalización</label>
			            <div class='input-group date col-sm-9' id='datetimepicker7'>
			                <input type='text' class="form-control datetimepicker7"  name="horaFin" id="horaFin" />
			                <span class="input-group-addon">
			                    <span class="glyphicon glyphicon-calendar"></span>
			                </span>
			            </div>
			        </div>
              
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose" data-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary antosubmit">Guardar cambios</button>
          </div>
         </form>
        </div>
      </div>
    </div>


<?php foreach ($page->children() as $key => $event) { ?>
      <div id="CalenderModalEdit<?=$event->id?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel2"><?= ($event->createdUser == $user->id) ? 'Editar':'Información'; ?></h4>
          </div>
          <div class="modal-body">

            <div id="testmodal2" style="padding: 5px 20px;">
              <form id="antoform-<?=$event->id?>" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Motivo</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="motivo2-<?=$event->id?>" name="motivo2" <?= ($event->createdUser->id == $user->id) ? '':'readonly'; ?>>
                  </div> 
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Descripción</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="desc2-<?=$event->id?>" name="desc2" <?= ($event->createdUser->id == $user->id) ? '':'readonly'; ?>></textarea>
                  </div>
                </div>
            <div class="form-group" style="padding-right: 10px;padding-left: 16px;">
              <label class="col-sm-3 control-label">Hora de inicio</label>
                <div class='input-group date col-sm-9' id='datetimepicker9-<?=$event->id?>'>
                      <input type='text' class="form-control datetimepicker9" name="horaIni2" id="horaIni2-<?=$event->id?>" <?= ($event->createdUser->id == $user->id) ? '':'readonly'; ?>/>
                      <span class="input-group-addon">
                          <span class="glyphicon glyphicon-calendar"></span>
                      </span>
                </div>
            </div>
              <div class="form-group" style="padding-right: 10px;padding-left: 16px;">
                <label class="col-sm-3 control-label">Hora de finalización</label>
                  <div class='input-group date col-sm-9' id='datetimepicker10-<?=$event->id?>'>
                      <input type='text' class="form-control datetimepicker10"  name="horaFin2" id="horaFin2-<?=$event->id?>" <?= ($event->createdUser->id == $user->id) ? '':'readonly'; ?>/>
                      <span class="input-group-addon">
                          <span class="glyphicon glyphicon-calendar"></span>
                      </span>
                  </div>
              </div>
              <div class="form-group">
                  <label class="col-sm-3 control-label">Organiza:</label>
                    <div class="col-sm-9">
                    <input type="text" class="form-control" id="organiza2-<?=$event->id?>" name="organiza2" readonly>
                  </div> 
               </div>
              
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose2-<?=$event->id?>" data-dismiss="modal">Cerrar</button>
            <?php
             if($event->createdUser->id === $user->id){ ?> 
            <button type="button" class="btn btn-danger deleted" data-id="<?=$event->id?>">Eliminar</button>
            <button type="submit" class="btn btn-primary antosubmit2">Guardar cambios</button>
            <?php } ?>
          </div>
          </form>
        </div>
      </div>
    </div>
    
<?php } ?>
    	

    <div id="fc_create" data-toggle="modal" data-target="#CalenderModalNew"></div>
<?php foreach ($page->children() as $key => $event) { ?> 
    <div id="fc_edit<?=$event->id?>" data-toggle="modal" data-target="#CalenderModalEdit<?=$event->id?>"></div>
<?php } ?>
    <!-- jQuery -->
    <script src="<?= $config->urls->templates ?>vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?= $config->urls->templates ?>vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<?= $config->urls->templates ?>vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<?= $config->urls->templates ?>vendors/nprogress/nprogress.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/moment/min/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/locale/es.js"></script>
    <!-- Chart.js -->
    <script src="<?= $config->urls->templates ?>vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="<?= $config->urls->templates ?>vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<?= $config->urls->templates ?>vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<?= $config->urls->templates ?>vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="<?= $config->urls->templates ?>vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="<?= $config->urls->templates ?>vendors/Flot/jquery.flot.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/Flot/jquery.flot.pie.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/Flot/jquery.flot.time.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/Flot/jquery.flot.stack.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="<?= $config->urls->templates ?>/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="<?= $config->urls->templates ?>vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="<?= $config->urls->templates ?>vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<?= $config->urls->templates ?>vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/eonasdan-bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <!-- Datatables -->
    <script src="<?= $config->urls->templates ?>vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/jszip/dist/jszip.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pnotify/dist/pnotify.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>
    <script>

    	
				        
       $(function () {
	        $('#horaIni').datetimepicker({
	        	format: 'LT'
	        });
	        
          $('#horaFin').datetimepicker({
              format: 'LT',
              //useCurrent: false //Important! See issue #1075
          });

          <?php foreach ($page->children() as $key => $event) { ?> 
              $('#horaIni2-'+<?=$event->id?>).datetimepicker({
                format: 'LT'
              });

              $('#horaFin2-'+<?=$event->id?>).datetimepicker({
                  format: 'LT',
                  //useCurrent: false //Important! See issue #1075
              });
          <?php } ?>
          

	    });


       $( ".deleted" ).click(function() {
         var pageId=$(this).data('id');
            swal({
            title: '¿Estás seguro?',
            text: "El evento será eliminado",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, eliminar',
            cancelButtonText: 'Cancelar'
          }).then((result) => {
            if (result.value) {
                $.ajax({
                url: "/del-event",
                type: "post",
                data: {pageId:pageId},
                dataType: "html",
                }).done(function(msg){
                  new PNotify({
                      title: 'Eliminado',
                      text: 'El evento se ha eliminado de la agenda',
                      type: 'danger',
                      styling: 'bootstrap3'
                  });
                         
                  $('#calendar1').fullCalendar('removeEvents', pageId);
                  $('.antoclose2-'+pageId).click();   
                  
                }).fail(function (jqXHR, textStatus) {
                    
                });
             }
          })
       });
				       
      function  init_calendar() {
          var type;
        <?php if($page->urlSegment=='semanal'){ ?>
          type='listWeek';
        <?php }else if($page->urlSegment=='actual'){ ?>
          type='agendaDay';
        <?php }else{ ?>
          type='month';
        <?php } ?>
          
        if( typeof ($.fn.fullCalendar) === 'undefined'){ return; }
        console.log('init_calendar');
        var scrollTime = moment().format("HH:mm:ss");
        var date = new Date(),
          d = date.getDate(),
          m = date.getMonth(),
          y = date.getFullYear(),
          started,
          categoryClass;

        var calendar = $('#calendar1').fullCalendar({
          locale: 'es',
          weekends: false,
          header: {
          left: 'prev,next today',
          center: 'title',
          right: 'month,agendaWeek,agendaDay,listWeek'
          },
          minTime: '08:00',
          maxTime:  '22:00',
          allDaySlot: false,
          eventLimit: 4,
          scrollTime: scrollTime,
          slotDuration: '00:20',
          selectable: true,
          selectHelper: true,
          defaultView: type,
          nowIndicator: true,
          slotEventOverlap: false,
          select: function(start, end, allDay) {
          $('#fc_create').click();


          $( "#antoform" ).submit(function( event ) {

             horIni=start.format("MM/DD/YYYY");
             horFin=start.format("MM/DD/YYYY");
            
            started = horIni+" "+$("#horaIni").val();
            ended = horFin+" "+$("#horaFin").val();


            if(moment(started).valueOf()>moment(ended).valueOf()){
            	swal('Error','La hora de inicio es mayor a la hora finalización','info');
            	return false;
            }

		   $.ajax({
              url: "/add-new-event",
              type: "post",
              data: $(this).serialize()+"&date="+start.format('MM/DD/YYYY'),
              dataType: "html",
              }).done(function(msg){
                if(msg){
                   new PNotify({
                      title: 'Correcto',
                      text: 'Se ha agendado un nuevo evento en la Sala de juntas',
                      type: 'success',
                      styling: 'bootstrap3'
                  });
                
                }
	            }).fail(function (jqXHR, textStatus) {
	                      
	            });
			     event.preventDefault();

			       var title = $("#motivo").val();
	           

	            categoryClass = $("#event_type").val();

	            if (title) {
	            calendar.fullCalendar('renderEvent', {
	              	title: title,
                	motivo: title,
                	desc: $("#desc").val(),
	              	start: started,
                	end: ended
	              },
	              true // make the event "stick"
	            );
	            }

	            $('#motivo').val('');
              	$('#desc').val('');
              	$('#horaIni').val('');
              	$('#horaFin').val('');

	            calendar.fullCalendar('unselect');

	            $('.antoclose').click();

	            return false;
			});
          
          },
        eventClick: function(calEvent, jsEvent, view) {

          $('#fc_edit'+calEvent.id).click();
          $('#motivo2-'+calEvent.id).val(calEvent.title);
          $('#desc2-'+calEvent.id).val(calEvent.desc);
          $('#horaIni2-'+calEvent.id).val(calEvent.start.format('HH:mm'));
          $('#horaFin2-'+calEvent.id).val(calEvent.end.format('HH:mm'));
          $('#organiza2-'+calEvent.id).val(calEvent.organiza);


          //$( "#horaIni2" ).datepicker({ defaultDate: new Date() });

          categoryClass = $("#event_type").val();


    	$( "#antoform-"+calEvent.id ).submit(function( event ) {


    		 if(moment(calEvent.fecha+' '+$('#horaIni2-'+calEvent.id).val()).valueOf()>moment(calEvent.fecha+' '+$('#horaFin2-'+calEvent.id).val()).valueOf()){
            	swal('Error','La hora de inicio es mayor a la hora finalización','info');
            	return false;
            }
            
		    $.ajax({
              url: "/update-event",
              type: "post",
              data: $(this).serialize()+"&idPage="+calEvent.id,
              dataType: "html",
              }).done(function(msg){
                if(msg){
                   new PNotify({
                      title: 'Correcto',
                      text: 'Se ha actualizado el evento.',
                      type: 'success',
                      styling: 'bootstrap3'
                  });
                
                }
	            }).fail(function (jqXHR, textStatus) {
	                      
	            });
			     event.preventDefault();


    			    calEvent.title = $("#motivo2-"+calEvent.id).val();
    			    calEvent.desc = $("#desc2-"+calEvent.id).val();
    			    calEvent.motivo = $("#motivo2-"+calEvent.id).val();
    			    calEvent.start = calEvent.fecha+' '+$('#horaIni2-'+calEvent.id).val();
    			    calEvent.end = calEvent.fecha+' '+$('#horaFin2-'+calEvent.id).val();

           	calendar.fullCalendar('updateEvent', calEvent);
 

	            $('.antoclose2-'+calEvent.id).click();

	            return false;
			});

          calendar.fullCalendar('unselect');
          },
          editable: false,
          events: [
            <?php foreach ($page->children() as $key => $event) { ?>
              {
                title: '<?= $event->title ?>',
                desc: '<?= $event->desc ?>',
                fecha: '<?= $event->date ?>',
                start: '<?= $event->date.' '.$event->horaIni ?>',
                end: '<?= $event->date.' '.$event->horaFin ?>',
                id: '<?= $event->id ?>',
                organiza: '<?= $event->idUser->first()->nombre ?>'
              },
            <?php  }  ?>
          ]
        });
        
      };
</script>
  </body>
</html>