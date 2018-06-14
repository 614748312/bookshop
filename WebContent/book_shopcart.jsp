<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车界面</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/mcy/css/bottom_style.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/mcy/css/nav_style1.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/mcy/css/shopcart.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/mcy/css/yourlike.css" />

</head>
<body>
	<!--页面顶部-->
	<div class="tools"></div>

	<!--我的购物车流程-->
	<div class="logo_line1" name="我的购物车流程">
		<div class="w960">
			<div class="shopping_prcedure"
				style="background: url(mcy/img/procedure_bg.png) 0 0 no-repeat;">
				<span class="current">我的购物车</span> <span>填写订单</span> <span>完成订单</span>
			</div>
			<div class="logo1">
				<a href="#"><img src="mcy/img/logo.jpg" alt=""></a>
			</div>
		</div>
	</div>

	<!--购买的书籍-->
	<div id="" class="w960">
		<!--信息-->
		<ul id="" class="shopping_title">
			<li class="f1"><a id="" class="checknow " href="#" dd_name="全选"></a>
				全选</li>
			<li class="f2">商品信息</li>
			<li class="f3">单价（元）</li>
			<li class="f4">数量</li>
			<li class="f4">金额</li>
			<li class="f5">操作</li>
		</ul>
		<!--书籍详细信息-->
		<div class="fn_shops">
			<div class="shopping_list">
				<table width="100%" cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr class="bb_none tree_first ">
							<td class="row1"><a
								class="fn-product-check checknow check_on" href="#">选中</a></td>
							<td class="row_img"><a href="#" dd_name="查看详情页"><img
									src="mcy/img/shu1.jpg" width="80px" height="80px" /></a></td>
							<td class="row_name"><a href="#">书名书名书名书名书名书名书名书名书名书名书名书名书名书名书名书名</a>
							</td>
							<td class="row4"><span>￥50.00</span></td>
							<td class="fn-count-tip row3"><span
								class="amount updatecount " data-value="1"> <a
									dd_name="减少数量" href="#">-</a> <input data-value="1" value="1"
									type="text" /> <a dd_name="增加数量" href="#">+</a>
							</span></td>
							<td class="row4"><span>￥50.00</span></td>
							<td class="row5"><span><a class="fn-remove-product"
									href="#" dd_name="删除这本书籍">删除</a></span></td>
						</tr>
						<tr class="bb_none tree_first ">
							<td class="row1"><a
								class="fn-product-check checknow check_on" href="#">选中</a></td>
							<td class="row_img"><a href="#" dd_name="查看详情页"><img
									src="mcy/img/shu1.jpg" width="80px" height="80px" /></a></td>
							<td class="row_name"><a href="#">书名书名书名书名书名书名书名书名书名书名书名书名书名书名书名书名</a>
							</td>
							<td class="row4"><span>￥50.00</span></td>
							<td class="fn-count-tip row3"><span
								class="amount updatecount " data-value="1"> <a
									dd_name="减少数量" href="#">-</a> <input data-value="1" value="1"
									type="text" /> <a dd_name="增加数量" href="#">+</a>
							</span></td>
							<td class="row4"><span>￥50.00</span></td>
							<td class="row5"><span><a class="fn-remove-product"
									href="#" dd_name="删除这本书籍">删除</a></span></td>
						</tr>
						<tr class="bb_none tree_first ">
							<td class="row1"><a
								class="fn-product-check checknow check_on" href="#">选中</a></td>
							<td class="row_img"><a href="#" dd_name="查看详情页"><img
									src="mcy/img/shu1.jpg" width="80px" height="80px" /></a></td>
							<td class="row_name"><a href="#">书名书名书名书名书名书名书名书名书名书名书名书名书名书名书名书名</a>
							</td>
							<td class="row4"><span>￥50.00</span></td>
							<td class="fn-count-tip row3"><span
								class="amount updatecount " data-value="1"> <a
									dd_name="减少数量" href="#">-</a> <input data-value="1" value="1"
									type="text" /> <a dd_name="增加数量" href="#">+</a>
							</span></td>
							<td class="row4"><span>￥50.00</span></td>
							<td class="row5"><span><a class="fn-remove-product"
									href="#" dd_name="删除这本书籍">删除</a></span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div
				style="position: static; bottom: -20px; z-index: 101; width: 100%; left: 0px;">
				<div class="shopping_total">
					<div class="shopping_total_right">
						<a class="total_btn fn-checkout unable" href="book_fillorder.jsp"
							dd_name="结算">结&nbsp;&nbsp;算</a>
					</div>
					<div class="shopping_total_left"">
						<a href="#" class="checknow fn-checkall" dd_name="全选">选中</a>全选 <a
							href="#" class="fn-batch-remove" dd_name="批量删除按钮">批量删除</a> <span>已选择<font
							color="red">0</font>件
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--为您推荐-->
	<div class="yourlike_title">
		<h3>猜你喜欢</h3>
		<h4>
			<a href="">换一批</a>
		</h4>
	</div>
	<div class="yourlike_info">
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
		<div class="yourlike_book">
			<div class="book_photo">
				<a href=""><img src="mcy/img/shu1.jpg"></a>
			</div>
			<div class="book_name">
				<a href="">书名书名书名书名</a>
				<p>价格</p>
			</div>
		</div>
	</div>

	<!--页面尾部-->
	<div id="footer"></div>
	<script type="text/javascript" src="lq/js/jquery.min.js"></script>
	<script type="text/javascript" src="lq/js/nav.js"></script>
	<script type="text/javascript" src="lq/js/book_tools.js"></script>
</body>

</html>