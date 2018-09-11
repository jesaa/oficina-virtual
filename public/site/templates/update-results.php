<?php

if($config->ajax) {
    if(isset($input->post->txt)){
        
            $p=$pages->get($input->post->page);
            $p->of(false);
            $p->resultados = $input->post->txt;
            $p->save();
            $p->of(true); 
            
            echo true;
    }else
        echo false;
    
}else
    echo false;
    