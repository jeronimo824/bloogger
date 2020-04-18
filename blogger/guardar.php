<?php 

include("conexion.php");
if(isset($_POST['save_task'])){
    $titulo = $_POST['title'];
    $descripcion = $_POST['descripcion'];
    

    $query = "INSERT INTO post (title,descripcion) VALUES ('$titulo','$descripcion')";
    $resultado = mysqli_query($conn,$query);
    
    if(!$resultado){
        die("no se ha guardado");
    }else{
        echo 'guardado';
    }
    $_SESSION['message'] = 'Task Saved succesfully';
    $_SESSION['message_type'] = 'success';
    header("Location: index.php");
}
?>