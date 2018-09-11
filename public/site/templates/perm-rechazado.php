<?php namespace ProcessWire;

	 $pa = wire('pages')->get($input->post->page);
 
        $pa->of(false);
        $pa->status = Page::statusUnpublished;
        $pa->save();
        $pa->of(true);
        
        echo 'true';
    