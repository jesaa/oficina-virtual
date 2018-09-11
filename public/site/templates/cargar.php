<!DOCTYPE html>
<html>
<body>

<form action="./" method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload File" name="submit">
</form>

</body>
</html>
<?php
         if($_FILES['fileToUpload']['name']){
            $pag=$pages->get(1053);
            $file = $_FILES["fileToUpload"]["tmp_name"];
            $pag->of(false);
            $pag->dataUser->add($file);
            $pag->save();
            $pag->of(true);
            echo 'true'; 
        }
        
     
?>