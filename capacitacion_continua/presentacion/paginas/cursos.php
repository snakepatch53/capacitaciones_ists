<?php
if(isset($index)){
?>

<link rel="stylesheet" href="css/estilos_slick_curso.css">
<link rel="stylesheet" href="css/curso.css">


<div class="menu-slide">
  <h1>CURSOS DISPONIBLES</h1>
  <div class="items-slick">
    <?php
    $rs = $_curso->consultar();
    while($r = mysqli_fetch_assoc($rs)){
      if(isComplete($r)){
    ?>
    <div class="item">
        <div class="fondo_hover_edit">
          <a onclick="openInscribir(this)" name="<?php echo $r['curso_id'] ?>"><img src="imgs/icon_registro.png"></a>
        </div>
        <div class="fondo_hover_pdf">
          <a onclick="openPdf('<?php echo $r['curso_id'] ?>')"><img src="imgs/icon_pdf.png"></a>
        </div>
        
        <img src="../../admin/presentacion/fotos/curso/<?php echo $r['curso_foto'] ?>">
        <h3><?php echo strtoupper($r['curso_nombre']) ?></h3><br>
        <span><b>DOCENTE: </b><?php echo strtoupper($r['profesor_apellido']." ".$r['profesor_nombre']) ?></span>
        <span><b>DESDE: </b><?php echo $r['curso_fecha_inicio'] ?></span>
        <span><b>HASTA: </b><?php echo $r['curso_fecha_fin'] ?></span>
        <span><b>CUPOS: </b><?php echo getCuposDisponibles($r['curso_id']) ?></span>
        <span><b>HORAS: </b><?php echo ($r['modelo_curso_hora_teorica']+$r['modelo_curso_hora_practica']) ?></span>
        
        <p style="color: green;">DISPONIBLE</p>
<!--       <div class="banda disponibles">DISPONIBLE</div>-->
        
    </div>
    <?php }} ?>
  </div>
</div>

<div class="menu-slide">
  <h1>PROXIMOS CURSOS</h1>
  <div class="items-slick">
    <?php
    $rs = $_curso->consultar();
    while($r = mysqli_fetch_assoc($rs)){
      if(!isComplete($r)){
    ?>
    <div class="item">
        <img src="../../admin/presentacion/fotos/curso/<?php echo $r['curso_foto'] ?>">
        <h3><?php echo strtoupper($r['curso_nombre']) ?></h3><br>
        <span><b>DOCENTE: </b><?php echo strtoupper($r['profesor_apellido']." ".$r['profesor_nombre']) ?></span>
        <span><b>DESDE: </b><?php echo $r['curso_fecha_inicio'] ?></span>
        <span><b>HASTA: </b><?php echo $r['curso_fecha_fin'] ?></span>
        <span><b>CUPOS: </b><?php echo getCuposDisponibles($r['curso_id']) ?></span>
        <span><b>HORAS: </b><?php echo ($r['modelo_curso_hora_teorica']+$r['modelo_curso_hora_practica']) ?></span>
        <div class="banda proximos">PROXIMAMENTE</div>
    </div>
    <?php }} ?>
  </div>
</div>



<div id="contenedor_reporte">
  <div class="sub_ventana">
    <a onclick="closePdf()"><img src="imgs/icon_close.png"></a>
    <a id="reporte_modelo_curso_excel" href=""><img src="imgs/icon_excel.png"></a>
    <iframe src="" id="iframe_pdf"></iframe>
  </div>
</div>


<div id="contenedor_inscribir">
  <div class="sub_ventana_inscribir">
    <a onclick="closeInscribir()"><img src="imgs/icon_close.png"></a>
    <iframe src="" id="iframe_inscribir"></iframe>
  </div>
</div>

<script src="../logica/js/curso.js"></script>
<?php 
}else{
  header('location: ../index.php?pagina=1');
} 
?>