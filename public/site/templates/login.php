<?php
if(!$user->isLoggedin()) {
  if($input->post->user && $input->post->pass) {

      $user = str_replace("@", "-", $input->post->user);
      $pass = $input->post->pass;

      if($session->login($user, $pass)) {
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
