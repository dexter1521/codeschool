<?php 	

class Section extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->isNotLoggedIn();

		// loading the section model
		$this->load->model('model_section');
		// loading the classes model
		$this->load->model('model_classes');
		// loading the teacher model
		$this->load->model('model_teacher');

		// loading the form validation library
		$this->load->library('form_validation');		
	}

	/*
	*----------------------------------------------
	* fetches the class's section table 
	*----------------------------------------------
	*/
	public function fetchSectionTable($classId = null)
	{
		if($classId) {
			$sectionData = $this->model_section->fetchSectionDataByClass($classId);
			$classData = $this->model_classes->fetchClassData($classId);
			
			$table = '

			<div class="well">
				Nombre de la clase : '.$classData['class_name'].'
			</div>

			<div id="messages"></div>

			<div class="pull pull-right">
	  			<button class="btn btn-default" data-toggle="modal" data-target="#addSectionModal" onclick="addSection('.$classId.')">Agregar seccion</button>	
		  	</div>
		  		
		  	<br /> <br />

		  	<!-- Table -->
		  	<table class="table table-bordered" id="manageSectionTable">
			    <thead>	
			    	<tr>
			    		<th> Nombre de la seccion </th>
			    		<th> Acciones </th>
			    	</tr>
			    </thead>
			    <tbody>';
			    	if($sectionData) {
			    		foreach ($sectionData as $key => $value) {

			    			$teacherData = $this->model_teacher->fetchTeacherData($value['teacher_id']);

			    			$button = '<div class="btn-group">
							  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    Accion <span class="caret"></span>
							  </button>
							  <ul class="dropdown-menu">
							    <li><a type="button" data-toggle="modal" data-target="#editSectionModal" onclick="editSection('.$value['section_id'].','.$value['class_id'].')"> <i class="glyphicon glyphicon-edit"></i> Editar</a></li>
							    <li><a type="button" data-toggle="modal" data-target="#removeSectionModal" onclick="removeSection('.$value['section_id'].','.$value['class_id'].')"> <i class="glyphicon glyphicon-trash"></i> Eliminar</a></li>		    
							  </ul>
							</div>';

				    		$table .= '<tr>
				    			<td>'.$value['section_name'].'</td>
				    			<td>'.$button.'</td>
				    		</tr>
				    		';
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
	*----------------------------------------------
	* fetches the class's section information
	* through class_id and section_id 
	*----------------------------------------------
	*/
	public function fetchSectionByClassSection($sectionId = null)
	{
		if($sectionId) {
			$sectionData = $this->model_section->fetchSectionByClassSection($sectionId);		
			
			echo json_encode($sectionData);
		} // /if
 	}


	/*
	*----------------------------------------------
	* create the section  
	*----------------------------------------------
	*/
	public function create($classId = null) 
	{
		$validator = array('success' => false, 'messages' => array());

		$validate_data = array(
			array(
				'field' => 'sectionName',
				'label' => 'nombre de la seccion',
				'rules' => 'required|trim'
			)
			/* ,array(
				'field' => 'teacherName',
				'label' => 'Teacher Name',
				'rules' => 'required'
			) */
		);

		$this->form_validation->set_rules($validate_data);
		$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

		if($this->form_validation->run() === true) {							
			$create = $this->model_section->create($classId);					
			if($create == true) {
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

	/*
	*----------------------------------------------
	* update the section  
	*----------------------------------------------
	*/
	public function update($sectionId = null)
	{
		if($sectionId) {
		$validator = array('success' => false, 'messages' => array());

		$validate_data = array(
			array(
				'field' => 'editSectionName',
				'label' => 'Section Name',
				'rules' => 'required'
			),
			/* rray(
				'field' => 'editTeacherName',
				'label' => 'Teacher Name',
				'rules' => 'required'
			) */
		);

		$this->form_validation->set_rules($validate_data);
		$this->form_validation->set_error_delimiters('<p class="text-danger">','</p>');

		if($this->form_validation->run() === true) {							
			$update = $this->model_section->update($sectionId);					
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
	*----------------------------------------------
	* update the manage table function
	*----------------------------------------------
	*/
	public function fetchUpdateSectionTable($classId = null)
	{
		if($classId) {
			$sectionData = $this->model_section->fetchSectionDataByClass($classId);
			$table = '<thead>	
			    	<tr>
			    		<th> Section Name </th>
			    		<th> Action </th>
			    	</tr>
			    </thead>
			    <tbody>';
			    	if($sectionData) {
			    		foreach ($sectionData as $key => $value) {

			    			// $teacherData = $this->model_teacher->fetchTeacherData($value['teacher_id']);

			    			$button = '<div class="btn-group">
							  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    Action <span class="caret"></span>
							  </button>
							  <ul class="dropdown-menu">
							    <li><a type="button" data-toggle="modal" data-target="#editSectionModal" onclick="editSection('.$value['section_id'].','.$value['class_id'].')"> <i class="glyphicon glyphicon-edit"></i> editar</a></li>
							    <li><a type="button" data-toggle="modal" data-target="#removeSectionModal" onclick="removeSection('.$value['section_id'].','.$value['class_id'].')"> <i class="glyphicon glyphicon-trash"></i> eliminar</a></li>		    
							  </ul>
							</div>';

				    		$table .= '<tr>
				    			<td>'.$value['section_name'].'</td>
				    			<td>'.$button.'</td>
				    		</tr>
				    		';
				    	} // /foreach				    	
			    	} 
			    	else {
			    		$table .= '<tr>
			    			<td colspan="3"><center>No Data Available</center></td>
			    		</tr>';
			    	} // /else
			    $table .= '</tbody>';
			    echo $table;					
		} // /if
	}


	public function ListSection(){

			$sectionData = $this->model_section->fetchSectionData();
			$result = array('data' => array());
			$x = 1;
			foreach ($sectionData as $key => $value) {

				$button = '<!-- Single button -->
				<div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    Accion <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">
				    <li><a type="button" class="btn btn-warning" data-toggle="modal" data-target="#editSectionModal" onclick="editSection('.$value['section_id'].')"> <i class="glyphicon glyphicon-edit"></i> Editar</a></li>
				    <li><a type="button" class="btn btn-danger" data-toggle="modal" data-target="#removeSectionModal" onclick="removeSection('.$value['section_id'].')"> <i class="glyphicon glyphicon-trash"></i> Eliminar</a></li>		    
				  </ul>
				</div>';

				$result['data'][$key] = array(
					$x,
					$value['section_name'],
					$button
				);
				$x++;
			} // /froeach

			echo json_encode($result);
	}

	/*
	*----------------------------------------------
	* remove class's section function
	*----------------------------------------------
	*/	
	public function remove($sectionId = null)
	{
		if($sectionId) {
			$remove = $this->model_section->remove($sectionId);
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