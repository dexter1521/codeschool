<?php 

class Classes extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->isNotLoggedIn();

		// loading the classes model
		$this->load->model('model_classes');		

		// loading the form validation library
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
		$validator = array('success' => false, 'messages' => array());

		$validate_data = array(
			array(
				'field' => 'className',
				'label' => 'Class Name',
				'rules' => 'required|callback_validate_classname'
			),
			array(
				'field' => 'numericName',
				'label' => 'Numeric Name',
				'rules' => 'required|callback_validate_numericname'
			)
		);

		$this->form_validation->set_rules($validate_data);
		$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

		if($this->form_validation->run() === true) {	
			$create = $this->model_classes->create();					
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
	public function fetchClassData($sectionID = null, $classId = null)
	{

		// $classData = $this->model_classes->DataClass($sectionID);
		// 	echo json_encode($classData);

		if($sectionID) {
			$classData = $this->model_classes->DataClass($sectionID);
			echo json_encode($classData);
		}else if ($classId){
			$classData = $this->model_classes->DataClass($classId);
			echo json_encode($classData);
		}
		else {
			$classData = $this->model_classes->fetchClassData();
			$result = array('data' => array());
			$x = 1;
			foreach ($classData as $key => $value) {

				$button = '<!-- Single button -->
				<div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    Accion <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">
				    <li><a type="button" data-toggle="modal" data-target="#editClassModal" onclick="editClass('.$value['class_id'].')"> <i class="glyphicon glyphicon-edit"></i> Editar</a></li>
				    <li><a type="button" data-toggle="modal" data-target="#removeClassModal" onclick="removeClass('.$value['class_id'].')"> <i class="glyphicon glyphicon-trash"></i> Eliminar</a></li>		    
				  </ul>
				</div>';

				$result['data'][$key] = array(
					$x,
					$value['class_name'],
					$value['numeric_name'],
					$value['section_name'],
					$button
				);
				$x++;
			} // /froeach

			echo json_encode($result);
		} // /else		
	}

	// public function check

	public function fecthClassbySection( $sectionID = null){
		if($sectionID) {
			$classData = $this->model_classes->DataClass($sectionID);
			$sectionData = $this->model_classes->fetchSectiondataByID($sectionID);
			 var_dump($classData);die();
			// $sectionData = $this->model_section->fetchSectionDataByClass($classId);
			// $classData = $this->model_classes->fetchClassData($classId);
			
			$table = '

			<div class="well">
				Nombre de la Sede : '.$sectionData[0]['section_name'].'
			</div>

			<div id="messages"></div>

		  		
		  	<br /> <br />

		  	<!-- Table -->
		  	<table class="table table-bordered" id="manageSectionTable">
			    <thead>	
			    	<tr>
			    		<th>#</th>
                                    <th>Nombre de clase</th>
                                    <th>Nombre numerico</th>
                                    <th>Sede</th>
                                    <th>Accion</th>
			    	</tr>
			    </thead>
			    <tbody>';
			    	if($classData) {

			    		foreach ($classData as $key => $value) {

			    			// $teacherData = $this->model_teacher->fetchTeacherData($value['teacher_id']);
							$x=1;
			    			$button = '<div class="btn-group">
							  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    Accion <span class="caret"></span>
							  </button>
							  <ul class="dropdown-menu">
							    <li><a type="button" data-toggle="modal" data-target="#editSectionModal" onclick="editSection('.$value['class_id'].','.$value['class_id'].')"> <i class="glyphicon glyphicon-edit"></i> Editar</a></li>
							    <li><a type="button" data-toggle="modal" data-target="#removeSectionModal" onclick="removeSection('.$value['class_id'].','.$value['class_id'].')"> <i class="glyphicon glyphicon-trash"></i> Eliminar</a></li>		    
							  </ul>
							</div>';

				    		$table .= '<tr>
								<td>'.$x.'</td>
				    			<td>'.$value['class_name'].'</td>
				    			<td>'.$value['numeric_name'].'</td>
								<td>'.$value['section_name'].'</td>
				    			<td>'.$button.'</td>
				    		</tr>
				    		';
							$x++;
				    	} // /foreach				    	
			    	} 
			    	else {
			    		$table .= '<tr>
			    			<td colspan="3"><center>No Data Available</center></td>
			    		</tr>';
			    	} // /else
			    $table .= '</tbody>
			</table>
			';
			echo $table;
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

}