<?php 

class Asistencia extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->isNotLoggedIn();
		$this->load->model('model_asistencia');
		$this->load->library('form_validation');	
	}

	/*
	*-----------------------------------------
	* validates the class name field and 
	* insert the class info into the database
	* by calling the create function of the  
	* the model_users class
	*-----------------------------------------
	*/
	public function create()
	{

		$existStudent = $this->model_asistencia->existStudent();
		// print_r($existStudent); die();

		if($existStudent == true){
			//insertamos la asistencia
			$asistencia= $this->input->post('code');
			$validator = array('success' => false, 'messages' => array());
			$validate_data = array(
				array(
					'field' => 'code',
					'label' => 'code',
					'rules' => 'required'
					// 'rules' => 'required|is_unique[aistencias.no_empleado]'
				)
			);
			$this->form_validation->set_rules($validate_data);
			$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');
			if($this->form_validation->run() === true) {
				$create = $this->model_asistencia->create_asistencia();	
				if($create === true) {
					$validator['success'] = true;
					$validator['messages'] = "Exito al registrar";
				}
				else {
					$validator['success'] = false;
					$validator['messages'] = "Error insertando en la base de datos";
				}			
			} 	
			else {
				$validator['success'] = false;
				foreach ($_POST as $key => $value) {
					$validator['messages'][$key] = form_error($key);
				}			
			} // /else
	

		}else{
			$validator['success'] = false;
			$validator['messages'] = "No se encuentro el numero de empleado";
			echo json_encode($validator);
				return;
		}
	
    
		echo json_encode($validator);
	}

	/*
	*-----------------------------------------
	* validates the class name 
	* checks the class name value 
	* from the validate_classname function in 
	* the model_users class
	*-----------------------------------------
	*/
	public function validate_classname()
	{
		$validate = $this->model_classes->validate_classname();

		if($validate === true) {
			$this->form_validation->set_message('validate_classname', 'El {field} ya existe');
			return false;						
		}
		else {
			return true;
		}
	}

	/*
	*-----------------------------------------
	* validates the class numeric  
	* checks the class numeric value 
	* from the validate_numericname function in 
	* the model_users class
	*----------------------------------------
	*/

	
	public function validate_numericname()
	{
		$validate = $this->model_classes->validate_numericname();

		if($validate === true) {
			$this->form_validation->set_message('validate_numericname', 'The {field} already exists');
			return false;			
		}
		else {
			return true;
		}
	}

	/*
	*------------------------------------
	* retrieve class name 
	*------------------------------------
	*/
	public function fetchClassSection($classId = null)
	{
		if($classId) {
			$sectionData = $this->model_section->fetchSectionDataByClass($classId);
			if($sectionData) {
				foreach ($sectionData as $key => $value) {
					$option .= '<option value="'.$value['section_id'].'">'.$value['section_name'].'</option>';
				} // /foreach
			}
			else {
				$option = '<option value="">No Data</option>';
			} // /else empty section

			echo $option;
			
		} // /if
	}

	public function fetchStudentByClass($classId = null) {
		if($classId) {
			$result = array('data' => array());
			$studentData = $this->model_student->fetchStudentDataByClass($classId);
			foreach ($studentData as $key => $value) {
				$img = '<img src="'.base_url() . $value['image'].'" class="img-circle candidate-photo" alt="Student Image" />';

				$classData = $this->model_classes->fetchClassData($value['class_id']);
				$sectionData = $this->model_section->fetchSectionByClassSection($value['class_id'], $value['section_id']);

				$button = '<div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    Action <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">			  	
				    <li><a href="#" data-toggle="modal" data-target="#editStudentModal" onclick="updateStudent('.$value['student_id'].')">Edit</a></li>
				    <li><a href="#" data-toggle="modal" data-target="#removeStudentModal" onclick="removeStudent('.$value['student_id'].')">Remove</a></li>			    
				  </ul>
				</div>';

				$result['data'][$key] = array(
					$img,
					$value['fname'] . ' ' . $value['lname'],
					$classData['class_name'],
					$sectionData['section_name'],
					$button
				);
			} // /foreach	
			echo json_encode($result);
		}
	}

	/*
	*------------------------------------
	* edit class information 
	*------------------------------------
	*/
	public function update($classId = null) 
	{
		if($classId) {
			$validator = array('success' => false, 'messages' => array());

			$validate_data = array(
				array(
					'field' => 'editClassName',
					'label' => 'Class Name',
					'rules' => 'required|callback_validate_editclassname'
				),
				array(
					'field' => 'editNumericName',
					'label' => 'Numeric Name',
					'rules' => 'required|callback_validate_editnumericname'
				)
			);

			$this->form_validation->set_rules($validate_data);
			$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

			if($this->form_validation->run() === true) {	
				$update = $this->model_classes->update();					
				if($update == true) {
					$validator['success'] = true;
					$validator['messages'] = "Registro Exitoso!";
				}
				else {
					$validator['success'] = false;
					$validator['messages'] = "Error mientras se insertaba la información";
				}			
			} 	
			else {
				$validator['success'] = false;
				foreach ($_POST as $key => $value) {
					$validator['messages'][$key] = form_error($key);
				}			
			} // /else

			echo json_encode($validator);
		}
	}

	/*
	*-----------------------------------------
	* validates the class name 
	* checks the class name which is not 
	* equal to class_id
	*-----------------------------------------
	*/
	public function validate_editclassname()
	{
		$validate = $this->model_classes->validate_editclassname();

		if($validate === true) {
			$this->form_validation->set_message('validate_editclassname', 'The {field} already exists');
			return false;						
		}
		else {
			return true;
		}
	}

	/*
	*-----------------------------------------
	* validates the class numeric  
	* checks the class numeric value
	* which is not equal to class_id
	*----------------------------------------
	*/
	public function validate_editnumericname()
	{
		$validate = $this->model_classes->validate_editnumericname();

		if($validate === true) {
			$this->form_validation->set_message('validate_editnumericname', 'The {field} already exists');
			return false;			
		}
		else {
			return true;
		}
	}

	/*
	*----------------------------------------
	* remove the class information from 
	* the database
	*----------------------------------------
	*/
	public function remove($classId = null)
	{
		if($classId) {
			$remove = $this->model_classes->remove($classId);
			if($remove === true) {
				$validator['success'] = true;
				$validator['messages'] = "Eliminado Correctamente!";
			} 
			else{
				$validator['success'] = false;
				$validator['messages'] = "Error mientras se eliminaba the information";
			}
			echo json_encode($validator);
		}
	}
	
	public function getClassSectionTab($classId = null)
	{
		if($classId) {
			$sectionData = $this->model_section->fetchSectionDataByClass($classId);	
			$classData = $this->model_classes->fetchClassData($classId);									
			$tab = array();			
			$tab['sectionData'] = $sectionData;			

			$tab['html'] = '<!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#classStudent" aria-controls="classStudent" role="tab" data-toggle="tab">All Student</a></li>              
            ';            	
            	$x = 1;
            	foreach ($sectionData as $key => $value) {            	
					$tab['html'] .= '<li role="presentation"><a href="#countSection'.$x.'" aria-controls="countSection" role="tab" data-toggle="tab"> Section ('.$value['section_name'].')</a></li>';
					$x++;
				} // /foreach              
            $tab['html'] .= '</ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane active" id="classStudent">
              	
              	<br /> <br />

                <table class="table table-bordered" id="manageStudentTable">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Name</th>
                      <th>Class</th>
                      <th>Section</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                </table>  

              </div>'; 
              	$x = 1;
				foreach ($sectionData as $key => $value) {
					$tab['html'] .= '<div role="tabpanel" class="tab-pane" id="countSection'.$x.'">
						<br /> 
						<div class="well well-sm">
							Class : '.$classData['class_name'].' <br /> 
							Section : '.$value['section_name'].'							
						</div>

						<table class="table table-bordered classSectionStudentTable" id="manageStudentTable'.$x.'" style="width:100%;">
		                  <thead>
		                    <tr>
		                      <th>#</th>
		                      <th>Name</th>
		                      <th>Class</th>
		                      <th>Section</th>
		                      <th>Action</th>
		                    </tr>
		                  </thead>
		                </table>  

		             </div>';
		             $x++;
				} // /foreach                                     
              
              $tab['html'] .= '              
            </div>';

            echo json_encode($tab);
            // echo $tab;
		}
	}

	

}