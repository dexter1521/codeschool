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
			'student_id' => $lastID,
			'class_id' => $this->input->post('className'),
			'section_id' => $this->input->post('sectionName'),
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
			$this->db->select('ssc.student_id, s.fname,c.class_name,sc.section_name');
			$this->db->join('student s' , 's.student_id = ssc.student_id');
			$this->db->join('class c' , 'c.class_id = ssc.class_id');
			$this->db->join('section sc' , 'ssc.section_id = sc.section_id');
			$this->db->from('student_section_class ssc');
			$this->db->where('ssc.class_id', $classId);
			$query = $this->db->get();
			return $query->result_array();			
		}
	}

	public function fetchAllStudents(){
		$this->db->from('student ssc');
		$query = $this->db->get();
		return $query->result_array();			
	
	}

	public function checkStudent($studentId = null){

		if($studentId) {
			$this->db->where('student_id', $studentId);
			$query = $this->db->get('student');
			return $query->row_array();			
		}

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


	public function fetchStudents($limit, $start, $order_column, $order_dir, $search_value) {
        $this->db->from('student ssc');

        if (!empty($search_value)) {
            $this->db->like('ssc.nombre', $search_value);
            // Agrega más columnas aquí si es necesario para la búsqueda
        }

        $this->db->order_by($order_column, $order_dir);
        $this->db->limit($limit, $start);

        $query = $this->db->get();
        return $query->result_array();
    }

    public function countAllStudents() {
        $this->db->from('student ssc');
        return $this->db->count_all_results();
    }

    public function countFilteredStudents($search_value) {
        $this->db->from('student ssc');
        if (!empty($search_value)) {
            $this->db->like('ssc.nombre', $search_value);
            // Agrega más columnas aquí si es necesario para la búsqueda
        }
        return $this->db->count_all_results();
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

	public function fetchStudentDataByClass1($classId = null)
	{
		// print_r('hola desde el modelo'); die();
		if($classId) {
			$this->db->select('ssc.student_id, s.fname,c.class_name,sc.section_name,ssc.section_id,ssc.class_id');
			$this->db->join('student s' , 's.student_id = ssc.student_id');
			$this->db->join('class c' , 'c.class_id = ssc.class_id');
			$this->db->join('section sc' , 'ssc.section_id = sc.section_id');
			$this->db->from('student_section_class ssc');
			$this->db->where('ssc.class_id', $classId);
			$query = $this->db->get();
			return $query->result_array();			
		}

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
				
				'fname'			=> $this->input->post('editFname'),
				'contact'		=> $this->input->post('editContact'),
				'email'			=> $this->input->post('editEmail'),
				'id_assignment'=> $this->input->post('editAA'),
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
