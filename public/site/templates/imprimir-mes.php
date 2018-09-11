<?php if(!$user->isLoggedin()) $session->redirect("/iniciar-sesion");
    
        if($user->firstL == 0) $session->redirect("/cambiar-contrasena"); 
 
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
    
    foreach($user->children() as $userTime){
        if($userTime->fechaIn && $userTime->fechaFi){
            $horaI=gmdate("H:i:s", strtotime($userTime->horaI));
            $horaF=gmdate("H:i:s", strtotime($userTime->horaF));
            $fechaF=gmdate("Y-m-d", $userTime->getUnformatted("fechaFi"));
            $fechaI=gmdate("Y-m-d", $userTime->getUnformatted("fechaIn"));
            if (in_array($fechaI, $arrayDa)) {
                 $horaTF=$fechaF.' '.$horaF;
                $horaTI=$fechaI.' '.$horaI;
                $horaF=(strtotime($horaTF)-strtotime($horaTI))/3600;
                $totalF+=$horaF; 
            }else{
              continue;
            }
            
        }
        
    }

    foreach($pages->find("template=permiso, id_per=$user->id") as $userTime){
        if($userTime->fechaPerm){
            $fechaPermiso=explode("-", $userTime->fechaPerm);
            $fechaF=gmdate("Y-m-d", $fechaPermiso[1]);
            $fechaI=gmdate("Y-m-d", $fechaPermiso[0]);
            if (in_array($fechaI, $arrayDa)) {
                 $horaF=($fechaPermiso[1]-$fechaPermiso[0])/3600;
                 $totalF+=$horaF;
            }else{
              continue;
            }
            
        }
        
    }

 include('./_head.php'); ?>
<style type="text/css">
  table, th, td {
  font-size: 10px;
  font-weight: bold;
}
</style>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include('./_nav.php'); ?>

        <!-- page content -->
        <div class="right_col" role="main">

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
                        <li><a href="/reporte-general/06-2018">Junio 2018</a></li>
                        <li><a href="/reporte-general/07-2018">Julio 2018</a></li>
                        <li><a href="/reporte-general/08-2018">Agosto 2018</a></li>
                        <li><a href="/reporte-general/09-2018">Septiembre 2018</a></li>
                        <li><a href="/reporte-general/10-2018">Octubre 2018</a></li>
                        <li><a href="/reporte-general/11-2018">Noviembre 2018</a></li>
                        <li><a href="/reporte-general/12-2018">Diciembre 2018</a></li>
                      </ul>
                    </li>
                    <!-- <li><a class="close-link"><i class="fa fa-close"></i></a></li> -->
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <p class="text-muted font-13 m-b-30"></p>
                  <table id="datatable-buttons1" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                          <th>Nombre</th>
                          <?php foreach ($arrayDa as $key => $value) { ?>
                          <th><?= strftime("%a", strtotime($value)).'<br>'.strftime(" %d", strtotime($value));  ?></th>
                        <?php } ?>
                      </tr>
                      
                  </thead>


                    <tbody>
                   <?php foreach($users->find("name!=guest|root") as $key1=>$usr){ ?>
                      <tr>
                        <td> <?= ucwords(mb_strtolower($usr->nombre)) ?></td>
                     <?php foreach($arrayDa as $key=>$value){ ?> 
                        <?php $horaI=$array2['usuarios'][$usr->id_per]['registro'][$value][0]['hora'];
                              $horaF=($array2['usuarios'][$usr->id_per]['registro'][$value][0]['hora']==end($array2['usuarios'][$usr->id_per]['registro'][$value])['hora']) ? '':end($array2['usuarios'][$usr->id_per]['registro'][$value])['hora'];
                              $color="";
                             if(gmdate("H:i", strtotime($horaI))=='00:00')
                                $color="red";
                              else if(strtotime($horaI) <= strtotime($horaG))
                                $color="green";
                              else
                                $color="red"; 

                            if(strtotime($horaS) > strtotime($horaF))
                                $color1="red";
                              else
                                $color1="green"; ?> 
                        <td><span class="<?=$color?>"><?= (gmdate("H:i", strtotime($horaI))=='00:00') ? '-':gmdate("H:i", strtotime($horaI)); ?></span> <br> <span class="<?=$color1?>"><?= (gmdate("H:i", strtotime($horaF))=='00:00') ? '-':gmdate("H:i", strtotime($horaF)); ?></span></td>
                      
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
    <script src="<?= $config->urls->templates ?>vendors/jszip/dist/jszip.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pdfmake/build/vfs_fonts.js"></script>

    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
     <script type="text/javascript">
       $('#datatable-buttons1').DataTable( {
        pageLength: 50,
        dom: "Blfrtip",
            buttons: [
            {
              extend: "copy",
              className: "btn-sm",
              text: "Copiar"
            },
            {
              extend: "csv",
              className: "btn-sm",
              text: "CSV"
            },
            {
              extend: "print",
              className: "btn-sm",
              text: "Imprimir",
              customize: function(win)
              {
 
                var last = null;
                var current = null;
                var bod = [];
 
                var css = '@page { size: landscape; }',
                    head = win.document.head || win.document.getElementsByTagName('head')[0],
                    style = win.document.createElement('style');
 
                style.type = 'text/css';
                style.media = 'print';
 
                if (style.styleSheet)
                {
                  style.styleSheet.cssText = css;
                }
                else
                {
                  style.appendChild(win.document.createTextNode(css));
                }
 
                head.appendChild(style);
              }
            },
            ],
            language: { url: "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json" },
            responsive: true
    });
   
     </script>
  </body>
</html>