<?php

class Model_Classes extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	/*
	*-----------------------------------------
	* Insert the class info into the database
	*----------------------------------------
	*/
	public function create()
	{
		$insert_data = array(
			'class_name' => $this->input->post('className'),
			'numeric_name' => $this->input->post('numericName'),
			'section_id' => $this->input->post('addsectionname'),
			'fecha_inicio' => $this->input->post('FI'),
			'fecha_fin' => $this->input->post('FF'),
			'hora_inicio' => $this->input->post('HI'),
			'hora_fin' => $this->input->post('HF'),
			'lunes' => $this->input->post('L') ? $this->input->post('L') : 0,
			'martes' => $this->input->post('M') ? $this->input->post('M') : 0,
			'miercoles' => $this->input->post('MI') ? $this->input->post('MI') : 0,
			'jueves' => $this->input->post('J') ? $this->input->post('J') : 0,
			'viernes' => $this->input->post('V') ? $this->input->post('V') : 0,
			'sabado' => $this->input->post('S') ? $this->input->post('S') : 0
		);
		$section_id = $this->input->post('addsectionname');
		$fecha_inicio = $this->input->post('FI');
		$fecha_fin = $this->input->post('FF');
		$indexdata[0]=$insert_data;

		$obtener_class = $this->obtener_clases($section_id, $fecha_inicio, $fecha_fin);

		if($this->clasesSolapadas($indexdata,$obtener_class)){
			print_r("las clases se solapan, puto"); die();
			return false;

			// return $message = "Las clases se solapan";
		}else{
			// die();
			$status = $this->db->insert('class', $insert_data);
			return ($status === true ? true : false);
		}
		// $status = $this->db->insert('class', $insert_data);
		// return ($status === true ? true : false);
	}

	/*
	*-----------------------------------------
	* validate the class name
	*----------------------------------------
	*/
	public function validate_classname()
	{
		$className = $this->input->post('className');
		$sql = "SELECT * FROM class WHERE class_name = ?";
		$query = $this->db->query($sql, array($className));

		return ($query->num_rows() == 1 ? true : false);
	}

	/*
	*-----------------------------------------
	* validate the class numeric name
	*----------------------------------------
	*/
	public function validate_numericname()
	{
		$numericName = $this->input->post('numericName');
		$sql = "SELECT * FROM class WHERE numeric_name = ?";
		$query = $this->db->query($sql, array($numericName));

		return ($query->num_rows() == 1 ? true : false);
	}

	/*
	*-----------------------------------------
	* fetch class data
	*----------------------------------------
	*/

	public function fetchClassData($classId = null)
	{
		if ($classId) {
			$sql = "SELECT * FROM class WHERE class_id = ?";
			// $sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ?";
			$query = $this->db->query($sql, array($classId));
			return $query->row_array();
		} else {
			$this->db->select('c.class_id,c.class_name,c.numeric_name,s.section_name');
			$this->db->from('class c');
			$this->db->join('section s', 's.section_id = c.section_id');
			$query = $this->db->get();
			return $query->result_array();
		}
	}

	public function fetchSectiondataByID($section_id = null)
	{
		if ($section_id) {
			$sql = "SELECT * FROM section WHERE section_id = ?";
			$query = $this->db->query($sql, array($section_id));
			return $query->result_array();
		}
	}


	public function DataClass($classId = null, $valor = null)
	{

		if ($classId && $valor == null) {
			$this->db->from('class c');
			//$this->db->join('section s', 's.section_id = c.section_id');
			$this->db->where('c.section_id', $classId);
			$query = $this->db->get()->result_array();
			return $query;
		} else if ($classId > 0 && $valor == 1) {
			$this->db->select('c.class_id,c.class_name,c.numeric_name,c.section_id,s.section_name,c.fecha_inicio,c.fecha_fin,c.hora_inicio,c.hora_fin,c.lunes,c.martes,c.miercoles,c.jueves,c.viernes,c.sabado');
			$this->db->from('class c');
			$this->db->join('section s', 's.section_id = c.section_id');
			$this->db->where('c.class_id', $classId);
			$query = $this->db->get()->row_array();
			return $query;
		} else {
			$this->db->select('c.class_name,c.numeric_name,s.section_name');
			$this->db->from('class c');
			$this->db->join('section s', 's.section_id = c.section_id');
			$query = $this->db->get()->result_array();
			return $query();
		}
	}


	/*
	*-----------------------------------------
	* validate the class name
	*----------------------------------------
	*/
	public function validate_editclassname()
	{
		$className = $this->input->post('editClassName');
		$classId = $this->input->post('classId');
		$sql = "SELECT * FROM class WHERE class_name = ? AND class_id != ?";
		$query = $this->db->query($sql, array($className, $classId));

		return ($query->num_rows() == 1 ? true : false);
	}

	/*
	*-----------------------------------------
	* validate the class numeric name
	*----------------------------------------
	*/
	public function validate_editnumericname()
	{
		$numericName = $this->input->post('editNumericName');
		$classId = $this->input->post('classId');
		$sql = "SELECT * FROM class WHERE numeric_name = ? AND class_id != ?";
		$query = $this->db->query($sql, array($numericName, $classId));

		return ($query->num_rows() == 1 ? true : false);
	}


	/*
	*-----------------------------------------
	* update the class information
	*----------------------------------------
	*/
	public function update()
	{
		$update_data = array(
			'class_name' => $this->input->post('editClassName'),
			'numeric_name' => $this->input->post('editNumericName'),
			'section_id' => $this->input->post('editsectionname'),
			'fecha_inicio' => $this->input->post('editFI'),
			'fecha_fin' => $this->input->post('editFF'),
			'hora_inicio' => $this->input->post('editHI'),
			'hora_fin' => $this->input->post('editHF'),
			'lunes' => $this->input->post('editL') ? $this->input->post('editL') : 0,
			'martes' => $this->input->post('editM') ? $this->input->post('editM') : 0,
			'miercoles' => $this->input->post('editMI') ? $this->input->post('editMI') : 0,
			'jueves' => $this->input->post('editJ') ? $this->input->post('editJ') : 0,
			'viernes' => $this->input->post('editV') ? $this->input->post('editV') : 0,
			'sabado' => $this->input->post('editS') ? $this->input->post('editS') : 0
		);


		$this->db->where('class_id', $this->input->post('classId'));
		$query = $this->db->update('class', $update_data);
		return ($query === true ? true : false);
	}

	/*
	*----------------------------------------
	* remove the class information
	*----------------------------------------
	*/
	public function remove($classId = null)
	{
		if ($classId) {
			$this->db->where('class_id', $classId);
			$result = $this->db->delete('class');
			return ($result === true ? true : false);
		}
	}

	/*
	*------------------------------------
	* count total classes information 
	*------------------------------------
	*/
	public function countTotalClass()
	{
		$sql = "SELECT * FROM class";
		$query = $this->db->query($sql);
		return $query->num_rows();
	}

	public function validad_fechas($lunes, $martes, $miercoles, $jueves, $viernes, $sabado, $fecha_inicio, $fecha_fin, $hora_inicio, $hora_fin){

		$this->db->from('class');
		$this->db->where('fecha_inicio', $this->input->post('FI'));
		$this->db->where('fecha_fin', $this->input->post('FF'));
		$this->db->where('hora_inicio', $this->input->post('HI'));
		$this->db->where('hora_fin', $this->input->post('HF'));

		if($lunes == 1){
			$this->db->where('lunes', $this->input->post('L'));
		}
		if($martes == 1){
			$this->db->where('martes', $this->input->post('M'));
		}
		if($miercoles == 1){
			$this->db->where('miercoles', $this->input->post('MI'));
		}
		if($jueves == 1){
			$this->db->where('jueves', $this->input->post('J'));
		}
		if($viernes == 1){
			$this->db->where('viernes', $this->input->post('V'));
		}
		if($sabado == 1){
			$this->db->where('sabado', $this->input->post('S'));
		}


		$query = $this->db->get();
		return $query->num_rows();

	}


	private function obtener_clases($section_id, $fecha_inicio, $fecha_fin) {

        $this->db->where('section_id', $section_id);
        $this->db->where('fecha_fin >=', $fecha_inicio);
        $this->db->where('fecha_inicio <=', $fecha_fin);
        $query = $this->db->get('class');
        return $query->result_array();
    }

	// private function clasesSolapadas($claseNueva,$clasesExistentes){
		
	// 	// print_r($clasesExistentes); die();
	// 	$dias_nuevas = $this->extraer_dias_activos($clasesExistentes);
		
	// 	foreach($clasesExistentes as $clase => $value){
	// 		print_r($clasesExistentes); die();
	// 		$diasClase = explode(',', $clase['dias']);
	// 		$dias_nuevas = explode(',', $claseNueva['dias']);
		
	// 		if(array_intersect($diasClase, $dias_nuevas)){
	// 			if (!($claseNueva['hora_fin'] <= $clase['hora_inicio'] || $claseNueva['hora_inicio'] >= $clase['hora_fin'])) {
	// 				return true; 
	// 			}
	// 		}
	// 	}
	// 	return false; 
	// }

	private function clasesSolapadas($claseNuevaArray, $clasesExistentes) {
		// Asumiendo que $claseNuevaArray contiene un solo elemento que es la nueva clase
		$claseNueva = $claseNuevaArray[0];
	
		// Obtener los días activos de la nueva clase
		$dias_nuevas = $this->extraer_dias_activos($claseNueva);
	
		// Iterar sobre las clases existentes
		foreach ($clasesExistentes as $clase) {
			// Obtener los días activos de la clase existente
			$diasClase = $this->extraer_dias_activos($clase);
	
			// Verificar intersección de días
			if (array_intersect($diasClase, $dias_nuevas)) {
				// Verificar solapamiento de horarios
				if (!($claseNueva['hora_fin'] <= $clase['hora_inicio'] || $claseNueva['hora_inicio'] >= $clase['hora_fin'])) {
					return true; // Hay solapamiento
				}
			}
		}
	
		return false; // No hay solapamiento
	}
	


	private function extraer_dias_activos($clase) {
		$dias_activos = [];
		$dias_semana = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado'];
	
		foreach ($dias_semana as $dia) {
			if (isset($clase[$dia]) && $clase[$dia] == 1) {
				$dias_activos[] = $dia;
			}
		}
	
		return $dias_activos;
	}
	
	// private function extraer_dias_activos($clase) {
	// 	// print_r($clase); die();
    //      $dias_activos = [];
   	// 	 $dias_semana = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado'];
    // 	foreach ($dias_semana as $key => $dia) {
	// 		if (isset($clase[$key][$dia]) && $clase[$key][$dia] == 1) {
	// 			$dias_activos[] = $dia;
	// 			// print_r($dias_activos); die();
    //     	}
    // 	}
    // 	return $dias_activos;
    // }
}