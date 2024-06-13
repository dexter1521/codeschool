var manageClassTable;
var base_url = $("#base_url").val();

$(document).ready(function() {
	$("#topClassMainNav").addClass('active');
	$("#topNavClass").addClass('active');	

	manageClassTable = $("#manageClassTable").DataTable({
		'ajax' : base_url + 'classes/fetchClassData',
		'order': []
	});

	$('#FI').calendarsPicker({
		dateFormat: 'yyyy-mm-dd'
	});
	$('#FF').calendarsPicker({
		dateFormat: 'yyyy-mm-dd'
	});
	$('#editFI').calendarsPicker({
		dateFormat: 'yyyy-mm-dd'
	});
	$('#editFF').calendarsPicker({
		dateFormat: 'yyyy-mm-dd'
	});

	/*
	*------------------------------------
	* Add class modal button clicked
	*------------------------------------
	*/
	$("#addClassModelBtn").on('click', function() {
		$("#createClassForm")[0].reset();
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$("#add-class-messages").html('');
		$('.text-danger').remove();

		$("#createClassForm").unbind('submit').bind('submit', function() {
			var form = $(this);
			var url = form.attr('action');
			var type = form.attr('method');

			$.ajax({
				url: url,
				type: type,
				data: form.serialize(),
				dataType: 'json',
				success:function(response) {
					if(response.success == true) {					

						$("#add-class-messages").html('<div class="alert alert-success alert-dismissible" role="alert">'+
						  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
						  response.messages + 
						'</div>');					

						manageClassTable.ajax.reload(null, false);

						$("#createClassForm")[0].reset();
						$(".form-group").removeClass('has-error').removeClass('has-success');
						$(".text-danger").remove();						
					}
					else {
						$.each(response.messages, function(index, value) {
							var key = $("#" + index);
							key.closest('.form-group')
							.removeClass('has-error')
							.removeClass('has-success')
							.addClass(value.length > 0 ? 'has-error' : 'has-success')
							.find('.text-danger').remove();							
							key.after(value);

						});
					}
				} // /success
			}); // /ajax
			return false;
		}); // /create class form submit
	}); // /add class model btn

	

}); // /document

function editClass(class_id = null)
{	


	if(class_id) {
		/*Clear the form*/
		// $("#editClassModal")[0].reset();

		$(".form-group").removeClass('has-error').removeClass('has-success');
		$('.text-danger').remove();
		$("#edit-class-messages").html('');
		$("#classId").remove();

		// $('#editClassModal').modal('show');

		$.ajax({
			url: base_url + 'classes/fetchClassData/'+class_id,
			type: 'post',
			dataType: 'json',
			success:function(response) {
				// console.log(response);

				$("#editClassName").val(response.class_name);

				$("#editNumericName").val(response.numeric_name);

				$("#sectionname").val(response.sectionID);

				$("#editFI").val(response.fecha_inicio);

				$("#editFF").val(response.fecha_fin);

				$("#editHI").val(response.hora_inicio);

				$("#editHF").val(response.hora_fin);

				$("#L").prop('checked', response.lunes);
				$("#M").prop('checked', response.martes);
				$("#MI").prop('checked', response.miercoles);
				$("#J").prop('checked', response.jueves);
				$("#V").prop('checked', response.viernes);
				$("#S").prop('checked', response.sabado);


				// hidden class_id input field
				$(".edit-class-modal-footer").append('<input type="hidden" name="classId" id="classId" value="'+response.class_id+'" />');

				$("#editClassForm").unbind('submit').bind('submit', function() {
					var form = $(this);
					var url = form.attr('action');
					var type = form.attr('method');


					$.ajax({
						url: url + '/' + class_id,
						type: type,
						data: form.serialize(),
						dataType: 'json',
						success:function(response) {
							if(response.success == true) {
								$("#edit-class-messages").html('<div class="alert alert-success alert-dismissible" role="alert">'+
								  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
								  response.messages + 
								'</div>');					

								manageClassTable.ajax.reload(null, false);
							
								$(".form-group").removeClass('has-error').removeClass('has-success');
								$(".text-danger").remove();
							}
							else {
								if(response.messages instanceof Object) {
									$.each(response.messages, function(index, value) {
										var key = $("#" + index);

										key.closest('.form-group')
										.removeClass('has-error')
										.removeClass('has-success')
										.addClass(value.length > 0 ? 'has-error' : 'has-success')
										.find('.text-danger').remove();							

										key.after(value);

									});
								}
								else {
									$("#edit-class-messages").html('<div class="alert alert-warning alert-dismissible" role="alert">'+
									  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
									  response.messages + 
									'</div>');			
								} // /else									
							} // /else
						} // /success
					}); // /ajax

					return false;
				});


			} // /successs
		}); // /ajax
	} // /
}

function getClassSection(sectionID = null) 
{	
	if(sectionID) {
		$(".list-group-item").removeClass('active');
		$("#sectionID"+sectionID).addClass('active');
		$.ajax({
			// url: base_url + 'Classes/fetchClassData/' + sectionID,
			url: base_url + 'Classes/fecthClassbySection/' + sectionID,

			type: 'post',		
			success:function(response) {
				$(".result").html(response);
			} // /success
		}); // /ajax 
	}
}

/*
*------------------------------------
* remove class function
*------------------------------------
*/
function removeClass(class_id = null)
{
	if(class_id) {
		$("#removeClassBtn").unbind('click').bind('click', function() {
			$.ajax({
				url: base_url + 'classes/remove/' + class_id,
				type: 'post',
				dataType: 'json',
				success:function(response) {
					if(response.success === true) {
						$("#messages").html('<div class="alert alert-success alert-dismissible" role="alert">'+
						  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
						  response.messages + 
						'</div>');

						manageClassTable.ajax.reload(null, false);

						$("#removeClassModal").modal('hide');
					} 
					else {
						$("#remove-messages").html('<div class="alert alert-warning alert-dismissible" role="alert">'+
						  	'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
						  	response.messages + 
						'</div>');						
					}
				} // /success
			}); // /ajax
		}); // /remove class btn
	} // /if
} // /remove class