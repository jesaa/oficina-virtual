<div class="col-md-3 left_col">
  <div class="left_col scroll-view">
    <div class="navbar nav_title" style="border: 0;">
      <a href="/" class="site_title"><i class="fa fa-cloud"></i> <span>IMEPLAN</span></a>
    </div>

    <div class="clearfix"></div>

    <!-- menu profile quick info -->
    <div class="profile clearfix">
      <div class="profile_pic">
        <img src="<?= $config->urls->templates ?>production/images/myrna.png" class="img-circle profile_img">
      </div>
      <div class="profile_info">
        <span>Bienvenido,</span>
        <h2><?= ucwords(mb_strtolower($user->nombre)) ?></h2>
      </div>
    </div>
    <!-- /menu profile quick info -->

    <br />

    <!-- sidebar menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
      <div class="menu_section">
        <h3>Menu</h3>
        <ul class="nav side-menu">
          
          <li <?php if($page->template=="personal" || $page->template=="persona") echo 'class="active"'; ?>><a><i class="fa fa-group"></i> <span class="fa fa-chevron-down"></span>
          <?=  ($user->hasRole("administrativo")) ? 'Registro de personal':'Directorio'; ?></a>
            
                <ul class="nav child_menu" <?php if($page->template=="personal" || $page->template=="persona" || $page->template=="imprimir-mes" || $page->template=="permisos" || $page->template=="eventos") echo 'style="display:block;"'; ?>>
                      <li <?php if($page->template=="personal" || $page->template=="persona") echo 'class="current-page"'; ?>><a href="/personal">Lista personal</a></li>
                    <?php if($user->hasRole("administrativo")){ ?> 
                      <li <?php if($page->template=="permisos") echo 'class="current-page"'; ?>><a href="/permisos">Lista incidencias</a></li>
                      <li <?php if($page->template=="eventos") echo 'class="current-page"'; ?>><a href="/eventos">Lista eventos</a></li>
                      <li <?php if($page->template=="imprimir-mes") echo 'class="current-page"'; ?>><a href="/reporte-general">Reporte general</a></li>
                    <?php } ?>  
                </ul>
            
          </li>
          
          <li <?php if($page->template=="perfil"  ||  $page->template=="perfil-ausencias" ||  $page->template=="ausencias-incidencias" || $page->template=="form-permisos") echo 'class="active"'; ?>><a><i class="fa fa-user"></i>Mis registros<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" <?php if($page->template=="perfil" || $page->template=="ausencias-incidencias" || $page->template=="perfil-ausencias" || $page->template=="form-permisos") echo 'style="display:block;"'; ?>>
                      <li <?php if($page->template=="perfil") echo 'class="current-page"'; ?>><a href="/perfil">Asistencia</a></li>
                      <li <?php if($page->template=="perfil-ausencias") echo 'class="current-page"'; ?>><a href="/perfil-ausencias">Eventos</a></li>
                      <li <?php if($page->template=="ausencias-incidencias") echo 'class="current-page"'; ?>><a href="/ausencias-e-incidencias">Registrar evento</a></li>
                      <li <?php if($page->template=="form-permisos") echo 'class="current-page"'; ?>><a href="/permisos-e-incidencias">Registrar incidencia</a></li>
                </ul>
          </li>

          <li <?php if($page->template=="sala-de-juntas") echo 'class="active"'; ?>><a><i class="fa fa-calendar"></i>Sala de juntas<span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" <?php if($page->template=="sala-de-juntas") echo 'style="display:block;"'; ?>>
                      <li <?php if($page->template=="sala-de-juntas" && $page->urlSegment=='') echo 'class="current-page"'; ?>><a href="/sala-de-juntas">Agendar</a></li>
                      <li <?php if($page->template=="sala-de-juntas" && $page->urlSegment=="semanal") echo 'class="current-page"'; ?>><a href="/sala-de-juntas/semanal">Agenda semanal</a></li>
                      <li <?php if($page->template=="sala-de-juntas" && $page->urlSegment=="actual") echo 'class="current-page"'; ?>><a href="/sala-de-juntas/actual">Agenda de hoy</a></li>
                </ul>
          </li>
          
          <li><a href="/logout"><i class="fa fa-sign-out"></i>Cerrar Sesión</a>
            
          </li>
        </ul>
      </div>

    </div>
    <!-- /sidebar menu -->

    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
              <!-- <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a> -->
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle" style="padding-bottom: 16px;">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              
            </nav>
          </div>
        </div>