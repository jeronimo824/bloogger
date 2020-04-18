<?php 

include('conexion.php');

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $query = "SELECT * FROM post WHERE id = $id";
    $result = mysqli_query($conn,$query);
    if(mysqli_num_rows($result)==1){
        $row = mysqli_fetch_array($result);
        $title = $row['title'];
        $descripcion = $row['descripcion'];
    }
}
if(isset($_POST['update'])){
    $id = $_GET['id'];
    $title = $_POST['title'];
    $descripcion = $_POST['descripcion'];

    $query = "UPDATE post SET title = '$title', descripcion = '$descripcion' WHERE id = $id";
    $result = mysqli_query($conn,$query);
    header("Location: index.php"); 

    $_SESSION['message'] = 'blog update sucessfully';
    $_SESSION['message_type'] = 'warning';
}
?>

<?php include('includes/header.php')?>
<div class="container p-4">
    <div class="row">
        <div class="col-md-4 mx-auto">
            <div class="card card-body">
                <form action="editar.php?id=<?php echo $_GET['id'];?>" method="POST">
                    <div class="form-group">
                        <input type="text" name="title" value="<?php echo $title; ?>" class="form-control" placeholder="cambiar">
                    </div>
                    <div class="form-group">
                        <textarea name="descripcion" rows="2" class="form-control" placeholder="actualizar"><?php echo $descripcion;?></textarea>
                    </div>
                    <button name="update" class="btn btn-success">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php')?>