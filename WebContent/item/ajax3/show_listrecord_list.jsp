<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<table class="table table-striped table-bordered table-hover" id="sample_2">
	<thead>
		<tr>
			<th style="width: 8px;"><input type="checkbox" class="group-checkable" data-set="#sample_2 .checkboxes" /></th>
			<th>车牌号</th>
			<th>出厂日期</th>
			<th>载重</th>
			<th>保险状态</th>
			<th>保养状态</th>
			<th>违章记录</th>
			<th>归属公司</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${trunkList }" var="t">
			<tr class=" gradeX">
				<td><input type="checkbox" class="checkboxes" value="${t.id }" /></td>
				<td>${t.vehicle }</td>
				<td>${t.birthday }</td>
				<td>${t.load }</td>
				<td>${t.insurance }</td>
				<td>${t.status }</td>
				<td><a href="item/index7.jsp" target="_blank">
						<span class="badge badge-success">查看违章记录</span>
					</a></td>
				<td>${t.company }</td>
				<td>
					<button type="button" class="btn blue btn-xs update_listrecord_button" data-link="admin/update_trunk?id=${t.id }">
						<i class="fa fa-edit"></i> 修改
					</button>
					<button type="button" class="btn red btn-xs delete_listrecord_button" data-id="${t.id }">
						<i class="fa fa-trash-o"></i> 删除
					</button>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<!-- begin pagination -->
<hr>
<div>
	<p id="dynamic_pager_demo2" data-totalPages="${page.totalPages }" data-currentIndex="${page.currentIndex }"></p>
</div>
<!-- end pagination -->
<script type="text/javascript">
	$('#dynamic_pager_demo2').bootpag(
	{
		paginationClass : 'pagination pagination-sm',
		next : '<i class="fa fa-angle-right"></i>',
		prev : '<i class="fa fa-angle-left"></i>',
		total : $('#dynamic_pager_demo2').attr("data-totalPages"),
		page : $('#dynamic_pager_demo2').attr("data-currentIndex"),
		maxVisible : 25
	}).on('page', function(event, num)
	{
		var link = "admin/show_trunk_list?i=" + num;
		App.blockUI(
		{
			target : $("#list_record_div"),
			iconOnly : true,
		});
		$("#list_record_div").load(link, {}, function()
		{
			App.unblockUI($("#list_record_div"));
			$("#list_record_div").attr("data-link", link);
		});
		//$("#dynamic_pager_content2").html("Page " + num + " content here"); // or some ajax content loading...
	});
	$("#sample_2 tbody tr:odd").addClass("odd");
	$(".update_listrecord_button").each(function()
	{
		var button_obj = $(this);
		button_obj.click(function()
		{
			$("#add_listrecord_modal").find(".modal-content").load(button_obj.attr("data-link"), {}, function()
			{
				$("#add_listrecord_modal").modal('show');
			});
		});
	});
	$(".delete_listrecord_button").each(function()
	{
		var button_obj = $(this);
		button_obj.click(function()
		{
			if (confirm("确认删除此项吗?"))
			{
				$.post("admin/admin_delete_trunk_do",
				{
					id : button_obj.attr("data-id")
				}, function(json)
				{
					if (json.success == true)
					{
						App.blockUI(
						{
							message : '<h2>操作成功！正在载入中 ...</h2>',
							iconOnly : false,
							overlayCSS :
							{
								backgroundColor : '#fff',
								opacity : 0.5,
								cursor : 'wait'
							}
						});
						$("#list_record_div").load($("#list_record_div").attr("data-link"), {}, function()
						{
							setTimeout(App.unblockUI, 500);
						});
					}
					else
					{
						alert("操作失败：" + json.info);
						App.unblockUI();
					}
				}, "json");
			}
		});

	});
</script>
