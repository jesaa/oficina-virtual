<?php if(!$user->isLoggedin()) $session->redirect("/iniciar-sesion");
    
        if($user->firstL == 0) $session->redirect("/cambiar-contrasena"); 
        
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
                  <h2>Permisos<small></small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <p class="text-muted font-13 m-b-30"></p>
                  <table id="datatable-buttons1" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Solicita</th>
                        <th>Tipo</th>
                        <th>Fecha</th>
                        <th>Reponer Horas</th>
                        <th></th>
                        <th></th>
                        <th></th>
                      </tr>
                    </thead>


                    <tbody>
                    <?php 
                    $permisos=$pages->find("template=permiso, aprobado=0");
                    foreach($permisos as $perm){ ?> 
                      <tr id="tr-<?=$perm->id?>">
                        <?php $u=$users->get($perm->id_per); ?>
                        <td><?= ucwords(mb_strtolower($u->nombre)) ?></td>
                        <td><?= $perm->tipoIncidencia ?></td>
                        <?php $fechaPermiso=explode("-", $perm->fechaPerm); ?> 
                        <td><?= strftime("%d %B %Y", $fechaPermiso[0]).gmdate(" g:i A", $fechaPermiso[0]).' al '.strftime("%d %B %Y", $fechaPermiso[1]).gmdate(" g:i A", $fechaPermiso[1]); ?></td>
                        <td><?= $perm->reponer ?></td>
                        <td>
                          <button type="button" class="btn btn-success btn-xs aprobar" data-id="<?= $perm->id ?>" data-toggle="modal">Aprobar</button>
                        </td>
                        <td>
                          <button type="button" class="btn btn-danger btn-xs rechazar" data-id="<?= $perm->id ?>" data-toggle="modal">Rechazar</button>
                        </td>
                        <td>
                          <a href="<?= $perm->url ?>" target="_blank"><button type="button" class="btn btn-primary btn-xs" data-toggle="modal">Ver</button></a>
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

     
     $( ".aprobar" ).click(function() {
         var page=$(this).data('id');
         swal({
          title: '¿Estás seguro?',
          text: "El permiso se aprobará, esta accion no se puede deshacer",
          type: 'question',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Aprobar',
          cancelButtonText: 'Cancelar'
        }).then((result) => {
          if (result.value) {
            $.ajax({
                url: "/perm-aprobado",
                type: "post",
                data: {page:page},
                dataType: "html",
            }).done(function(msg){
                $("#tr-"+page).hide();
                swal('Correcto','La incidencia se ha aprobado.','success');
            }).fail(function (jqXHR, textStatus) {
                console.log(textStatus);
            }); 
          }
        });
     });

     $( ".rechazar" ).click(function() {
         var page=$(this).data('id');
         swal({
          title: '¿Estás seguro?',
          text: "La incidencia se rechazará y no se podrá recuperar",
          type: 'question',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Rechazar',
          cancelButtonText: 'Cancelar'
        }).then((result) => {
          if (result.value) {
            $.ajax({
                url: "/perm-rechazado",
                type: "post",
                data: {page:page},
                dataType: "html",
            }).done(function(msg){
                $("#tr-"+page).hide();
                swal('Eliminado','La incidencia ha sido rechazada.','success');
            }).fail(function (jqXHR, textStatus) {
                console.log(textStatus);
            }); 
          }
        });
     });


          $("#datatable-buttons1").DataTable({
            dom: "Blfrtip",
            pageLength: 50,
            order: false,
            language: { url: "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json" },
            buttons: [],
            responsive: true
          });

    </script>
  </body>
</html>