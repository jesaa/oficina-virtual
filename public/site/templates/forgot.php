<? namespace ProcessWire;

    $email = $sanitizer->email($input->post->email);
    if($email) {
      $u = $users->get("email=$email"); 
      if($u->id) {
        $pass = '';
        $chars = 'abcdefghijkmnopqrstuvwxyz23456789-.#%&$=/ABCDEFGHIJKMNOPQRSTUVWXYZ'; 
        $length = mt_rand(9,12); 
        for($n = 0; $n < $length; $n++) $pass .= $chars[mt_rand(0, strlen($chars)-1)];
        $u->of(false);
        $u->firstL = 0; 
        $u->salt = $pass;
        //$u->pass = $pass; 
        $u->save();
        $u->of(true); 
        
        $url='http://oficina-virtual.67.227.236.238.nip.io/recuperar-contrasena/'.$u->id.'/'.md5($u->email.$pass).'/'.time();
        
        //$message = "<h2>Tu nueva contraseña para la plataforma es: $pass</br></br><h2>";
        //$message .= "<h3>Vuelva  a ingresar a la plataforma con su nueva contraseña: <a href='http://oficina-virtual.67.227.236.238.nip.io'>ACCEDER</a></h3>"; 
        
        $message = "<h2>Para recuperar tu contraseña ingresa al siguiente <a href='".$url."'>ENLACE</a></h2>";
        
        $m = new WireMail();
        $m->to($u->email); 
        $m->from('noreply@'.$config->httpHost, 'Soporte IMEPLAN');
        $m->subject('Recuperar contraseña');
        $m->bodyHTML($message);
        $m->send();
     
        $result=array('result' => true);
          echo json_encode($result);
      } else {
        $result=array('result' => false);
          echo json_encode($result);
      }
    }else{
        $result=array('result' => false);
          echo json_encode($result);
    }
    
?>