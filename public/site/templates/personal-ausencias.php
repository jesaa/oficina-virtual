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
                <h3>Personal <small>Lista de todo el personal de IMEPLAN </small></h3>
              </div>

             
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Personal<small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      A continuación mostramos un listado con todos las personas que integrán la plantilla de personal de IMEPLAN está es una lista interactiva la cual se podrá copiar, imprimir y descargar.</p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Nombre</th>
                          <th>Puesto</th>
                          <th>Pertenece</th>
                          <th>Correo</th>
                         <?php  if($user->hasRole('administrativo') || $user->hasRole('superuser')){ ?>
                          <th>Asistencias</th>
                         <?php } ?>
                        </tr>
                      </thead>


                      <tbody>
                         <?php foreach($page->children() as $persona){ ?> 
                        <tr>
                          <td><?= ucwords(mb_strtolower($persona->nombre)) ?></td>
                          <td><?= $persona->puesto ?></td>
                          <td><?= $persona->pertenece ?></td>
                          <td><?= $persona->email ?></td>
                        <?php  if($user->hasRole('administrativo') || $user->hasRole('superuser')){ ?>
                          <td><a href="<?= $persona->url ?>"><button type="button" class="btn btn-success btn-xs">Consultar</button></td></a>
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
    <!-- iCheck -->
    <script src="<?= $config->urls->templates ?>vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="<?= $config->urls->templates ?>vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/jszip/dist/jszip.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="<?= $config->urls->templates ?>vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<?= $config->urls->templates ?>build/js/custom.min.js"></script>


  </body>
</html>
