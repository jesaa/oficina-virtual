<?php if($user->firstL > 0 ) 
        header('Location: /personal');
      else
        header('Location: /cambiar-contrasena'); 
        
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
//$filename = "../../data/datosasis.dat";
$handle = fopen($filename, "r");
$contents = fread($handle, filesize($filename));
fclose($handle);

$registros=explode("\r\n", $contents);


$array['registros'] = array();


foreach($registros as $registro){
    $ent = preg_split("/[\s,]+/", trim($registro));
    $array['registros'][]=array('id' => $ent[0], 'fecha' => $ent[1], 'hora' => $ent[2]);
    $array1['usuarios'][$ent[0]]['registro'][]=array('id' => $ent[0], 'fecha' => $ent[1], 'hora' => $ent[2]);
    $array2['usuarios'][$ent[0]]['registro'][$ent[1]][]=array('id' => $ent[0], 'fecha' => $ent[1], 'hora' => $ent[2]);

}

//echo json_encode($array2['usuarios']);


$resultado = 0;
$arreglo = 0;
$resultadoT= '00:00:00';
$faltas = 0;

foreach($array2['usuarios'] as $usuario){
    foreach($usuario['registro'] as $usuFe){
        if(count($usuFe)>=2){
            $resultado += strtotime($usuFe[0]['hora']);
            $resultadoF += strtotime(end($usuFe)['hora']);
            $diferencia = strtotime(end($usuFe)['hora']) - strtotime($usuFe[0]['hora']);
            $resultadoT = sumarHoras($resultadoT, gmdate("H:i:s", $diferencia));
            $arreglo++;
        }
    }
    
}

$resultadoF = $resultadoF / $arreglo;
$resultado = $resultado / $arreglo; 
$resultadoHT=explode(':', $resultadoT); 

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
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i> Promedio de llegada</span>
              <div class="count"><?= gmdate("H:i:s", $resultado); ?></div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Promedio de salida</span>
              <div class="count green"><?= gmdate("H:i:s", $resultadoF); ?></div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Ausencias solicitadas</span>
              <div class="count">-</div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Horas Fuera de Oficina</span>
              <div class="count">-</div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Faltas</span>
              <div class="count"><?= $faltas ?></div>
              
            </div>
          </div>
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph">

                <div class="row x_title">
                  <div class="col-md-6">
                    <h3>Network Activities <small>Graph title sub-title</small></h3>
                  </div>
                  <div class="col-md-6">
                    <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                      <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                      <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                    </div>
                  </div>
                </div>

                <div class="col-md-9 col-sm-9 col-xs-12">
                  <div id="chart_plot_011" class="demo-placeholder"></div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-12 bg-white">
                  <div class="x_title">
                    <h2>Top Campaign Performance</h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="col-md-12 col-sm-12 col-xs-6">
                    <div>
                      <p>Facebook Campaign</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="80"></div>
                        </div>
                      </div>
                    </div>
                    <div>
                      <p>Twitter Campaign</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-6">
                    <div>
                      <p>Conventional Media</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="40"></div>
                        </div>
                      </div>
                    </div>
                    <div>
                      <p>Bill boards</p>
                      <div class="">
                        <div class="progress progress_sm" style="width: 76%;">
                          <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>

                <div class="clearfix"></div>
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
    <script src="<?= $config->urls->templates ?>vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="<?= $config->urls->templates ?>vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="<?= $config->urls->templates ?>vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<?= $config->urls->templates ?>vendors/moment/min/moment.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>
    <script>
        function init_flot_chart(){
		
		if( typeof ($.plot) === 'undefined'){ return; }
		
		console.log('init_flot_chart');
		
		var arr_data1 = [
			[gd(2012, 1, 1), 08.20],
			[gd(2012, 1, 2), 09.10],
			[gd(2012, 1, 3), 08.10],
			[gd(2012, 1, 4), 09.25],
			[gd(2012, 1, 5), 11.20],
			[gd(2012, 1, 6), 10.50],
			[gd(2012, 1, 7), 09.20]
		];

		var arr_data2 = [
		  [gd(2012, 1, 1), 17.20],
		  [gd(2012, 1, 2), 18.20],
		  [gd(2012, 1, 3), 16.20],
		  [gd(2012, 1, 4), 17.00],
		  [gd(2012, 1, 5), 13.00],
		  [gd(2012, 1, 6), 15.30],
		  [gd(2012, 1, 7), 19.20]
		];
			
		
		var chart_plot_01_settings = {
          series: {
            lines: {
              show: false,
              fill: true
            },
            splines: {
              show: true,
              tension: 0.4,
              lineWidth: 1,
              fill: 0.4
            },
            points: {
              radius: 0,
              show: true
            },
            shadowSize: 2
          },
          grid: {
            verticalLines: true,
            hoverable: true,
            clickable: true,
            tickColor: "#d5d5d5",
            borderWidth: 1,
            color: '#fff'
          },
          colors: ["rgba(38, 185, 154, 0.38)", "rgba(3, 88, 106, 0.38)"],
          xaxis: {
            tickColor: "rgba(51, 51, 51, 0.06)",
            mode: "time",
            tickSize: [1, "day"],
            //tickLength: 10,
            axisLabel: "Date",
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Verdana, Arial',
            axisLabelPadding: 10
          },
          yaxis: {
            ticks: 10,
            tickColor: "rgba(51, 51, 51, 0.06)",
          },
          tooltip: false
        }
		        
		
        if ($("#chart_plot_011").length){
			console.log('Plot1');
			
			$.plot( $("#chart_plot_011"), [ arr_data1, arr_data2 ],  chart_plot_01_settings );
		}
		

	  
	} 
    </script>
  </body>
</html>


