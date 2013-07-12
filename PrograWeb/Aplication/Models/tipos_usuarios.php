

<?php

	class evt_tipos_usuarios
	{
		private $id_tipo_usuario;
		private $tipo;
			
		
		public function get_id_tipo_usuario()
		{
			return $this->id_tipo_usuario;
		}
		
		public function get_tipo()
		{
			return $this->tipo;
		}

				
		
			
		public function set_id_tipo_usuario ($id_tipo_usuario)
		{
		   	$this->id_tipo_usuario=$id_tipo_usuario;	
		}
		
		public function set_evento ($tipo)
		{
		   	$this->tipo=$tipo;	
		}
		

	}

?>