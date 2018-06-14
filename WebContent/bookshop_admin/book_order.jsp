<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单管理</title>
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
							<!-- 显示所处界面 -->
							<div class="widget-head am-cf">
								<div class="widget-title  am-cf">订单管理</div>

							</div>
							<div class="widget-body  am-fr">
								<!-- 查询相应显示位置 -->
								<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
									<div class="am-form-group">
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"
													class="am-btn am-btn-default am-btn-success">
													查询已发货订单</button>
												<button type="button"
													class="am-btn am-btn-default am-btn-warning">
													查询未发货订单</button>
												<button type="button"
													class="am-btn am-btn-default am-btn-danger">一键发货</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 该页面主要内容区域 -->
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>订单编号</th>
												<th>用户名</th>
												<th>图书名</th>
												<th>作者</th>
												<th>出版社</th>
												<th>支付时间</th>
												<th>发货时间</th>
												<th>图书数量</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr class="gradeX">
												<td class="am-text-middle">001</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">lucy</td>
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">2016-1-2</td>
												<td class="am-text-middle">2016-1-3</td>
												<td class="am-text-middle">2</td>
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
																			订单信息修改</h4>
																	</div>
																	<div class="modal-body"
																		style="color: black; text-align: center; margin-bottom: 50px;">

																		<li><span>订单编号：</span><input type="text" name="" /></li>
																		<li><span>&emsp;用户名：</span><input type="text"
																			name="" /></li>
																		<li><span>图书名：</span><input type="text" name="" /></li>
																		<li><span>&emsp;&emsp;作者：</span><select
																			name="state" id="state" class="state pickout"
																			placeholder="选择一个作者">
																				<option value="option1">所有类别</option>
																				<option value="option2">IT业界</option>
																				<option value="option3">数码产品</option>
																				<option value="option3">笔记本电脑</option>
																				<option value="option3">平板电脑</option>
																				<option value="option3">只能手机</option>
																				<option value="option3">超极本</option>
																		</select></li>
																		<li><span>出版社：</span><select name="state"
																			id="state" class="state pickout" placeholder="选择一个作者">
																				<option value="option1">所有类别</option>
																				<option value="option2">IT业界</option>
																				<option value="option3">数码产品</option>
																				<option value="option3">笔记本电脑</option>
																				<option value="option3">平板电脑</option>
																				<option value="option3">只能手机</option>
																				<option value="option3">超极本</option>
																		</select></li>
																		<li><span>支付时间：</span><input type="text" name="" /></li>
																		<li><span>发货时间：</span><input type="text" name="" /></li>
																		<li><span>图书数量：</span><input type="text" name="" /></li>
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
												<td class="am-text-middle">002</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">lucy</td>
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">2016-1-2</td>
												<td class="am-text-middle">2016-1-3</td>
												<td class="am-text-middle">2</td>
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
												<td class="am-text-middle">003</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">lucy</td>
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">2016-1-2</td>
												<td class="am-text-middle">2016-1-3</td>
												<td class="am-text-middle">2</td>
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
												<td class="am-text-middle">004</td>
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">lucy</td>
												<td class="am-text-middle">广州出版社</td>
												<td class="am-text-middle">2016-1-2</td>
												<td class="am-text-middle">2016-1-3</td>
												<td class="am-text-middle">2</td>
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
								<!-- 分页显示位置 -->
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