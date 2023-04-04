<?php
if(isset($_GET['id'])){  
  require_once '../../persistencia/librerias/mpdf/mpdf.php';
  require_once '../../persistencia/Mysql.php';
  require_once '../../persistencia/clases/MatriculaDAO.php';
  require_once '../../persistencia/clases/CursoDAO.php';
  $_matricula = new MatriculaDAO();
  $_curso = new CursoDAO();
  $id = $_GET['id'];
  $r = mysqli_fetch_assoc($_matricula -> findById($id));
  $r_c = mysqli_fetch_assoc($_curso -> findById($r['id_curso']));
  $mpdf = new mPDF('en-GB-x','A4','','',0,0,0,0,0,0);
  $html = '
  <html>
    <head>
      <title>CERTIFICADO</title>
      <link rel="stylesheet" href="../css/reporte_certificado.css">
    </head>
    <body>
      <br><br><br><br><br><br>
      <p style="color: #77777A;">
        <span style="font-size: 5px;">____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________</span>
        <span>SECRETARÍA DE <b>EDUCACIÓN SUPERIOR, CIENCIA, TECNOLOGÍA E INNOVACIÓN</b></span>
          <span style="font-size: 5px;">
        ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________</span>
      
        <br><br>
      
        <img src="../../../img_db/logo_institucion.png" width="auto" height="130px">
        
        <br>
        
        <b style="font-size: 25px; color: #4F5152;">CERTIFICA:</b>
        
        <br>
        
        A: <b style="font-size: 30px; color:#4F5152;">'.$r['certificado_nombre_participante'].'</b>
        
        <br>
        
        Por haber aprobado el curso de capacitación en <b>“'.$r['certificado_nombre_curso'].'”</b>. Realizado en el '.$r['certificado_nombre_institucion'].', en la ciudad de '.$r['certificado_ciudad_institucion'].' en las fechas '.$r['certificado_fecha_curso'].', sumando un total de '.$r['certificado_horas_curso'].' horas académicas.
      </p>
      <table style="color:#4F5152;">
        <tr>
          <td>
            <img src="../../../img_db/sellos/firma_rectora.png" width="auto" height="75px"><br>
            ____________________________ <br>
            <b>'.$r['certificado_rector_institucion'].'</b>  <br>
            Rector(a)
          </td>
          <td rowspan="2">
            <img src="../../../img_db/sellos/sello_institucion.png" width="auto" height="130px"><br>
            <img src="../../../img_db/sellos/sello_educacion.png" width="auto" height="130px">
          </td>
          <td>
            <img src="../../../admin/presentacion/fotos/profesor/firma/'.$r_c['profesor_firma'].'" width="auto" height="75px"><br>
            ____________________________ <br>
            <b>'.$r['certificado_cordinador_institucion'].'</b>  <br>
            Coordinador(a)
          </td>
        </tr>
        <tr>
          <td style="text-align: start;">
            <i style="font-size:18px;">'.$r['certificado_ciudad_institucion'].', '.$r['certificado_lugar_fecha_emision'].'.</i>       <br>
            <span style="font-size:13px;">Registro SENESCYT No</span>         <br>
            <span style="font-size:13px;">'.$r['certificado_codigo'].'</span>
          </td>
          <td></td>
        </tr>
      </table>
      
      
    </body>
  </html>
  ';
  //$html = utf8_encode($html);
  $mpdf->AddPage('L');
  $mpdf->WriteHTML($html);
  $mpdf->Output('Curso_Certificado.pdf','I'); exit;
}
?>