<?php namespace ProcessWire;

    
    $infoGe=$input->post->infoGe;
    
    if($input->post->fechas){
        $fecha=explode("-", $input->post->fechas);
        
        $soloIn=explode(" ", trim($fecha[0]));
        $soloFi=explode(" ", trim($fecha[1]));
        
        
        $fechaI=strtotime($fecha[0]);
        $fechaN=strtotime($fecha[1]);
        
        $horaI=$soloIn[1].' '.$soloIn[2];
        $horaF=$soloFi[1].' '.$soloFi[2];
        
    
    }
        
    $nameEvento=$input->post->evento;
    $lugar=$input->post->lugar;
    $autoridad=$input->post->autoridad;
    $medio=$input->post->medio;
    $apoyo=$input->post->apoyo;
    $cuanto=$input->post->cuanto;
    
    
    if($input->post->motivo == 'Otro')
        $motivo=$input->post->otroMotivo;
    else
        $motivo=$input->post->motivo;
        
    if($input->post->motivo == 'Otro')
        $programa=$input->post->otroPrograma;
    else
        $programa=$input->post->programa;
    
    $breve=$input->post->breve;
    $resultados=$input->post->resultados;
    $observaciones=$input->post->observaciones;
    $tags=explode(",",$input->post->tags);
    
    
  
if($nameEvento){
    $pa = new Page();
	$pa->setOutputFormatting(false);
	$pa->template = 'evento'; 
	$pa->parent = wire('pages')->get($user->id);
	$pa->title = $nameEvento;
	$pa->nameEvento = $nameEvento;
	$pa->infoGe=$infoGe;
	$pa->fechaIn=$fechaI;
	$pa->fechaFi=$fechaN;
	$pa->lugar=$lugar;
	$pa->autoridad=$autoridad;
	$pa->medio=$medio;
	$pa->apoyo=$cuanto;
	$pa->motivo=$motivo;
	$pa->programa=$programa;
	$pa->breve=$breve;
	$pa->resultados=$resultados;
	$pa->observaciones=$observaciones;
	$pa->horaI=$horaI;
	$pa->horaF=$horaF;
	
	foreach($tags as $tag){
	    if($users->find("nombre~=$tag")){
	        $pa->invitados->add($users->find("nombre~=$tag")->first());
	    }
	}
	
    $pa->save();
    echo $pa->id; 
    
}else

echo false;
	
