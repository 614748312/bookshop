<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>出版社管理界面</title>
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="css/app.css">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="icon" type="image/png" href="img/favicon.png">
<link rel="apple-touch-icon-precomposed" href="img/app-icon72x72@2x.png">
</head>
<body data-type="index">
	<script src="js/theme.js"></script>
	<!-- 内容区域 -->
	<div class="tpl-content-wrapper">

		<div class="tpl-content-wrapper">
			<div class="row-content am-cf">
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title  am-cf">出版社管理</div>

							</div>
							<!-- 主要内容区域 -->
							<div class="widget-body  am-fr">
								<div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
									<div
										class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
										<input type="text" class="am-form-field "> <span
											class="am-input-group-btn">
											<button
												class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
												type="button"></button>
										</span>
									</div>
								</div>
								<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
									<a href="javascript:;"
										class="am-form-group tpl-table-list-select"
										data-toggle="modal" data-target="#myModal1"> <i
										class="am-icon-pencil"></i> 添加出版社
									</a>

									<!-- 模态框（Modal） -->
									<div class="modal fade" id="myModal1" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title" id="myModalLabel"
														style="color: black; font: 20px; text-align: center;">
														添加出版社</h4>
												</div>
												<div class="modal-body"
													style="color: black; text-align: center; margin-bottom: 50px; height: 150px;">
													<li><span>出版社名字：</span><input type="text"
														name="book_name" /></li>
													<li><span>&emsp;&emsp;负责人：</span><input type="text"
														name="book_writer" /></li>
													<li><span>负责人号码：</span><input type="text"
														name="book_publisher" /></li>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">关闭</button>
													<button type="button" class="btn btn-primary">
														确认提交</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal -->
									</div>
								</div>
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>出版社名字</th>
												<th>负责人</th>
												<th>负责人号码</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr class="gradeX">
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">11111111111</td>
												<td class="am-text-middle">
													<div class="tpl-table-black-operation">
														<a href="javascript:;" data-toggle="modal"
															data-target="#myModal"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del" value="del"
															onclick="del();"> <i class="am-icon-trash"></i>删除
														</a>
														<!-- 模态框（Modal） -->
														<div class="modal fade" id="myModal" tabindex="-1"
															role="dialog" aria-labelledby="myModalLabel"
															aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-hidden="true">
																			&times;</button>
																		<h4 class="modal-title" id="myModalLabel"
																			style="color: black; font: 20px; text-align: center;">
																			出版社信息修改</h4>
																	</div>
																	<div class="modal-body"
																		style="color: black; text-align: center; margin-bottom: 50px; height: 150px;">
																		<li><span>出版社名字：</span><input type="text"
																			name="book_name" /></li>
																		<li><span>&emsp;&emsp;负责人：</span><input
																			type="text" name="book_writer" /></li>
																		<li><span>负责人号码：</span><input type="text"
																			name="book_publisher" /></li>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-default"
																			data-dismiss="modal">关闭</button>
																		<button type="button" class="btn btn-primary">
																			提交更改</button>
																	</div>
																</div>
																<!-- /.modal-content -->
															</div>
															<!-- /.modal -->
														</div>

													</div>
												</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">11111111111</td>
												<td class="am-text-middle">
													<div class="tpl-table-black-operation">
														<a href="javascript:;" data-toggle="modal"
															data-target="#myModal"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">11111111111</td>
												<td class="am-text-middle">
													<div class="tpl-table-black-operation">
														<a href="javascript:;" data-toggle="modal"
															data-target="#myModal"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">11111111111</td>
												<td class="am-text-middle">
													<div class="tpl-table-black-operation">
														<a href="javascript:;" data-toggle="modal"
															data-target="#myModal"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>

													</div>
												</td>
											</tr>
											<!-- more data -->
										</tbody>
									</table>
								</div>
								<!-- 分页 -->
								<div class="am-u-lg-12 am-cf">

									<div class="am-fr">
										<ul class="am-pagination tpl-pagination">
											<li class="am-disabled"><a href="#">«</a></li>
											<li class="am-active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">»</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script>
		function del() {
			if (confirm("确认删除吗")) {
				alert("yes");
			} else {
				alert("no")

			}
		}
	</script>
	<script src="js/amazeui.min.js"></script>
	<script src="js/amazeui.datatables.min.js"></script>
	<script src="js/dataTables.responsive.min.js"></script>
	<script src="js/app.js"></script>

</body>
</html>