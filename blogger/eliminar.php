<?php 

include("conexion.php");

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $query = "DELETE FROM post WHERE id = $id";
    $result = mysqli_query($conn,$query);

    if(!$result){
        echo 'no se ha eliminado';
    }
    $_SESSION['message'] = 'Task Removed';
    $_SESSION['message_type'] = 'danger';
    header("Location: index.php");
}
?>