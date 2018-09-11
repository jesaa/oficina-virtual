<?php
if($user->isLoggedin()) {
  if($input->post->pass_conf && $input->post->pass) {
        
        $u=$user;
        $u->of(false);
        $u->pass = $input->post->pass; 
        $u->firstL = 1; 
        $u->save();
        $u->of(true); 

      if($u->id) {
          $result=array('result' => true);
          echo json_encode($result);
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
