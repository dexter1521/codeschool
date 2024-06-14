<ol class="breadcrumb">
    <li><a href="">Inicio</a></li>
    <!-- <li><a href="<?php echo base_url('dashboard') ?>">Home</a></li>  -->

    <li class="active">Administrar Clase</li>
</ol>

<div class="row">
    <div class="col-md-4">
        <div class="panel panel-default">

            <div class="panel-heading">
                Sede
            </div>

            <div class="list-group">
                <?php 
				if($sectionData) {
					$x = 1;
					foreach ($sectionData as $value) { 
					?>
                <a class="list-group-item classSideBar <?php if($x == 1) { echo 'active'; } ?>"
                    onclick="getClassSection(<?php echo $value['section_id'] ?>)"
                    id="sectionID<?php echo $value['section_id'] ?>">
                    <?php echo $value['section_name']; ?>
                </a>
                <?php 
					$x++;
					}
				} 
				else {
					?>
                <a class="list-group-item">Sin datos</a>
                <?php
				}		
				?>
            </div>

        </div>
    </div>
    <!-- /col-md-4 -->


    <div class="col-md-8">
        <div class="panel panel-default ">
            <div class="panel-heading">
                Administrar clase
            </div>
            <div class="panel-body">
                <div id="messages"></div>

                <div class="pull pull-right">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addClass"
                        id="addClassModelBtn">
                        <i class="glyphicon glyphicon-plus-sign"></i> Agregar Clase
                    </button>
                </div>

                <br /> <br /> <br />

                <div class="panel-body">
                    <div class="result">
                        <table id="manageClassTable" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre de clase</th>
                                    <th>Nombre numerico</th>
                                    <th>Sede</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>



