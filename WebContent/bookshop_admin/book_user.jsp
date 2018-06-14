<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户管理</title>
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
								<div class="widget-title  am-cf">用户管理</div>

							</div>
							<div class="widget-body  am-fr">
							<!-- 用户信息显示 -->
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
								<!-- 用户信息显示 -->
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>用户名</th>
												<th>密码</th>
												<th>电子邮箱</th>
											</tr>
										</thead>
										<tbody>
											<tr class="gradeX">
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">1234566</td>
												<td class="am-text-middle">163@qq.com</td>																						
												</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">1234566</td>
												<td class="am-text-middle">163@qq.com</td>												
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">1234566</td>
												<td class="am-text-middle">163@qq.com</td>												
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">Tom</td>
												<td class="am-text-middle">1234566</td>
												<td class="am-text-middle">163@qq.com</td>
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