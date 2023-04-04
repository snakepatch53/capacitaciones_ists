<?php
class Mysql
{
  private $conn;
  public function query($sql)
  {
    $this->conectar();
    $resultado = mysqli_query($this->conn, $sql);
    $this->desconectar();
    return $resultado;
  }
  public function conectar()
  {
    $this->conn = mysqli_connect("localhost", "root", "", "certificaciones");
    return $this->conn;
  }
  private function desconectar()
  {
    mysqli_close($this->conn);
  }
}
