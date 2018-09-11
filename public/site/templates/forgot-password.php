<?php if($user->isLoggedin()) $session->redirect("/"); ?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Oficina Virtual IMEPLAN</title>

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
            <form id="forgotPassword">
              <h1>Olvidé mi contraseña</h1>
              <div>
                <input type="text" class="form-control" placeholder="Correo institucional" name="email" id="email" required="" />
              </div>
              <div>
                <a class="btn btn-default submit"  onclick="$(this).closest('form').submit()">Enviar contraseña a mi correo</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">¿Necesitas ayuda?
                  <a href="mailto:leoserick@imeplan.mx" class="to_register"> Enviar correo a soporte </a>
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

        
      </div>
    </div>
  </body>
</html>
<!-- jQuery -->
<script src="<?= $config->urls->templates ?>vendors/jquery/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
<script type='text/javascript'>
  $('#forgotPassword').on('submit', function (e) { 
    if($("#email").val().length < 3){
        swal({
          type: 'error',
          title: 'Ingrese su correo electrónico',
          confirmButtonText: 'Ok'
        });
        $("#email").focus();
    }else{
      $.ajax({
          url: "/forgot",
          type: "post",
          data: $(this).serialize(),
          dataType: "Json",
        }).done(function(msg){
          if(msg['result']){
              $("#email").val('');
            swal({
              title: '',
              text: 'Por favor revisa todas las bandejas de tu correo electrónico, para recuperar tu contraseña. Si no recibes un correo electrónico dentro de los próximos 15 minutos, por favor pónte en contacto con el administrador del sitio para restablecer tu contraseña',
              type: 'success',
              confirmButtonText: 'Ok'
              });
          }else{
            swal({
              type: 'error',
              title: 'El correo que ingreso no pertenece a ningún usuario.',
              confirmButtonText: 'Ok'
            });
          }
        }).fail(function (jqXHR, textStatus) {
            swal({
              type: 'error',
              title: 'Algo anda mal, actualiza la pagina y vuelve a intentar',
              confirmButtonText: 'Ok'
            });
        });
    }
    e.preventDefault(); 
  });
</script>