<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title">Sửa Phụ Cấp</h4>
		</div>
		<form action="allowance/update" method="POST">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<input type="hidden" name="id" id="id_update">
		<div class="modal-body">
			<div class="form-group">
				<label>Tên Phụ Cấp</label>
				<input type="text" id="name_update" name="name" class="form-control">

			</div>
			<div class="form-group">
				<label>Loại Phụ cấp</label>
				<select name="type" id="type_update" class="form-control" required="required">
					<option value="0">Phụ cấp không tính thuế</option>
					<option value="1">Phụ cấp tính thuế</option>
				</select>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Quay lại</button>
			<button type="submit" class="btn btn-primary">Đồng Ý</button>
		</div>
		</form>
	</div>
</div>		