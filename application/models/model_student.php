<?php 

class Model_Student extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
	}

	/*
	*------------------------------------
	* inserts the student's information
	* into the database 
	*------------------------------------
	*/
	public function create($img_url)
	{
		if($img_url == '') {
			$img_url = 'assets/images/default/default_avatar.png';
		} 

		$insert_data = array(
			'no_empleado' => $this->input->post('nempelado'),
			// 'class_id' 		=> $this->input->post('className'),
			'fname'			=> $this->input->post('fname'),
			'image'			=> $img_url,
			'contact'		=> $this->input->post('contact'),
			'email'			=> $this->input->post('email'),
			'id_assignment'=> $this->input->post('adscriptionName'),
		);

		$status = $this->db->insert('student', $insert_data);	
		$lastID= $this->db->insert_id();
		$insertRelacional = array(
			'id_student' => $lastID,
			'classID' => $this->input->post('className'),
			'sectionID' => $this->input->post('sectionName'),
		);
		
		$relacional = $this->db->insert('student_section_class', $insertRelacional);
		// var_dump($insert_data); die();

		return ($status == true ? true : false);
	}

	/*
	*-----------------------------------
	* fetches the student inform
	*-----------------------------------
	*/
	public function fetchStudentData($studentId = null)
	{
		if($studentId) {
			// $sql = "SELECT * FROM class WHERE class_id = ?";
			$sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ?";
			$query = $this->db->query($sql, array($studentId));
			return $query->row_array();
		} 
		else {
			$sql = "SELECT * FROM cat_assignment_area";
			$query = $this->db->query($sql);
			return $query->result_array();
		}	
	}

	public function fetchStudentData1($classId = null)
	{
		if($classId) {
			$this->db->select('scc.student_id, s.fname,c.class_name');
			$this->db->join('student s' , 's.student_id = scc.student_id');
			$this->db->join('class c' , 'c.class_id = scc.class_id');
			$this->db->from('student_section_class ssc');
			$this->db->where('scc.class_id', $classId);
			$query = $this->db->get();
			return $query->result_array();			

		}


		$this->db->select('d.id, d.demanda, d.fecha_resolucion,');
        $this->db->select('cd.nombre_distrito AS distrito,');
        $this->db->select('cm.descripcion AS materia,');
        $this->db->select('cj.nombre_juzgado AS juzgado,');
        $this->db->select('ctp.nombre_juicio AS tipo_juicio,');
        $this->db->select('ce.descripcion AS estatus,');
        $this->db->from('demanda d');
        $this->db->join('cat_distritos cd', 'cd.id_distrito = d.id');
        $this->db->join('cat_materia cm', 'cm.id = d.id_materia');
        $this->db->join('cat_juzgados cj', 'cj.id_juzgado = d.id_juzgado');
        $this->db->join('cat_tipodejuicio ctp', 'ctp.id_tipodejuicio = d.id_juicio');
        $this->db->join('cat_estatus ce', 'ce.id_estatus = d.id_estatus');
        $this->db->where('d.activo', 1); // Filtra por registros con activo igual a 1
        $rstQuery = $this->db->get();
        return $rstQuery->result_array();


	}


	

	public function fetchClassData($classId = null)
	{
		if($classId) {
			$sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ?";
			// $sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ?";
			$query = $this->db->query($sql, array($classId));
			return $query->row_array();
		} 
		else {
			$sql = "SELECT * FROM cat_assignment_area";
			$query = $this->db->query($sql);
			return $query->result_array();
		}
	}

	/*
	*--------------------------------------------------
	*fetches the student information via class id 
	*--------------------------------------------------
	*/
	public function fetchStudentDataByClass($classId = null)
	{
		if($classId) {
			$sql = "SELECT * FROM student WHERE class_id = ?";
			$query = $this->db->query($sql, array($classId));
			return $query->result_array();
		} // /if
	} 

	/*
	*--------------------------------------------------
	* fetches the student infro via class and section id
	*--------------------------------------------------
	*/
	public function fetchStudentByClassAndSection($classId = null, $sectionId = null)
	{
		if($classId && $sectionId) {
			// $sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ? AND section_id = ?";
			$sql = "SELECT * FROM cat_assignment_area WHERE id_assignment = ?";
			$query = $this->db->query($sql, array($classId, $sectionId));
			return $query->result_array();
		} // /if
	}

	/*
	*-----------------------------------
	* update the student's inform
	*-----------------------------------
	*/	
	public function updateInfo($studentId = null)
	{
		if($studentId) {
			$update_data = array(
				'register_date' => $this->input->post('editRegisterDate'),
				'class_id' 		=> $this->input->post('editClassName'),
				// 'section_id'	=> $this->input->post('editSectionName'),
				'fname'			=> $this->input->post('editFname'),
				// 'lname' 		=> $this->input->post('editLname'),				
				// 'age'			=> $this->input->post('editAge'),
				// 'dob'			=> $this->input->post('editDob'),
				'contact'		=> $this->input->post('editContact'),
				'email'			=> $this->input->post('editEmail'),
				'address'		=> $this->input->post('editAddress'),
				'city'			=> $this->input->post('editCity'),
				'country'   	=> $this->input->post('editCountry')
			);

			$this->db->where('student_id', $studentId);
			$query = $this->db->update('student', $update_data);
			
			return ($query === true ? true : false);
		}			
	}

	/*
	*-----------------------------------
	* update the student's photo
	*-----------------------------------
	*/
	public function updatePhoto($studentId = null, $imageUrl = null)
	{
		if($studentId && $imageUrl) {
			$update_data = array(
				'image' 	=> $imageUrl
			);

			$this->db->where('student_id', $studentId);
			$query = $this->db->update('student', $update_data);
			
			return ($query === true ? true : false);
		}			
	}

	/*
	*-----------------------------------
	* remove the student's info
	*-----------------------------------
	*/
	public function remove($studentId = null) 
	{
		if($studentId) {
			$this->db->where('student_id', $studentId);
			$result = $this->db->delete('student');
			return ($result === true ? true: false); 
		} // /if
	}

	/*
	*-----------------------------------
	* insert bulk student
	*-----------------------------------
	*/
	public function createBulk()
	{				
		for($x = 1; $x <= count($this->input->post('bulkstfname')); $x++) {						
			$insert_data = array(				
				'class_id' 		=> $this->input->post('bulkstclassName')[$x],
				'section_id'	=> $this->input->post('bulkstsectionName')[$x],
				'image'			=> 'assets/images/default/default_avatar.png',
				'fname'			=> $this->input->post('bulkstfname')[$x],
				'lname' 		=> $this->input->post('bulkstlname')[$x]			
			);

			$status = $this->db->insert('student', $insert_data);						
		} // /for

		return ($status == true ? true : false);	
	}

	/*
	*-------------------------------------------
	* count total student
	*-------------------------------------------
	*/
	public function countTotalStudent()
	{
		$sql = "SELECT * FROM student";
		$query = $this->db->query($sql);
		return $query->num_rows();
	}


	public function insert_csv($file_path) {
        $handle = fopen($file_path, "r");
        if ($handle !== FALSE) {
            $header = fgetcsv($handle, 1000, ",");
            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                $csv_data = array(
                    'no_empleado' => $data[0],
                    'class_id' => $data[1],
                    'fname' => $data[2],
					'contact' => $data[3],
					'email' => $data[4],
					
					
                    // Agrega más columnas según tu necesidad
                );
                $this->db->insert('student', $csv_data);
            }
            fclose($handle);
            return TRUE;
        } else {
            return FALSE;
        }
    }

	public function createStudend($data)
	{
		$status = $this->db->insert('student', $data);		
		return ($status == true ? true : false);
	}

	public function idAssinment($idAssingment){
		$this->db->select('id_assignment');
		$this->db->where('assignment_area', $idAssingment);
		$query = $this->db->get('cat_assignment_area');
		if ($query->num_rows() > 0) {
            return $query->row()->id_assignment;
        } else {
            // Si no se encuentra ningún resultado, retorna null
            return null;
        }
	}

	public function createAssigment($data)
	{
		$status = $this->db->insert('cat_assignment_area', $data);
		$idAssingment = $this->db->insert_id();
		$status == true ? true : false;
		return array(
			'status' => $status,
			'idAssingment' => $idAssingment
		);

	}
}
