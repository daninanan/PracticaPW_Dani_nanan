

<?php

	class evt_eventos_tipos_usuarios
	{
		private $id_evento_tipo_usuario;
		private $id_evento;
		private $id_tipo_usuario;
			
		
		public function get_id_evento_tipo_usuario()
		{
			return $this->id_evento_tipo_usuario;
		}
		
		public function get_id_evento()
		{
			return $this->id_evento;
		}
		
	
		public function get_tipo_usuario()
		{
			return $this->tipo_usuario;
		}
				
				
		
			
		public function set_id_evento_tipo_usuario ($id_evento_tipo_usuario)
		{
		   	$this->id_evento_tipo_usuario=$id_evento_tipo_usuario;	
		}
		
		public function set_evento ($evento)
		{
		   	$this->evento=$evento;	
		}
		
		public function set_tipo_usuario ($tipo_usuario)
		{
		   	$this->tipo_usuario=$tipo_usuario;	
		}
		
		
	}

?>