<?php namespace ProcessWire;

    
    
    if($input->post->tipoIncidencia == 'Otro')
        $tipoIncidencia=$input->post->otroMotivo;
    else
        $tipoIncidencia=$input->post->tipoIncidencia;
        
   
    $paUser=$input->post->usr;
    
    $fechaRepoNew=explode("-", $input->post->fechaRepo);
   
    $fechaRepoI=strtotime(trim($fechaRepoNew[0]));
    $fechaRepoF=strtotime(trim($fechaRepoNew[1]));
   
    $fechaRepo=$fechaRepoI.'-'.$fechaRepoF;
    
    $reponer=$input->post->resp;
    $fechasRepo=$input->post->fechasRepo;
    $newFechasRepo=array();
    if(isset($input->post->fechasRepo)){
        $fechasRepo=explode(",", $fechasRepo);
        foreach($fechasRepo as $fecha){
            if(empty($fecha)) continue;
            $fechaRepoNew=explode("-", $fecha);
            $fechaRepoI=strtotime(trim($fechaRepoNew[0]));
            $fechaRepoF=strtotime(trim($fechaRepoNew[1]));
            $fechaNew=$fechaRepoI.'-'.$fechaRepoF;
            $newFechasRepo[]=$fechaNew;
        }
        $fechasRepo=implode(",", $newFechasRepo);
    }
    
    
    
  
if($tipoIncidencia){
    $pa = new Page();
	$pa->setOutputFormatting(false);
	$pa->template = 'permiso'; 
	$pa->parent = wire('pages')->get(1186);
	$pa->title = $paUser.'/'.$fechaRepo;
	$pa->id_per=$paUser;
    $pa->tipoIncidencia = $tipoIncidencia;
    $pa->fechaPerm = $fechaRepo;
    $pa->reponer = $reponer;
    $pa->fechasRepo = $fechasRepo;
    $pa->observaciones = $input->post->observaciones;
	
    $pa->save();
    echo $pa->url; 
    
}else

echo false;
	
