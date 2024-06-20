<ol class="breadcrumb">
    <li><a href="">Home</a></li>
    <li class="active">Administrar Sede</li>
</ol>


</div>
<!-- /col-md-4 -->

<div class="col-md-12">
    <div class="panel panel-primary">
        <!-- Default panel contents -->
        <div class="panel-heading">Administrar Sede


        </div>

        <div class="panel-body">
            <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#addSectionModal" id="addClassModelBtn">
                <i class="glyphicon glyphicon-plus-sign">Agregar Sede</i>
            </button>

            <div class="result">

                <table id="managesectionTable" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nombre de Sede</th>
                            <th>Accion</th>
                        </tr>
                    </thead>
                </table>
            </div>

        </div>
    </div>
</div>
<!-- /col-md-8 -->
</div>
<!-- /row -->

<!-- create section modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="addSectionModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Añadir Sede</h4>
            </div>
            <form action="<?php echo base_url('section/create') ?>" method="post" id="addSectionForm">
                <div class="modal-body">
                    <div id="add-section-message"></div>

                    <div class="form-group">
                        <label for="sectionName">Nombre de la Sede</label>
                        <input type="text" class="form-control" id="sectionName" name="sectionName" placeholder="Nombre de la seccion">
                    </div>

                    <!--
                    <div class="form-group">
                        <label for="teacherName">Teacher : </label>
                        <select class="form-control" name="teacherName" id="teacherName">
                            <option value="">Select a Teacher</option>
                            <?php
                            if ($teacherData) {
                                foreach ($teacherData as $key => $value) : ?>
                            <option value="<?php echo $value['teacher_id'] ?>">
                                <?php echo $value['fname'] . ' ' . $value['lname'] ?></option>
                            <?php
                                endforeach
                            ?>
                            <?php
                            } else { ?>
                            <option value="">No Data Available</option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    -->


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </div>

            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- update section modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="editSectionModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Nombre de la Sede</h4>
            </div>
            <form action="<?php echo base_url('section/update') ?>" method="post" id="editSectionForm">
                <div class="modal-body">
                    <div id="edit-section-messages"></div>

                    <div class="form-group">
                        <label for="editSectionName">Section Name</label>
                        <input type="text" class="form-control" id="editSectionName" name="editSectionName" placeholder="Section Name">
                    </div>
                    <!-- <div class="form-group">
                        <label for="editTeacherName">Teacher : </label>
                        <select class="form-control" name="editTeacherName" id="editTeacherName">
                            <option value="">Select a Teacher</option>
                            <?php
                            if ($teacherData) {
                                foreach ($teacherData as $key => $value) : ?>
                                    <option value="<?php echo $value['teacher_id'] ?>">
                                        <?php echo $value['fname'] . ' ' . $value['lname'] ?></option>
                                <?php
                                endforeach
                                ?>
                            <?php
                            } else { ?>
                                <option value="">No Data Available</option>
                            <?php
                            }
                            ?>
                        </select>
                    </div> -->

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </div>

            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- remove section modal -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeSectionModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Eliminar Seccion</h4>
            </div>
            <div class="modal-body">
                <div id="remove-messages"></div>

                <p>Realmente desea eliminar la sección ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-success" id="removeSectionBtn">Guardar</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript" src="<?php echo base_url('custom/js/section.js') ?>"></script>