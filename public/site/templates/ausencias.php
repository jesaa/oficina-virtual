<?php if(!$user->isLoggedin()) $session->redirect("/iniciar-sesion");
    
        if($user->firstL == 0) $session->redirect("/cambiar-contrasena"); 
        
$u=$users->get("id_per=$input->urlSegment(1)");

 
 $horaG="09:30:00";
 
 $horaS="17:00:00";

 function parteHora($hora){    
		$horaSplit = explode(":", $hora);

		if( count($horaSplit) < 3 )
		{
			$horaSplit[2] = 0;
		}

		return $horaSplit;
	}
	
 function sumarHoras($time1,$time2){
            list($hour1, $min1) = parteHora($time1);
            list($hour2, $min2) = parteHora($time2);
            
            $hour=$hour1+$hour2;
            $min=$min1+$min2;
            if($min>60){
                $res=floor($min/60);
                $min=$min%60;
            }else 
                $res=0;
            $hour+=$res;
            return $hour.':'.$min;
  }  
//Leer registros
$pag=$pages->get(1053);
$filename = $pag->dataUser->last()->filename;
//$filename = "../assets/files/1053/datosasis-1.dat";
$handle = fopen($filename, "r");
$contents = fread($handle, filesize($filename));
fclose($handle);


$registros=explode("\r\n", $contents);


$array['registros'] = array();


foreach($registros as $registro){
    $ent = preg_split("/[\s,]+/", trim($registro));
    $array2['usuarios'][$ent[0]]['registro'][$ent[1]][]=array('id' => $ent[0], 'fecha' => $ent[1], 'hora' => $ent[2]);

}

$resultado = 0;
$arreglo = 0;
$arregloF = 0;
$resultadoT= '00:00:00';
$faltas = 0;
$totalF=0;

if($page->urlSegment){
     $separarF=explode('-', $page->urlSegment);
     if($separarF>1){
         $mesA=date($separarF[0]);
         $anioA=date($separarF[1]);
     }else{
         $mesA=date('m');
    $anioA=date('Y');
     }
}else{
    $mesA=date('m');
    $anioA=date('Y'); 
}


foreach($array2['usuarios'][$u->id_per]['registro'] as $usuFe){
     $sepFecha=explode('-', $usuFe[0]['fecha']);
        if($sepFecha[0]==$anioA && $sepFecha[1]==$mesA && count($usuFe)>=1){
            $resultado += strtotime($usuFe[0]['hora']);
            
            if($usuFe[0]['hora']!=end($usuFe)['hora']){
                $resultadoF += strtotime(end($usuFe)['hora']);
                $arregloF++;
            }   
            
            $diferencia = strtotime(end($usuFe)['hora']) - strtotime($usuFe[0]['hora']);
            $resultadoT = sumarHoras($resultadoT, gmdate("H:i:s", $diferencia));
            $arreglo++;
        }
}


$resultadoF = $resultadoF / $arregloF;
$resultado = $resultado / $arreglo; 
$resultadoHT=explode(':', $resultadoT);



