<?php
if(isset($_POST['id'])){
  include '../Mysql.php';
  include '../clases/CursoDAO.php';
  $_curso = new CursoDAO();
  $id = $_POST['id'];
  $nombre = $_POST['nombre'];
  $fecha_inicio = $_POST['fecha_inicio'];
  $fecha_fin = $_POST['fecha_fin'];
  $numero_cupos = $_POST['numero_cupos'];
  $id_modelo_curso = $_POST['id_modelo_curso'];
  $foto = $_FILES['foto'];
  if($id == 0){
    //GUARDAR / INICIO
    $_curso -> guardar($nombre,$fecha_inicio,$fecha_fin,$numero_cupos,$id_modelo_curso);
    if($foto['tmp_name'] != "" or $foto['tmp_name'] != null){
      $id = mysqli_fetch_assoc($_curso -> findFoto($nombre, $fecha_inicio, $fecha_fin, $numero_cupos, $id_modelo_curso))['curso_id'];
      $desde = $foto['tmp_name'];
      $hasta = '../../presentacion/fotos/curso/'.$id.'.png';
      copy($desde,$hasta);
      $_curso->editarFoto($id.".png",$id);
    }else{
      $_curso->editarFoto("user.png",$id);
    }
    //GUARDAR / FIN
  }else{
    //EDITAR / INICIO
    $_curso -> editar($nombre,$fecha_inicio,$fecha_fin,$numero_cupos,$id_modelo_curso,$id);
    if($foto['tmp_name'] != "" or $foto['tmp_name'] != null){
      $desde = $foto['tmp_name'];
      $hasta = '../../presentacion/fotos/curso/'.$id.'.png';
      copy($desde,$hasta);
      $_curso->editarFoto($id.".png",$id);
    }
    //EDITAR / FIN
  }

}
header('location: ../../presentacion/admin.php?pagina=5.0');
?>