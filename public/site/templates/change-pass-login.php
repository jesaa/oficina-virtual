<?php
if($user->isLoggedin()) {
  if($input->post->pass_conf && $input->post->pass) {
        
        $u=$users->get($input->post->userid);
        $u->of(false);
        $u->pass = $input->post->pass; 
        $u->firstL = 1; 
        $u->save();
        $u->of(true); 

      if($u->id) {
        if($session->login($u->name, $input->post->pass)) {
          $result=array('result' => true);
          echo json_encode($result);
        }
      }else{
          $result=array('result' => false);
          echo json_encode($result);
      }
  }else{
    $result=array('result' => false);
          echo json_encode($result);
  }

}else{
    $result=array('result' => false);
          echo json_encode($result);
}
