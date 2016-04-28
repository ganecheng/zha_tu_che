<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
	<h4 class="modal-title">更新工地信息</h4>
</div>
<div class="modal-body">


	<!-- BEGIN SAMPLE FORM PORTLET-->

	<div class="portlet-body form">
		<form action="#" id="update-form_sample_2">
			<div class="form-body">
				<div class="alert alert-danger display-hide">
					<button class="close" data-close="alert"></button>
					你有一些填写错误，请检查一下。
				</div>
				<div class="alert alert-success display-hide">
					<button class="close" data-close="alert"></button>
					填写正确 .
				</div>

				<input type="hidden" name="driver.id" value="${ driver.id}">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>姓名*</label>
							<input type="text" class="form-control" id="" name="driver.name" data-old-value="${ driver.name}" placeholder="姓名">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>年龄*</label>
							<input type="text" class="form-control" id="" name="driver.age" data-old-value="${ driver.age}" placeholder="年龄">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>性别*</label>
							<input type="text" class="form-control" id="" name="driver.sex" data-old-value="${ driver.sex}" placeholder="性别">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>公司*</label>
							<input type="text" class="form-control" id="" name="driver.company" data-old-value="${ driver.company}" placeholder="公司">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>驾驶车辆*</label>
							<input type="text" class="form-control" id="" name="driver.vehicle" data-old-value="${ driver.vehicle}" placeholder="驾驶车辆">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- END SAMPLE FORM PORTLET-->
</div>
<div class="modal-footer">
	<button type="button" id="add_listrecord_submit_button" class="btn blue">提交</button>
	<button type="button" class="btn default" data-dismiss="modal">关闭</button>
</div>
<script type="text/javascript" src="${basePath }js/custom/update-form-validation.js"></script>

<script type="text/javascript">
	$(function()
	{
		FormValidation.init();
		$("input[data-old-value]").each(function()
		{
			$(this).val($(this).attr("data-old-value"));
		});
		$("#add_listrecord_submit_button").click(function()
		{
			if ($('#update-form_sample_2').validate().form())
			{
				$('#update-form_sample_2').submit(); // form validation success, call ajax form submit
			}
			return false;
		});
	});
</script>
