<?php 
$u=$users->get($input->urlSegment1);
$message="false";
$tiempo=strtotime('now')-$input->urlSegment3;

if($u->id && $input->urlSegment1 && $input->urlSegment2 && $input->urlSegment3){
    if($input->urlSegment2==md5($u->email.$u->salt) && $tiempo<1200){
        $message="true";
    }else if($tiempo>1200){
        $message="expires";
    }
}   ?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Oficina Virtual IMEPLAN   </title>

    <!-- Bootstrap -->
    <link href="<?= $config->urls->templates ?>vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?= $config->urls->templates ?>vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?= $config->urls->templates ?>vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?= $config->urls->templates ?>vendors/animate.css/animate.min.css" rel="stylesheet">
    
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.css">

    <!-- Custom Theme Style -->
    <link href="<?= $config->urls->templates ?>build/css/custom.min.css" rel="stylesheet">
    
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="changePassword">
            <?php if($message=="true"){ ?>
                <h1>Recuperar cuenta</h1>
                <p>Tienes que crear una nueva contraseña para tu cuenta.</p>
            <?php }else if($message=="expires"){ ?>
                <h1>Expiro el tiempo</h1>
                <p>El enlace solo es valido por 20 minutos, vuelve a intentar.</p>
            <?php }else{ ?>
                <h1>Enlace invalido</h1>
                <p>El enlace no funciona, vuelve a solicitar la recuperación de tu contraseña.</p>
            <?php } ?>
              
            <?php if($message=="true"){ ?>
                <div>
                <input type="password" class="form-control" placeholder="Contraseña" required="" name="pass" id="pass"/>
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Confirma tu contraseña" required=""  name="pass_conf" id="pass_conf" />
                <input type="hidden" value="<?= $input->urlSegment1; ?>" name="userid">
              </div>
              <div>
                <a class="btn btn-default submit" onclick="$(this).closest('form').submit()">Enviar</a>
              </div>
            <?php }else{ ?>
              <div>
                <a class="btn btn-default submit" onclick="/olvidaste-tu-contrasena/">Solicitar recuperar contraseña</a>
              </div>
            <?php } ?>
              

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">¿Necesitas ayuda?
                  <a href="mailto:leoserick@imeplan.mx" class="to_register"> Enviar correo al soporte </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                   <img src="<?= $config->urls->templates ?>production/images/logotipo-imeplan.png" alt="">
                  <p>©2018 Creación de la Coordinación de Innovación y Tecnologías de IMEPLAN</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">Submit</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
<script src="<?= $config->urls->templates ?>vendors/jquery/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
<script type='text/javascript'>
  $('#changePassword').on('submit', function (e) { 
    if($("#pass").val().length < 6){
        $("#pass").focus();
        swal({
          type: 'error',
          title: 'Ingrese su contraseña, debe tener mas de 6 caracteres',
          confirmButtonText: 'Ok'
        });
    }else if($("#pass_conf").val().length < 6){
         $("#pass_conf").focus();
        swal({
          type: 'error',
          title: 'La confirmacion de contraseña, debe tener mas de 6 caracteres',
          confirmButtonText: 'Ok'
        });
    }else if($("#pass_conf").val() != $("#pass").val()){
        swal({
          type: 'error',
          title: 'Las contraseñas no coinciden por favor vuelva a escribirlas',
          confirmButtonText: 'Ok'
        });
        $("#pass").val('');
        $("#pass_conf").val('');
        $("#pass").focus();
    }else{
      $.ajax({
          url: "/change-pass-login",
          type: "post",
          data: $(this).serialize(),
          dataType: "Json",
        }).done(function(msg){
            console.log(msg);
          if(msg['result']){
              swal({
              title: 'Correcto',
              text: 'Se actualizo la contraseña',
              type: 'success',
              timer: 1900,
              showConfirmButton: false
              },
              setTimeout(function(){
                top.window.location='/';
            }, 1300)
              );
          }
        }).fail(function (jqXHR, textStatus) {
            swal({
              type: 'error',
              title: 'Algo anda mal, refresca la pagina y vuelve a intentar',
              confirmButtonText: 'Ok'
            });
        });
    }
    e.preventDefault(); 
  });
</script>