<!-- add class -->
<div class="modal fade" tabindex="-1" role="dialog" id="addClass">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">Agregar clase</h4>
            </div>
            <form class="form-horizontal" method="post" id="createClassForm"
                action="<?php echo base_url() . 'classes/create' ?>">
                <div class="modal-body">
                    <div id="add-class-messages"></div>
                    <div class="form-group">
                        <label for="className" class="col-sm-4 control-label">Nombre de clase:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="className" name="className"
                                placeholder="Nombre de clase">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="numericName" class="col-sm-4 control-label">Nombre numérico:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="numericName" name="numericName"
                                placeholder="Nombre numérico">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addsectionname" class="col-sm-4 control-label">Sede:</label>
                        <div class="col-sm-8">
                            <select class="form-control" name="addsectionname" id="addsectionname">
                                <option value="">Selecciona Sede</option>
                                <?php foreach ($sectionData as $key => $value) { ?>
                                <option value="<?php echo $value['section_id'] ?>"><?php echo $value['section_name'] ?>
                                </option>
                                <?php } // /foreach ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="FI" class="col-sm-4 control-label">Fecha de inicio:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="FI" name="FI" placeholder="Fecha de inicio"
                                autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="FF" class="col-sm-4 control-label">Fecha de fin:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="FF" name="FF" placeholder="Fecha de fin"
                                autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="HI" class="col-sm-4 control-label">Hora de inicio:</label>
                        <div class="col-sm-8">
                            <input type="time" class="form-control" id="HI" name="HI" placeholder="Hora de inicio"
                                autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="HF" class="col-sm-4 control-label">Hora de fin:</label>
                        <div class="col-sm-8">
                            <input type="time" class="form-control" id="HF" name="HF" placeholder="Hora de fin"
                                autocomplete="off">
                        </div>
                    </div>
                    <div class="inline-checkbox">
                        <input type="checkbox" id="L" name="L" value="1" >
                        <label for="L">Lunes</label>
                    </div>
                    <div class="inline-checkbox">
                        <input type="checkbox" id="M" name="M" value="1">
                        <label for="M">Martes</label>
                    </div>
                    <div class="inline-checkbox">
                        <input type="checkbox" id="MI" name="MI" value="1">
                        <label for="MI">Miércoles</label>
                    </div>
                    <div class="inline-checkbox">
                        <input type="checkbox" id="J" name="J" value="1">
                        <label for="J">Jueves</label>
                    </div>
                    <div class="inline-checkbox">
                        <input type="checkbox" id="V" name="V" value="1">
                        <label for="V">Viernes</label>
                    </div>
                    <div class="inline-checkbox">
                        <input type="checkbox" id="S" name="S" value="1">
                        <label for="S">Sábado</label>
                    </div>
                </div><!-- /.modal-body -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Guardar cambios</button>
                </div><!-- /.modal-footer -->
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!-- edit class -->
<div class="modal fade" tabindex="-1" role="dialog" id="editClassModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Editar clase</h4>
                <input type="hidden" id="classID" name="classID" value="">
            </div>

            <form class="form-horizontal" method="post" id="editClassForm"
                action="<?php echo base_url() . 'classes/update'; ?>">

                <div class="modal-body">

                    <div id="edit-class-messages"></div>

                    <div class="form-group">
                        <label for="editClassName" class="col-sm-4 control-label">Nombre de clase : </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="editClassName" name="editClassName"
                                placeholder="Class Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="editNumericName" class="col-sm-4 control-label">Nombre numerico : </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="editNumericName" name="editNumericName"
                                placeholder="Numeric Name">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="editsectionname" class="col-sm-4 control-label">Sede</label>
                    <div class="col-sm-8">
                        <select class="form-control" name="editsectionname" id="editsectionname">
                            <option value="">Selecciona Sede</option>
                            <?php foreach ($sectionData as $key => $value) { ?>
                            <option value="<?php echo $value['section_id'] ?>">
                                <?php echo $value['section_name'] ?></option>
                            <?php } // /forwach ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">

                    <label for="editFI" class="col-sm-4 control-label">Fecha inicio</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="editFI" name="editFI" placeholder="Fecha de inicio"
                            autocomplete="off">
                    </div>
                </div>

                <div class="form-group">
                    <label for="editFF" class="col-sm-4 control-label">Fecha de fin</label>
                    <div class="col-sm-8">

                        <input type="text" class="form-control" id="editFF" name="editFF" placeholder="Fecha de fin"
                            autocomplete="off">
                    </div>

                </div>

                <div class="form-group">
                    <label for="editHI" class="col-sm-4 control-label">Hora de inicio</label>
                    <div class="col-sm-8">

                        <input type="time" class="form-control" id="editHI" name="editHI" placeholder="Hora de inicio"
                            autocomplete="off">
                    </div>
                </div>

                <div class="form-group">
                    <label for="editHF" class="col-sm-4 control-label">Hora de fin</label>
                    <div class="col-sm-8">

                        <input type="time" class="form-control" id="editHF" name="editHF" placeholder="Hora de fin"
                            autocomplete="off">
                    </div>

                </div>

                <div class="inline-checkbox">
                    <input type="checkbox" id="editL" name="editL" value="1">
                    <label for="editL">Lunes</label>
                </div>
                <div class="inline-checkbox">
                    <input type="checkbox" id="editM" name="editM" value="1">
                    <label for="editM">Martes</label>
                </div>
                <div class="inline-checkbox">
                    <input type="checkbox" id="editMI" name="editMI" value="1">
                    <label for="editMI">Miércoles</label>
                </div>
                <div class="inline-checkbox">
                    <input type="checkbox" id="editJ" name="editJ" value="1">
                    <label for="editJ">Jueves</label>
                </div>
                <div class="inline-checkbox">
                    <input type="checkbox" id="editV" name="editV" value="1">
                    <label for="editV">Viernes</label>
                </div>
                <div class="inline-checkbox">
                    <input type="checkbox" id="editS" name="editS" value="1">
                    <label for="editS">Sábado</label>
                </div>



                <div class="modal-footer edit-class-modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Guardar cambios</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- remove class -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeClassModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Eliminar clase</h4>
            </div>

            <div class="modal-body">
                <div id="remove-messages"></div>
                <p> Seguro que deseas eliminar?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary" id="removeClassBtn">Guardar cambios</button>
            </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script type="text/javascript" src="<?php echo base_url('custom/js/classes.js'); ?>"></script>