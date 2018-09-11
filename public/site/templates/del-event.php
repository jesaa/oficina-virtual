<?php namespace ProcessWire;

    	$p = $pages->get($input->post->pageId);
        $pages->delete($p);
        echo 'true';