var base_url = $("#base_url").val();

$(document).ready(function () {
	managesectionTable = $("#managesectionTable").DataTable({
		'ajax': base_url + 'section/ListSection',
		'order': []
		});

	$("#topClassMainNav").addClass('active');
	$("#topNavSection").addClass('active');


	$('#addClassModelBtn').on('click', function () {

		$("#addSectionForm")[0].reset();
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$("#add-class-messages").html('');
		$('.text-danger').remove();

		$("#addSectionForm").unbind('submit').bind('submit', function() {
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

						managesectionTable.ajax.reload(null, false);

						$("#addSectionForm")[0].reset();
						$(".form-group").removeClass('has-error').removeClass('has-success');
						$(".text-danger").remove();
						$("#addSectionModal").modal('hide');

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
	
	});

}); // /document

/*
*----------------------------
* get class section function
*----------------------------
*/
function getClassSection(classId = null) {
	if (classId) {
		$(".list-group-item").removeClass('active');
		$("#classId" + classId).addClass('active');
		$.ajax({
			url: base_url + 'section/fetchSectionTable/' + classId,
			type: 'post',
			success: function (response) {
				$(".result").html(response);
			} // /success
		}); // /ajax 
	}
}

/*
*----------------------------
* add section function
*----------------------------
*/
function addSection(classId = null) {
	if (classId) {
		$("#addSectionForm")[0].reset();
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$('.text-danger').remove();
		$("#add-section-message").html('');

		$("#addSectionForm").unbind('submit').bind('submit', function () {
			$("#add-section-message").html('');

			var form = $(this);
			var url = form.attr('action') + '/' + classId;
			var type = form.attr('method');

			$.ajax({
				url: url,
				type: type,
				data: form.serialize(),
				dataType: 'json',
				success: function (response) {
					if (response.success == true) {

						$("#add-section-message").html('<div class="alert alert-success alert-dismissible" role="alert">' +
							'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
							response.messages +
							'</div>');

						$("#addSectionForm")[0].reset();
						$(".form-group").removeClass('has-error').removeClass('has-success');
						$(".text-danger").remove();

						$("#manageSectionTable").load(base_url + 'section/fetchUpdateSectionTable/' + classId);

					}
					else {
						$.each(response.messages, function (index, value) {
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
		});
	} // /if
}

/*
*----------------------------
* update class's section function
*----------------------------
*/
function editSection(sectionId = null) {
	if (sectionId) {
		/*Clear the form*/
		$("#editSectionForm")[0].reset();
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$('.text-danger').remove();
		$("#edit-section-messages").html('');

		$.ajax({
			//url: base_url + 'section/fetchSectionByClassSection/' + classId + '/' + sectionId,
			url: base_url + 'section/fetchSectionByClassSection/' + sectionId,
			type: 'post',
			dataType: 'json',
			success: function (response) {
				console.log(response);
				$("#editSectionName").val(response.section_name);
				//$("#editTeacherName").val(response.teacher_id);

				$("#editSectionForm").unbind('submit').bind('submit', function () {
					var form = $(this);
					var url = form.attr('action');
					var type = form.attr('method');

					$.ajax({
						//url: url + '/' + classId + '/' + sectionId,
						url: url + '/' + sectionId,
						type: type,
						data: form.serialize(),
						dataType: 'json',
						success: function (response) {
							if (response.success == true) {
								$("#edit-section-messages").html('<div class="alert alert-success alert-dismissible" role="alert">' +
									'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
									response.messages +
									'</div>');

								//$("#manageSectionTable").load(base_url + 'section/fetchUpdateSectionTable/' + classId);
								managesectionTable.ajax.reload(null, false);

								$(".form-group").removeClass('has-error').removeClass('has-success');
								$(".text-danger").remove();
								$("#editSectionModal").modal('hide');

							}
							else {

								$.each(response.messages, function (index, value) {
									var key = $("#" + index);

									key.closest('.form-group')
										.removeClass('has-error')
										.removeClass('has-success')
										.addClass(value.length > 0 ? 'has-error' : 'has-success')
										.find('.text-danger').remove();

									key.after(value);

								});

							} // /else
						} // /success
					}); // /ajax

					return false;
				});


			} // /successs
		}); // /ajax		

	}
}

/*
*----------------------------
* removes class's section function
*----------------------------
*/
function removeSection(sectionId = null) {
	if (sectionId) {
		// remove section btn clicked
		$("#removeSectionBtn").unbind('click').bind('click', function () {
			$.ajax({
				url: base_url + 'section/remove/' + sectionId,
				type: 'post',
				dataType: 'json',
				success: function (response) {
					if (response.success === true) {
						$("#messages").html('<div class="alert alert-success alert-dismissible" role="alert">' +
							'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
							response.messages +
							'</div>');

						$("#manageSectionTable").load(base_url + 'section/fetchUpdateSectionTable/' + classId);

						$("#removeSectionModal").modal('hide');
					}
					else {
						$("#remove-messages").html('<div class="alert alert-warning alert-dismissible" role="alert">' +
							'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
							response.messages +
							'</div>');
					}
				} // /success
			}); // /ajax
			return false;
		}); // /remove section btn clicked
	}
}