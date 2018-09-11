<?php

if($config->ajax) {
    if(isset($input->post->page)){
        
            $p=$pages->get($input->post->page);
            if($p->title==$input->post->nm){
                $p->delete();
                echo true;
            } 
            
            
    }else
        echo false;
    
}else
    echo false;
    