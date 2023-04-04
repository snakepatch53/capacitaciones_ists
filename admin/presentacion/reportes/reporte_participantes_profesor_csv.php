<?php
header("Content-type: application/vnd.ms-excel; charset=latin1");
header("Content-Disposition: attachment; filename=CURSO_CSV.xls");
if(isset($_GET['id'])){  
  require_once '../../persistencia/Mysql.php';
  require_once '../../persistencia/clases/CursoDAO.php';
  require_once '../../persistencia/clases/MatriculaDAO.php';
  require_once '../../persistencia/clases/ParticipanteDAO.php';
  $id = $_GET['id'];
  $_participante = new ParticipanteDAO();
  $_matricula = new MatriculaDAO();
  $_curso = mysqli_fetch_assoc((new CursoDAO()) -> findById($id));
?>
  <!DOCTYPE html>
  <html lang="es">
    <head>
       <meta charset="UTF-8">
       <title>Reporte_Modelo_Curso</title>
  </head>
  <body>  
    <style>
      table{
        border-collapse: collapse;
      }
    </style>
    
    <table border="1">
     
      <tr>
        <td>username</td>
        <td>password</td>
        <td>firstname</td>
        <td>lastname</td>
        <td>email</td>
        <td>city</td>
        <td>course1</td>
        <td>type1</td>
      </tr>
      
      <tr>
        <td><?php echo $_curso['profesor_cedula'] ?></td>
        <td><?php echo $_curso['profesor_cedula'] ?></td>
        <td><?php echo $_curso['profesor_nombre'] ?></td>
        <td><?php echo $_curso['profesor_apellido'] ?></td>
        <td></td>
        <td></td>
        <td><?php echo $_curso['curso_nombre'] ?></td>
        <td>2</td>
      </tr>
      
<?php
  $rs = $_matricula  -> findByIdCurso($id);
  while($r = mysqli_fetch_assoc($rs)){
      $r_participante = mysqli_fetch_assoc($_participante -> findById($r['id_participante']));
?>
      <tr>
        <td><?php echo $r_participante['cedula'] ?></td>
        <td><?php echo $r_participante['cedula'] ?></td>
        <td><?php echo $r_participante['nombre'] ?></td>
        <td><?php echo $r_participante['apellido'] ?></td>
        <td><?php echo $r_participante['email'] ?></td>
        <td><?php echo $r_participante['direccion'] ?></td>
        <td><?php echo $_curso['curso_nombre'] ?></td>
        <td>1</td>
      </tr>
<?php } ?>
    </table>
    
    
  </body>
</html>
<?php } ?>