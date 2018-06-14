<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>作者管理</title>
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
								<div class="widget-title  am-cf">作者管理</div>

							</div>
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
								<!-- 添加作者信息 -->
								<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
									<a href="javascript:;"
										class="am-form-group tpl-table-list-select"
										data-toggle="modal" data-target="#myModal1"> <i
										class="am-icon-pencil"></i> 添加作者
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
														添加作者</h4>
												</div>
												<div class="modal-body"
													style="color: black; text-align: center; margin-bottom: 50px; height: 200px">
													<li><span>作者名字：</span><input type="text" name="" /></li>
													<li><span>图书简介：</span><input type="text" name="" /></li>
													<li><span>图书照片：</span><img src="img/a5.png">
													<button class="modal-body-ll">...</button>
													</li>
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
								<!-- 作者信息显示 -->
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>作者名字</th>
												<th>作者简介</th>
												<th>图书照片</th>

											</tr>
										</thead>
										<tbody>
											<tr class="gradeX">
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">获得最佳作者奖，并在写作中获得巨大的成功</td>
												<td><img src="img/k.jpg" class="tpl-table-line-img"
													alt=""></td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">获得最佳作者奖，并在写作中获得巨大的成功</td>
												<td><img src="img/k.jpg" class="tpl-table-line-img"
													alt=""></td>
											</tr>


											<!-- more data -->
										</tbody>
									</table>
								</div>
								<!-- 分页信息显示 -->
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
	<script src="js/amazeui.min.js"></script>
	<script src="js/amazeui.datatables.min.js"></script>
	<script src="js/dataTables.responsive.min.js"></script>
	<script src="js/app.js"></script>

</body>
</html>