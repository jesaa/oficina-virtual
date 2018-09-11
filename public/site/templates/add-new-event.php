<?php namespace ProcessWire;

	$motivo=$input->post->motivo;
	$desc=$input->post->desc;
	$horaIni=$input->post->horaIni;
	$horaFin=$input->post->horaFin;
	$date=$input->post->date;
	
if($motivo){
	$p = new Page();
	$p->setOutputFormatting(false);
	$p->template = 'event'; 
	$p->parent = wire('pages')->get('/sala-de-juntas');
	$p->title = $motivo;
	$p->motivo = $motivo;
	$p->desc = $desc;
	$p->horaIni = $horaIni;
	$p->horaFin = $horaFin;
	$p->date = $date;
	$p->idUser = $user->id;

	$p->save();
	echo true;
}else
    echo false;

	