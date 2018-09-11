<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Imprimir</title>
</head>

<style>
  .j-workspace {
    box-sizing: border-box;
  }
  .j-wrap {
    max-width: 970px;
    margin: 0 auto;
    padding-left: 16px;
    padding-right: 16px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
  }
  .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .header img {
    width: 168px;
  }
  .firmas {
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
  }
  .firma-1 {
    width: 30%;
    display: flex;
    justify-content: center;
    align-items: flex-end;
    min-height: 160px;
  }
  .firma-1 p{
    width: 100%;
    border-top: dashed 1px gray;
    text-align: center;
    padding-top: 8px;
  }
</style>
<body>
  <div class="j-worskpace">
    <div class="j-wrap">
      <div class="header">
        <img src="<?= $config->urls->templates ?>production/images/imeplan-logo.svg" alt="">
        <h2>Formato de Permisos e Insidencias del personal</h2>
      </div>
      <div class="body">
        
        <p>Fecha: <?= strftime("%d de %B de %Y", strtotime(date('d-m-Y'))); ?></p>
        <?php $u=$users->get($page->id_per); ?>
        <p><b>Nombre:</b> <?= ucwords(mb_strtolower($u->nombre)) ?></p>
        <p><b>Adscripción:</b> <?= $u->pertenece ?></p>
        <p><b>Tipo de incidencia laboral:</b> <?= $page->tipoIncidencia ?></p>
        <?php $fechaPermiso=explode("-", $page->fechaPerm); ?>
        <p><b>Fecha de permiso:</b> <?= strftime("Del %d %B,  %Y", $fechaPermiso[0]).gmdate(" g:i A", $fechaPermiso[0]).'&nbsp;&nbsp;&nbsp;al &nbsp;&nbsp;'.strftime("%d %B,  %Y", $fechaPermiso[1]).gmdate(" g:i A", $fechaPermiso[1]); ?></p>
        <?php if($page->reponer=='Si'){ ?> 
        
        <p><b>Reposición de horas:</b> <br>
        <?php 
            
            $fechasRepo=explode(",", $page->fechasRepo); 
            foreach($fechasRepo as $fechaRepo){
                $fechaReposicion=explode("-", $fechaRepo);
            echo strftime("Del %d %B,  %Y", $fechaReposicion[0]).gmdate(" g:i A", $fechaReposicion[0]).'&nbsp;&nbsp;&nbsp;al &nbsp;&nbsp;'.strftime("%d %B,  %Y", $fechaReposicion[1]).gmdate(" g:i A", $fechaReposicion[1]);
         } }?>
         
        </p>
        <?php if($page->observaciones){ ?> 
            <p><b>Observaciones:</b> <?= $page->observaciones ?></p>
        <?php } ?>
      </div>
      <div class="firmas">
        <!--  Firmas en el documento-->
        <div class="firma-1">
            <p><?= ucwords(mb_strtolower($user->nombre)) ?></p>
        </div>
        <!--  Firmas en el documento-->
        <div class="firma-1">
            <p></p>
        </div>
        <!--  Firmas en el documento-->
        <div class="firma-1">
            <?php $titular=$users->get("puesto=Titular de la Unidad Administrativa") ?>
            <p><?= ucwords(mb_strtolower($titular->nombre)) ?></p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
<script src="<?= $config->urls->templates ?>vendors/jquery/dist/jquery.min.js"></script>
<script>
    $(document).ready(function() {
   window.print();
   history.go(-2);
});
</script>
