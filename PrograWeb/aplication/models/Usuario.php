<?php

class Usuario extends Modelo
{
	public $nombre_tabla = 'usuarios_detalle';
	
	private $nombre;
	private $email;
	private $password;
	
	function _construct()
	{
		$this->Modelo();
	}
	
	public function get_nombre()
	{
		return $this->nombre;
	}
	
	public function set_nombre($valor)
	{
		$this->nombre= $valor;
	}
	
	public function get_email()
	{
		return $this->email;
	}
	
	public function set_email($valor)
	{
		$this->email= $valor;
	}
	
	public function get_password()
	{
		return $this->password;
	}
	
	public function set_password($valor)
	{
		$this->password= $valor;
	}
}

?>