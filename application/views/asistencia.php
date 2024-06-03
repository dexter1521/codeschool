<body>
    <div class="container">
    <input type="text" value="<?php echo(base_url()) ?>" id='base_url' name= 'base_url'hidden>

        <div class="form-group">
            <label for="className">Selecciona la clase</label>
            <select class="form-control" name="className" id="className">
                <option value="">Selecciona una clase</option>
                <?php  foreach ($classData as $key => $value) { ?>
                <option value="<?php echo $value['class_id'] ?>"><?php echo $value['class_name'] ?></option>
                <?php } ?>
            </select>
        </div>

        <div class="form-group">
            <label for="sectionName">Selecciona una seccion</label>
            <select class="form-control" name="sectionName" id="sectionName">
                <option value="">Selecciona una seccion</option>
            </select>
        </div>

        <div id="clock"></div>
        <label for="barcode">Escanea tu Código de Barra:</label>
        <input type="text" id="barcode" name="barcode" autofocus class="form-control">
    </div>

</body>

<script>
function updateClock() {
    var now = new Date();
    var date = now.toLocaleDateString('es-ES', {
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    });

    var time = now.toLocaleTimeString('es-ES');
    $('#clock').text(date + ' ' + time);
}

$(document).ready(function() {
    var base_url = $("#base_url").val();

    // Actualizar el reloj cada segundo
    setInterval(updateClock, 1000);
    updateClock(); // Llama inmediatamente para que el reloj se muestre sin esperar 1 segundo

    // Manejar el evento input en el campo de entrada
    // $('#barcode').on('input', function() {
    //     var barcode = $(this).val();
    //     // Mostrar una alerta con el valor actual del campo de entrada
    //     alert('Escribiste: ' + barcode);
    // });


    //cambia el contenido del select seccion al cambiar el contenido del select clase
    $("#className").unbind('change').bind('change', function() {
        var class_id = $(this).val();
        // console.log( <?php echo(base_url()) ?> + 'student/fetchClassSection/' + class_id);

        // console.log( <?php echo(base_url()) ?> + 'student/fetchClassSection/' + class_id);
        $("#sectionName").load(base_url + 'student/fetchClassSection/' + class_id);
    });

    // Manejar el evento change en el campo de entrada
    $('#barcode').change(function() {
        var barcode = $(this).val();
        var className = $('#className').val();
        var sectionName = $('#sectionName').val();

        // Limpiar el campo después de leer el código
        $(this).val('');

        // Enviar el valor al servidor
        $.ajax({
            url: 'Asistencia/create', // Asegúrate de que esta URL apunte a tu controlador de CodeIgniter
            method: 'POST',
            data: {
                code: barcode,
                // code: className,
                sectionID: sectionName


            },
            success: function(response) {
                // Maneja la respuesta del servidor
                var result = JSON.parse(response);
                if (result.status === 'success') {
                    alert('Asistencia registrada con exito: ');
                } else {
                    alert('Error: ' + result.messages);
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
                alert('Ocurrió un error al registrar la asistencia.');
            }
        });
    });
});

function getClassSection(classId = null) {
    if (classId) {
        $(".list-group-item").removeClass('active');
        $("#classId" + classId).addClass('active');
        $.ajax({
            url: base_url + 'Asistencia/getClassSectionTab/' + classId,
            type: 'post',
            dataType: 'json',
            success: function(response) {
                $("#result").html(response.html);

                manageStudentTable = $("#manageStudentTable").DataTable({
                    'ajax': 'Asistencia/fetchStudentByClass/' + classId,
                    'order': []
                });

                /*
                 *-------------------------------------
                 * retrives from the getclassectiontab
                 * function as a json format
                 * and stores the section table into 
                 * the object 
                 *-------------------------------------
                 */
                $.each(response.sectionData, function(index, value) {
                    index += 1;
                    studentSectionTable['studentTable' + index] = $("#manageStudentTable" + index)
                        .DataTable({
                            'ajax': 'Asistencia/fetchStudentByClassAndSection/' + value
                                .class_id +
                                '/' + value.section_id,
                            'order': []
                        });
                });
            } // /success
        }); // /ajax		
    }
}
</script>