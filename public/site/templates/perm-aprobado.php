<?php namespace ProcessWire;

	$idPage=$input->post->page;
	
	$p = wire('pages')->get($idPage);
    $p->of(false);
	$p->aprobado = 1;

	$p->save();
	echo true;