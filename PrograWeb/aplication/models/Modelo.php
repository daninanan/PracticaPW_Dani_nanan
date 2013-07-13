<?php
class Modelo{
	private $db;
	
	function Modelo(){
		$this->db = ADONewConnection('mysql');
		$this->db->debug=true;
		$this->db->Connect('localhost','root','251617','eventos');
	}
	
	public function consulta_datos()
	{
		$rs= $this->db->Execute('SELECT * from '.$this->nombre_tabla);
		return $rs;
	}
}

?>
