<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>出版社销售查询</title>
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
								<div class="widget-title  am-cf">出版社销售查询</div>
							</div>
							<!-- 进行信息查询 -->
							<div class="widget-body  am-fr">
								<div class="am-u-sm-12 am-u-md-12 am-u-lg-3"
									style="width: 100%; margin-bottom: 30px;">
									<div class="am-form-group tpl-table-list-select"
										style="width: 30%; float: left;">
										<span>出版社名称：</span> <select data-am-selected="{btnSize: 'sm'}">
											<option value="option1">所有类别</option>
											<option value="option2">IT业界</option>
											<option value="option3">数码产品</option>
											<option value="option3">笔记本电脑</option>
											<option value="option3">平板电脑</option>
											<option value="option3">只能手机</option>
											<option value="option3">超极本</option>
										</select>

									</div>
									<div class="am-form-group tpl-table-list-select"
										style="float: left; margin-left: 300px;">
										<div class="am-form-group">
											<label for="user-email" class="am-u-sm-3 am-form-label">时间
												：</label>
											<div class="am-u-sm-9" style="width: 25%; float: left;">
												<input type="text" class="am-form-field tpl-form-no-bg"
													placeholder="发布时间" data-am-datepicker="" readonly>
											</div>
											<label for="user-email" class="am-u-sm-3 am-form-label"
												style="padding-left: 0px;">至：</label>
											<div class="am-u-sm-9" style="width: 25%; float: left;">
												<input type="text" class="am-form-field tpl-form-no-bg"
													placeholder="发布时间" data-am-datepicker="" readonly>
											</div>
										</div>

									</div>

								</div>
                                  <!-- 销售信息显示 -->
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>图书名</th>
												<th>销售量</th>
												<th>售价</th>
												<th>销售金额</th>
											</tr>
										</thead>
										<tbody>
											<tr class="gradeX">
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">200</td>
												<td class="am-text-middle">26</td>
												<td class="am-text-middle">520</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">200</td>
												<td class="am-text-middle">26</td>
												<td class="am-text-middle">520</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">200</td>
												<td class="am-text-middle">26</td>
												<td class="am-text-middle">520</td>
											</tr>
											<tr class="gradeX">
												<td class="am-text-middle">网页设计</td>
												<td class="am-text-middle">200</td>
												<td class="am-text-middle">26</td>
												<td class="am-text-middle">520</td>
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

	<script src="js/amazeui.min.js"></script>
	<script src="js/amazeui.datatables.min.js"></script>
	<script src="js/dataTables.responsive.min.js"></script>
	<script src="js/app.js"></script>

</body>
</html>