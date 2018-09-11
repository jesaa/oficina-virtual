<?php namespace ProcessWire;

        if(!$user->isLoggedin()) $session->redirect("/iniciar-sesion");
    
        if($user->firstL == 0) $session->redirect("/cambiar-contrasena"); 
 
 $horaG="09:30:00";
 
 $horaS="17:00:00";

//Leer registros
$pag=$pages->get(1053);
$filename = $pag->dataUser->last()->filename;
$handle = fopen($filename, "r");
$contents = fread($handle, filesize($filename));
fclose($handle);


$registros=explode("\r\n", $contents);


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


          foreach($array2['usuarios'][$user->id_per]['registro'] as $usuFe){
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


          $arrayDa=getDaysAvailable('-',$mesA,$anioA);

          $arrayAus=getDaysAvailable('/',$mesA,$anioA);

          setlocale(LC_TIME, 'es_MX.UTF-8');
          
          $faltas=count($arrayDa)-$arreglo;
    
          $HoursOutOffice=getHoursOutOffice($user, $arrayDa);

 include('./_head.php'); ?>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include('./_nav.php'); ?>

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Horas Laboradas</span>
              <div class="count"><?= $resultadoHT[0]; ?></div>
              <!-- <span class="count_bottom"><i class="green">4% </i> Esta semana</span> -->
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i> Promedio de llegada</span>
              <div class="count"><?= gmdate("g:i A", $resultado); ?></div>
              <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> Está semana</span> -->
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Promedio de salida</span>
              <div class="count green"><?= gmdate("g:i A", $resultadoF); ?></div>
              <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> Esta semana</span> -->
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Ausencias registradas</span>
              <!-- Checar que sean del mes-->
              <div class="count"><?= $user->children()->count()+$pages->find("template=permiso, id_per=$user->id, aprobado=1")->count() ?></div>
              <!-- <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> Esta semana</span> -->
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Horas Fuera de Oficina</span>
              <div class="count"><?= $HoursOutOffice ?></div>
              <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> Esta semana</span> -->
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Faltas</span>
              <div class="count"><?= $faltas ?></div>
              <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> Esta semana</span> -->
            </div>
          </div>
         
          <!-- /top tiles -->
        <!-- Comienzo de la grafica de actividades -->
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph">

                <div class="row x_title">
                  <div class="col-md-6">
                    <h3>Grafica salida y llegada <small></small></h3>
                  </div>
                  <div class="col-md-6">
                    
                  </div>
                </div>
                
    <?php $labels=""; $iniciales=""; $finales="";$eventI="";$eventF="";
            foreach($arrayDa as $key=>$label){
                $segundos=0; $segundos1=0;
            $horaI=$array2['usuarios'][$user->id_per]['registro'][$label][0]['hora'];
            $partes = explode(':', $horaI);
            $segundos = ($partes[0] * 3600 + $partes[1] * 60 + $partes[2]);
            $horaF=($array2['usuarios'][$user->id_per]['registro'][$label][0]['hora']==end($array2['usuarios'][$user->id_per]['registro'][$label])['hora']) ? '00:00':end($array2['usuarios'][$user->id_per]['registro'][$label])['hora'];
            $partes1 = explode(':', $horaF);
            $segundos1 = ($partes1[0] * 3600 + $partes1[1] * 60 + $partes1[2]);
            if($segundos1==0) $segundos1='null';
            if($segundos==0) $segundos='null';
           
                if($key==0){
                    $labels=$labels.'"'.gmdate("d, M", strtotime($label)).'"';
                    //if($segundos>0)
                        $iniciales=$inciales.$segundos;
                    //if($segundos1>0)
                        $finales=$finales.($segundos1);
                        
                }else{
                    $labels=$labels.',"'.gmdate("d, M", strtotime($label)).'"';
                    //if($segundos>0)
                        $iniciales=$iniciales.','.$segundos;
                    //if($segundos1>0)
                        $finales=$finales.','.($segundos1);
                }
            } 

            foreach($arrayAus as $num => $val){
                $fecha=$val;
                $u=$user;
                $all=$u->children("");
                $arrayAll=array();
                    foreach($all as $key => $a){
                        if($a->fechaIn==$fecha)
                            $arrayAll[]=$a->horaI;
                    }
    
                if(count($arrayAll)>0){
                    
                    $partes1 = explode(':', $arrayAll[0]);
                    $partes2 = explode(' ', $partes1[1]);
                    if($partes2[1]=='PM')
                        $segundos = (($partes1[0]+12) * 3600 + $partes2[0] * 60);
                    else
                         $segundos = ($partes1[0] * 3600 + $partes2[0] * 60);
                         
                    if($num==0){
                        $eventI=$eventI.$segundos;
                    }else{
                        $eventI=$eventI.','.$segundos;
                    }
                    
                }else{
                    if($num==0)
                         $eventI=$eventI.'null';
                    else
                        $eventI=$eventI.', null';
                    
                }
            }
            
            foreach($arrayAus as $num => $val){
                $fecha=$val;
                $u=$user;
                $all=$u->children("");
                $arrayAll=array();
                    foreach($all as $key => $a){
                        if($a->fechaFi==$fecha)
                            $arrayAll[]=$a->horaF;
                    }
    
                if(count($arrayAll)>0){
                    
                    $partes1 = explode(':', $arrayAll[0]);
                    $partes2 = explode(' ', $partes1[1]);
                    if($partes2[1]=='PM')
                        $segundos = (($partes1[0]+12) * 3600 + $partes2[0] * 60);
                    else
                         $segundos = ($partes1[0] * 3600 + $partes2[0] * 60);
                         
                    if($num==0){
                        $eventF=$eventF.$segundos;
                    }else{
                        $eventF=$eventF.','.$segundos;
                    }
                    
                }else{
                    if($num==0)
                         $eventF=$eventF.'null';
                    else
                        $eventF=$eventF.', null';
                    
                }
            }

            $permI="";
            foreach($arrayAus as $num => $val){
                $fecha=$val;
                $u=$user;
                $all=$pages->find("template=permiso, id_per=$user->id, aprobado=1");
                $arrayAll=array();
                    foreach($all as $key => $a){
                      $fechaN=explode("-", $a->fechaPerm);
                      $fechaCom=(gmdate("d/m/Y", $fechaN[0]));
                        if($fechaCom==$fecha)
                            $arrayAll[]=$fechaN[0];
                    }
    
                if(count($arrayAll)>0){
                    
                    $partes1 = explode(':', gmdate("H:i", $arrayAll[0]));
                    $partes2 = explode(' ', $partes1[1]);
                    $segundos = ($partes1[0] * 3600 + $partes2[0] * 60);
                         
                    if($num==0){
                        $permiI=$permiI.$segundos;
                    }else{
                        $permiI=$permiI.','.$segundos;
                    }
                    
                }else{
                    if($num==0)
                         $permiI=$permiI.'null';
                    else
                        $permiI=$permiI.', null';
                    
                }
            } 
            $permiF="";
            foreach($arrayAus as $num => $val){
                $fecha=$val;
                $u=$user;
                $all=$pages->find("template=permiso, id_per=$user->id, aprobado=1");
                $arrayAll=array();
                    foreach($all as $key => $a){
                      $fechaN=explode("-", $a->fechaPerm);
                      $fechaCom=(gmdate("d/m/Y", $fechaN[1]));
                        if($fechaCom==$fecha)
                            $arrayAll[]=$fechaN[1];
                    }
    
                if(count($arrayAll)>0){
                    
                    $partes1 = explode(':', gmdate("H:i", $arrayAll[0]));
                    $partes2 = explode(' ', $partes1[1]);
                    
                         $segundos = ($partes1[0] * 3600 + $partes2[0] * 60);
                         
                    if($num==0){
                        $permiF=$permiF.$segundos;
                    }else{
                        $permiF=$permiF.','.$segundos;
                    }
                    
                }else{
                    if($num==0)
                         $permiF=$permiF.'null';
                    else
                        $permiF=$permiF.', null';
                    
                }
            } ?>
                <div class="col-md-12 col-sm-12 col-xs-12">
                   <canvas id="result_duration_over_time_chart" 
                    data-date='[<?= $labels ?>]'
                    data-duration="[<?= $iniciales ?>]" 
                    data-fastest-duration="[<?= $finales ?>]" 
                    data-event-init="[<?= $eventI ?>]"
                    data-event-fin="[<?= $eventF ?>]"
                    data-permiso-init="[<?= $permiI ?>]"
                    data-permiso-fin="[<?= $permiF ?>]"
                    height="340" width="1550"> 
                    </canvas>
                </div>
                

                <div class="clearfix"></div>
              </div>
            </div>
          </div> 
        <!--  Comienzo de la tabla de horas laboradas por el trabajador -->
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                    <?php $hoy=date('d-m-y'); ?>
                  <h2><?= ucwords(mb_strtolower($page->nombre)) ?><small>Datos del mes: <?= ucwords(strftime("%B", strtotime($hoy))); ?></small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-calendar"></i> Cambiar Mes</a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="/<?=$page->title?>/06-2018">Junio 2018</a></li>
                        <li><a href="/<?=$page->title?>/07-2018">Julio 2018</a></li>
                        <li><a href="/<?=$page->title?>/08-2018">Agosto 2018</a></li>
                        <li><a href="/<?=$page->title?>/09-2018">Septiembre 2018</a></li>
                        <li><a href="/<?=$page->title?>/10-2018">Octubre 2018</a></li>
                        <li><a href="/<?=$page->title?>/11-2018">Noviembre 2018</a></li>
                        <li><a href="/<?=$page->title?>/12-2018">Diciembre 2018</a></li>
                      </ul>
                    </li>
                    <!-- <li><a class="close-link"><i class="fa fa-close"></i></a></li> -->
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <p class="text-muted font-13 m-b-30"></p>
                  <table id="datatable-buttons" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Dia</th>
                        <th>Hora de llegada</th>
                        <th>Hora de salida</th>
                        <th>Registro de incidencias/eventos</th>
                      </tr>
                    </thead>


                    <tbody>
                   <?php foreach($arrayDa as $key=>$value){ ?> 
                      <tr>
                        <td> <?= strftime("%d de %B, %A", strtotime($value)); ?></td>
                        <?php $horaI=$array2['usuarios'][$user->id_per]['registro'][$value][0]['hora'];
                              $horaF=($array2['usuarios'][$user->id_per]['registro'][$value][0]['hora']==end($array2['usuarios'][$user->id_per]['registro'][$value])['hora']) ? '':end($array2['usuarios'][$user->id_per]['registro'][$value])['hora'];
                              $color="";
                             if(gmdate("H:i", strtotime($horaI))=='00:00')
                                $color="red";
                              else if(strtotime($horaI) <= strtotime($horaG))
                                $color="green";
                              else
                                $color="red"; ?>
                        
                        <td class="<?=$color?>"><?= (gmdate("H:i", strtotime($horaI))=='00:00') ? 'No registro entrada':gmdate("g:i A", strtotime($horaI)); ?> </td>
                        <?php 
                            if(strtotime($horaS) > strtotime($horaF))
                                $color1="red";
                              else
                                $color1="green"; ?> 
                        <td class="<?=$color1?>"><?= (gmdate("H:i", strtotime($horaF))=='00:00') ? 'No registro salida':gmdate("g:i A", strtotime($horaF)); ?></td>
                        <?php $newValue=$arrayAus[$key];   $ausen=$user->children();  ?>
                        <td><?php foreach($ausen as $even){ 
                                    $pos = strpos($even->fechaIn, $newValue);
                                    if ($pos === false) continue;
                                    echo '<button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target=".evento-'.$even->id.'">'.$even->title.'</button>';  
                            } 

                            foreach($pages->find("template=permiso, id_per=$user->id, aprobado=1") as $perm){ 
                                    $fechaN=explode("-", $perm->fechaPerm);
                                    $fechaCom=(gmdate("d/m/Y", $fechaN[0]));
                                    $pos = strpos($fechaCom, $newValue);
                                    if ($pos === false) continue;
                                    echo '<a href="'.$perm->url.'" target="_blank"><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target=".evento-'.$perm->id.'">'.$perm->tipoIncidencia.'</button></a>';  
                            } ?>
                            </td>
                        <?php 
                        foreach($ausen as $even){ 
                            $pos = strpos($even->fechaIn, $newValue);
                                    if ($pos === false) continue;
                                    
                            if($even->fechaIn)
                                $horaI=explode(" ", trim($even->horaI));
                            if($even->fechaFi)
                                $horaF=explode(" ", trim($even->horaF));
                                
            
                            if($eventoUsuario->fechaIn==$eventoUsuario->fechaFi)
                                $fecha=strftime("%d de %B, %Y", $even->getUnformatted("fechaIn")).' '.$horaI[0].' '.$horaI[1].' a  '.$horaF[0].' '.$horaF[1];
                            else
                                $fecha=strftime("%d de %B -", $eve->getUnformatted("fechaIn")).' '.strftime("%d de %B, %Y",  $even->getUnformatted("fechaFi")).' '.$horaI[0].' '.$horaI[1].' a  '.$horaF[0].' '.$horaF[1]; ?>
                                
                                
                        <form id="frmEv-<?= $even->id ?>">
                          <div class="modal fade bs-example-modal-lg evento-<?= $even->id ?>" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                              <div class="modal-content">
                                <?php 
                                        if($even->fechaIn==$even->fechaFi)
                                            $fecha=strftime("%d %B %Y", $even->getUnformatted("fechaIn"));
                                        else
                                            $fecha=strftime("%d %B -", $even->getUnformatted("fechaIn")).' '.strftime("%d %B, %Y", $even->getUnformatted("fechaFi")); ?>
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                  </button>
                                  <h4 class="modal-title" id="myModalLabel">Justificante <?= $fecha ?></h4>
                                </div>
                                <div class="modal-body">
                                  <h4><?= $user->nombre.'  '.$user->puesto ?></h4>
                                  <h4>General</h4>
                                  <h5><?= $even->infoGe ?></h5>
                                  <h5><?= $fecha.' '.$horaI[0].' '.$horaI[1].' a  '.$horaF[0].' '.$horaF[1]; ?></h5>
                                  <p><b>Nombre del evento: </b> <?= $even->nameEvento ?></p>
                                  <p><b>Lugar: </b><?= $even->lugar ?></p>
                                  <p><b>Asigno la asistencia o participación en el evento: </b><?= $even->autoridad ?></p>
                                  <p><b>Se notifico por  </b><?= $even->medio ?></p>
                                  <?php if($even->apoyo){ ?> 
                                    <p><b><?=$even->apoyo?></b>  de apoyo economico</p>
                                  <?php }else{ ?> 
                                    <p>No se necesitó apoyo economico</p>
                                  <?php } ?>
                                  <h5>Conclusiones</h5>
                                  <p><b>Motivo del cargo o comisión: </b> <?= $even->motivo ?></p>
                                  <p><b>Este evento atiende: </b> <?= $even->programa ?></p>
                                  <p><b>Informe breve de la comisión o encargo: </b><?= $even->breve ?></p>
                                  <p><b>Resultados obtenidos con su participación:</b></p>
                                  <textarea placeholder="No se cuenta con está información, escribe aquí para agregarla y se guardara automaticamente" data-id="<?= $even->id ?>" name="resultados" style="width: 100%;" rows="2" class="textresults"><?= $even->resultados ?></textarea>
                                 <?php if($even->observaciones){ ?> 
                                  <p><b>Observaciones: </b><?= $even->observaciones ?></p>
                                 <?php } ?>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-danger delete" data-id="<?= $even->id ?>" data-nm="<?= $even->title ?>" data-dismiss="modal">Eliminar</button>
                                  
                                  <button type="button" class="btn btn-success" data-dismiss="modal" style="display:none;">Guardar</button>
                                  <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                </div>
                                <?= $session->CSRF->renderInput(); ?>
                              </div>
                            </div>
                          </div>
                        </form>
                       <?php } ?>
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
    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
     <script>
    $(".textresults").focusout(function() {
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
     
    $(".delete").focusout(function() {
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
      },
      {
        label:                'Inicio Evento',
        fill:                 true,
        backgroundColor:      'rgba(38, 125, 154, 0.6)',  // red
        borderColor:          'rgba(38, 125, 154, 0.6)',
        pointBorderColor:     'rgba(38, 125, 154, 0.6)',
        pointBackgroundColor: 'rgba(38, 125, 154, 0.6)',
        borderWidth: '8',
        pointStyle: 'triangle',
        data: resultDurationCanvas.data('event-init')
      },
      {
        label:                'Finaliza evento',
        fill:                 true,
        backgroundColor:      'rgba(38, 125, 154, 0.6)',  // red
        borderColor:          'rgba(38, 125, 154, 0.6)',
        pointBorderColor:     'rgba(38, 125, 154, 0.6)',
        pointBackgroundColor: 'rgba(38, 125, 154, 0.6)',
        borderWidth: '8',
        pointStyle: 'triangle',
        data: resultDurationCanvas.data('event-fin')
      },
       {
        label:                'Inicio permiso',
        fill:                 true,
        backgroundColor:      'rgba(38, 185, 154, 0.6)',  // red
        borderColor:          'rgba(38, 185, 154, 0.6)',
        pointBorderColor:     'rgba(38, 185, 154, 0.6)',
        pointBackgroundColor: 'rgba(38, 185, 154, 0.6)',
        borderWidth: '8',
        pointStyle: 'rect',
        data: resultDurationCanvas.data('permiso-init')
      },
      {
        label:                'Finaliza permiso',
        fill:                 true,
        backgroundColor:      'rgba(38, 185, 154, 0.6)',  // red
        borderColor:          'rgba(38, 185, 154, 0.6)',
        pointBorderColor:     'rgba(38, 185, 154, 0.6)',
        pointBackgroundColor: 'rgba(38, 185, 154, 0.6)',
        borderWidth: '8',
        pointStyle: 'rect',
        data: resultDurationCanvas.data('permiso-fin')
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
    </script>
  </body>
</html>