$numero = cal_days_in_month(CAL_GREGORIAN, intval($mesA), intval($anioA));
                        for($x=1;$x<=$numero;$x++){ 
                        if($mesA>intval(date('m'))) break;
                            if($x<10)
                                $x='0'.$x;
                            $fech=date($anioA.'-'.$mesA.'-'.$x);
                            $fechA=date($x.'/'.$mesA.'/'.$anioA);
                            $diSema=date('w', strtotime($fech));
                            if($diSema>0 && $diSema<6){
                                $arrayDa[]=$fech;
                                $arrayAus[]=$fechA;
                            }
                                
                            if($page->urlSegment && $mesA==intval(date('m')) && $x==intval(date('d'))) break;
                            if($mesA==date('m') && $x==intval(date('d'))) break;
                            
                        } 
                        setlocale(LC_TIME, 'es_MX.UTF-8');
                        
                        $faltas=count($arrayDa)-$arreglo;
    
    foreach($u->children as $userTime){
        if($userTime->fechaIn && $userTime->fechaFi){
            $horaF=(strtotime($userTime->fechaFi)-strtotime($userTime->fechaIn))/3600;
            $totalF+=$horaF;
        }
        
    }
       
       
 include('./_head.php'); ?>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include('./_nav.php'); ?>

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
        
         
          <!-- /top tiles -->
        
        <!--  Comienzo de la tabla de horas laboradas por el trabajador -->
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2><?= ucwords(mb_strtolower($u->nombre)) ?><small></small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <p class="text-muted font-13 m-b-30"></p>
                  <table id="datatable-buttons1" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Evento</th>
                        <th>Fecha y Hora</th>
                        <th>Lugar y Dirección</th>
                        <th>Autoridad que asigno</th>
                        <th>Más información</th>
                      </tr>
                    </thead>


                    <tbody>
                    <?php 
                    foreach($u->children("sort=-fechaIn") as $eventoUsuario){ ?> 
                      <tr id="tr-<?=$eventoUsuario->id;?>">
                        <td><?= $eventoUsuario->nameEvento ?></td>
                        <?php 
                            if($eventoUsuario->fechaIn)
                                $horaI=explode(" ", trim($eventoUsuario->horaI));
                            if($eventoUsuario->fechaFi)
                                $horaF=explode(" ", trim($eventoUsuario->horaF));
                                
            
                            if($eventoUsuario->fechaIn==$eventoUsuario->fechaFi)
                                $fecha=strftime("%d de %B, %Y", $eventoUsuario->getUnformatted("fechaIn")).' '.$horaI[0].' '.$horaI[1].' a  '.$horaF[0].' '.$horaF[1];
                            else
                                $fecha=strftime("%d de %B -", $eventoUsuario->getUnformatted("fechaIn")).' '.strftime("%d de %B, %Y",  $eventoUsuario->getUnformatted("fechaFi")).' '.$horaI[0].' '.$horaI[1].' a  '.$horaF[0].' '.$horaF[1]; ?>
                                
                        <td><?= $fecha ?></td>
                        <td><?= $eventoUsuario->lugar ?></td>
                        <td><?= $eventoUsuario->autoridad ?> </td>
                        <td>
                          <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target=".evento-<?= $eventoUsuario->id ?>">Mas Información</button>
                        <form id="frmEv-<?= $eventoUsuario->id ?>">
                          <div class="modal fade bs-example-modal-lg evento-<?= $eventoUsuario->id ?>" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                              <div class="modal-content">
                                <?php 
                                        if($eventoUsuario->fechaIn==$eventoUsuario->fechaFi)
                                            $fecha=strftime("%d %B %Y", $eventoUsuario->getUnformatted("fechaIn"));
                                        else
                                            $fecha=strftime("%d %B -", $eventoUsuario->getUnformatted("fechaIn")).' '.strftime("%d %B, %Y", $eventoUsuario->getUnformatted("fechaFi")); ?>
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                  </button>
                                  <h4 class="modal-title" id="myModalLabel">Justificante <?= $fecha ?></h4>
                                </div>
                                <div class="modal-body">
                                  <h4><?= ucwords(mb_strtolower($u->nombre)).'    '.$u->puesto ?></h4>
                                  <h4>General</h4>
                                  <h5><?= $eventoUsuario->infoGe ?></h5>
                                  <h5><?= $fecha.' '.$horaI[0].' '.$horaI[1].' a  '.$horaF[0].' '.$horaF[1]; ?></h5>
                                  <p><b>Nombre del evento: </b> <?= $eventoUsuario->nameEvento ?></p>
                                  <p><b>Lugar: </b><?= $eventoUsuario->lugar ?></p>
                                  <p><b>Asigno la asistencia o participación en el evento: </b><?= $eventoUsuario->autoridad ?></p>
                                  <p><b>Se notifico por  </b><?= $eventoUsuario->medio ?></p>
                                  <?php if($eventoUsuario->apoyo){ ?> 
                                    <p><b><?=$eventoUsuario->apoyo?></b>  de apoyo economico</p>
                                  <?php }else{ ?> 
                                    <p>No se necesitó apoyo economico</p>
                                  <?php } ?>
                                  <h5>Conclusiones</h5>
                                  <p><b>Motivo del cargo o comisión: </b> <?= $eventoUsuario->motivo ?></p>
                                  <p><b>Este evento atiende: </b> <?= $eventoUsuario->programa ?></p>
                                  <p><b>Informe breve de la comisión o encargo: </b><?= $eventoUsuario->breve ?></p>
                                  <p><b>Resultados obtenidos con su participación:</b></p>
                                  <textarea placeholder="No se cuenta con está información, escribe aquí para agregarla y se guardara automaticamente" data-id="<?= $eventoUsuario->id ?>" name="resultados" style="width: 100%;" rows="2" class="textresults"><?= $eventoUsuario->resultados ?></textarea>
                                 <?php if($eventoUsuario->observaciones){ ?> 
                                  <p><b>Observaciones: </b><?= $eventoUsuario->observaciones ?></p>
                                 <?php } ?>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-danger delete" data-id="<?= $eventoUsuario->id ?>" data-nm="<?= $eventoUsuario->title ?>" data-dismiss="modal">Eliminar</button>
                                  
                                  <button type="button" class="btn btn-success" data-dismiss="modal" style="display:none;">Guardar</button>
                                  <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                </div>
                                <?= $session->CSRF->renderInput(); ?>
                              </div>
                            </div>
                          </div>
                        </form>
                        </td>
                      </tr>
                    <?php } ?>
                    </tbody>
                  </table>
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
    <!-- NProgress -->
    <script src="<?= $config->urls->templates ?>vendors/nprogress/nprogress.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/moment/min/moment.min.js"></script>
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
    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>
    <script>
     $( ".textresults" ).focusout(function() {
        $.ajax({
            url: "/update-results",
            type: "post",
            data: {page:$(this).data('id'),txt:$(this).val()},
            dataType: "html",
        }).done(function(msg){
            console.log(msg);
        }).fail(function (jqXHR, textStatus) {
            console.log(textStatus);
        }) 
     });
     
     $( ".delete" ).focusout(function() {
         var page=$(this).data('id');
         swal({
          title: '¿Estás seguro?',
          text: "La ausencia se eliminará y no se podrá recuperar",
          type: 'question',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Borrar',
          cancelButtonText: 'Cancelar'
        }).then((result) => {
          if (result.value) {
            $.ajax({
                url: "/delete-ausencia",
                type: "post",
                data: {page:page,nm:$(this).data('nm')},
                dataType: "html",
            }).done(function(msg){
                $("#tr-"+page).hide();
                swal('Eliminado','La ausencia ha sido eliminada.','success');
            }).fail(function (jqXHR, textStatus) {
                console.log(textStatus);
            }); 
          }
        });
     });

	$(document).on('ready page:load', function () {
  var resultDurationCanvas = $("canvas#result_duration_over_time_chart");

  if (resultDurationCanvas.length != 1) {
    return
  }

  new Chart(resultDurationCanvas, {
    type: 'line',
    data: {
      labels: resultDurationCanvas.data('date'),
      datasets: [{
        label:                'Hora Llegada',
        fill:                 false,
        backgroundColor:      'rgba(31, 50, 173, 0.2)', // blue
        borderColor:          'rgba(31, 50, 173, 0.6)',
        pointBorderColor:     'rgba(31, 50, 173, 0.6)',
        pointBackgroundColor: 'rgba(31, 50, 173, 0.6)',
        data: resultDurationCanvas.data('duration')
      }, {
        label:                'Hora Salida',
        fill:                 false,
        backgroundColor:      'rgba(173, 31, 50, 0.2)',  // red
        borderColor:          'rgba(173, 31, 50, 0.6)',
        pointBorderColor:     'rgba(173, 31, 50, 0.6)',
        pointBackgroundColor: 'rgba(173, 31, 50, 0.6)',
        data: resultDurationCanvas.data('fastest-duration')
      }]
    },
    options: {
        
      responsive: true,
      maintainAspectRatio: false,
      scales: {
        yAxes: [{
          ticks: {
            userCallback: function(v) { return epoch_to_hh_mm_ss_n(v) },
            stepSize: 60 * 60
          }
        }]
      },
      tooltips: {
        callbacks: {
          label: function(tooltipItem, data) {
            return data.datasets[tooltipItem.datasetIndex].label + ': ' + epoch_to_hh_mm_ss_n(tooltipItem.yLabel)
          }
        }
      }
    }
  });

  function epoch_to_hh_mm_ss(epoch) {
    return new Date(epoch*1000).toISOString().substr(12, 7)
  }
  
 
  
    function pad(num) {
    return ("0"+num).slice(-2);
    }
    function hhmmss(secs) {
      var minutes = Math.floor(secs / 60);
      secs = secs%60;
      var hours = Math.floor(minutes/60)
      minutes = minutes%60;
      return pad(hours)+":"+pad(minutes)+":"+pad(secs);
    }
  
  function epoch_to_hh_mm_ss_n(epoch) {
    return moment(hhmmss(epoch), "hh:mm:ss").format("h:mm A");
  }
});

					$("#datatable-buttons1").DataTable({
					  dom: "Blfrtip",
					  pageLength: 50,
					  order: false,
					  language: { url: "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json" },
					  buttons: [
						{
						  extend: "copy",
						  className: "btn-sm",
              text: "Copiar"
						},
						{
						  extend: "csv",
						  className: "btn-sm"
						},
						{
						  extend: "excel",
						  className: "btn-sm"
						},
						{
						  extend: "pdfHtml5",
						  className: "btn-sm"
						},
						{
						  extend: "print",
              text: "Imprimir",
						  className: "btn-sm"
						},
					  ],
					  responsive: true
					});

    </script>
  </body>
</html>