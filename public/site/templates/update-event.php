<?php namespace ProcessWire;

	$motivo=$input->post->motivo2;
	$desc=$input->post->desc2;
	$horaIni=$input->post->horaIni2;
	$horaFin=$input->post->horaFin2;
	$idPage=$input->post->idPage;

 
 	if($motivo){
 		$p = wire('pages')->get($idPage);
	    $p->of(false);
	    $p->title = $motivo;
		$p->motivo = $motivo;
		$p->desc = $desc;
		$p->horaIni = $horaIni;
		$p->horaFin = $horaFin;

		$p->save();
		echo true;
 	}
	
	