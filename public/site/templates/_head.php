<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="<?= $config->urls->templates ?>production/images/favicon.ico" type="image/ico" />

    <title><?= ($page->nombre) ? ucwords(mb_strtolower($page->nombre)):$page->title ?></title>

    <!-- Bootstrap -->
    <link href="<?= $config->urls->templates ?>vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?= $config->urls->templates ?>vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?= $config->urls->templates ?>vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<?= $config->urls->templates ?>vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="<?= $config->urls->templates ?>vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <link href="<?= $config->urls->templates ?>vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="<?= $config->urls->templates ?>vendors/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">

    
    <!-- JQVMap -->
    <link href="<?= $config->urls->templates ?>vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="<?= $config->urls->templates ?>vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/eonasdan-bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="<?= $config->urls->templates ?>build/css/custom.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.css">

     <link href="<?= $config->urls->templates ?>vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="<?= $config->urls->templates ?>vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="<?= $config->urls->templates ?>vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

   

    

  </head>