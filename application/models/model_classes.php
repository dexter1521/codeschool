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
			'section_id'=> $this->input->post('addsectionname'),
			'fecha_inicio' => $this->input->post('FI'),
			'fecha_fin' => $this->input->post('FF'),
			'hora_inicio' => $this->input->post('HI'),
			'hora_fin' => $this->input->post('HF'),
			'lunes'=> $this->input->post('L')? $this->input->post('L') : 0,
			'martes'=> $this->input->post('M') ? $this->input->post('M') : 0,
			'miercoles'=> $this->input->post('MI')? $this->input->post('MI') : 0,
			'jueves'=> $this->input->post('J')? $this->input->post('J') : 0,
			'viernes'=> $this->input->post('V')? $this->input->post('V') : 0,
			'sabado'=> $this->input->post('S')? $this->input->post('S') : 0
		);
		$status = $this->db->insert('class', $insert_data);		
		return ($status === true ? true : false);
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
		if($classId) {
			$sql = "SELECT * FROM class WHERE class_id = ?";
			// $sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ?";
			$query = $this->db->query($sql, array($classId));
			return $query->row_array();
		} 
		else {
			$this->db->select('c.class_id,c.class_name,c.numeric_name,s.section_name');
			$this->db->from('class c');
			$this->db->join('section s', 's.section_id = c.section_id');
			$query = $this->db->get();
			return $query->result_array();
		}
	}

	public function fetchSectiondataByID($section_id = null){
		if($section_id) {
			$sql = "SELECT * FROM section WHERE section_id = ?";
			$query = $this->db->query($sql, array($section_id));
			return $query->result_array();
		}

	}


	public function DataClass($classId = null){
		if($classId) {
	
			$this->db->from('class c');
			$this->db->join('section s', 's.section_id = c.section_id');
			$this->db->where('s.section_id',$classId);
			$query = $this->db->get()->row_array();
			return $query;
		} 
		else {
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
			'numeric_name' => $this->input->post('editNumericName')
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
		if($classId) {
			$this->db->where('class_id', $classId);
			$result = $this->db->delete('class');
			return ($result === true ? true: false); 
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

}