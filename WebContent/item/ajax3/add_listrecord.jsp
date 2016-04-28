<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
	<h4 class="modal-title">添加渣土车信息</h4>
</div>
<div class="modal-body">


	<!-- BEGIN SAMPLE FORM PORTLET-->

	<div class="portlet-body form">
		<form action="#" id="form_sample_3">
			<div class="form-body">
				<div class="alert alert-danger display-hide">
					<button class="close" data-close="alert"></button>
					你有一些填写错误，请检查一下。
				</div>
				<div class="alert alert-success display-hide">
					<button class="close" data-close="alert"></button>
					填写正确 .
				</div>

				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>车牌号*</label>
							<input type="text" class="form-control" id="" name="trunk.vehicle" placeholder="车牌号">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>出厂日期*</label>
							<input type="text" class="form-control" id="" name="trunk.birthday" placeholder="出厂日期">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>载重*</label>
							<input type="text" class="form-control" id="" name="trunk.load" placeholder="载重">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>保险状态*</label>
							<input type="text" class="form-control" id="" name="trunk.insurance" placeholder="保险状态">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>保养状态*</label>
							<input type="text" class="form-control" id="" name="trunk.status" placeholder="保养状态">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>归属公司*</label>
							<input type="text" class="form-control" id="" name="trunk.company" placeholder="归属公司">
						</div>
					</div>
				</div>
				<hr>
			</div>
		</form>
	</div>
	<!-- END SAMPLE FORM PORTLET-->
</div>
<div class="modal-footer">
	<button type="button" id="add_listrecord_submit_button" class="btn blue">提交</button>
	<button type="button" class="btn default" data-dismiss="modal">关闭</button>
</div>
<script type="text/javascript" src="${basePath }js/custom/form-validation.js"></script>

<script type="text/javascript">
	$(function()
	{
		FormValidation.init();
		$("#add_listrecord_submit_button").click(function()
		{
			if ($('#form_sample_3').validate().form())
			{
				$('#form_sample_3').submit(); // form validation success, call ajax form submit
			}
			return false;
		});
	});
</script>
