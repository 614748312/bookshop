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
		<title>我的订单界面</title>
	    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/bottom_style.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/nav_style1.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/myorder.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/yourlike.css"  />		
	</head>
	<body>
		<!--页面顶部-->
		<div class="tools"></div>
		<div id="hd"></div>
		<!-- 我的 -->
		<div class="mymuen">
			<div class="mymuen_list">
				<div class="mymuen_title">
					<span>我的书籍屋</span>
				</div>
				<div class="mymuen_list_n">
					<ul>
						<li>
							<a href="book_myorder.jsp" class="mymuen_list_n1">我的订单</a>
						</li>
						<li>
							<a href="book_myinfo.jsp">我的信息</a>
						</li>
						<li>
							<a href="book_myadress.jsp">我的地址</a>
						</li>
						<li>
							<a href="book_myrepass.jsp">忘记密码</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="myoder">
				<!-- 我的位置 -->
				<div class="myoder_de">
					<span> >> <a href="">我的书籍屋</a> >> <a href="">我的订单</a></span>
				</div>
				<!-- 是否发货 -->
				<div class="myoder_title">
					<ul>
						<li>
							<a class="s1" href="">我的订单</a>
						</li>
						<li>
							<a class="" href="">未发货</a>
						</li>
						<li>
							<a class="" href="">已发货</a>
						</li>
					</ul>
				</div>
				<div class="myoder_form">
					<!-- 时间 -->
					<div class="myoder_time">
						<span>2018-5-11</span>
					</div>
					<div class="myoder_form_c">
						<div class="myoder_form_con">
							<ul>

								<li class="f1" style="visibility: hidden;">图片</li>
								<li class="f2">商品信息</li>
								<li class="f2">订单编号</li>
								<li class="f3">单价（元）</li>
								<li class="f4">数量</li>
								<li class="f4">金额</li>
							</ul>
						</div>
						<div class="shopping_r">
							<ul>
								<li class="f1">
									<a href="#"><img src="mcy/img/shu1.jpg" alt="" width="60px" height="60px"></a>
								</li>
								<li class="f2">
									<a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a>
								</li>
								<li class="f2">1111111111111</li>
								<li class="f3">￥50</li>
								<li class="f4">1</li>
								<li class="f4">￥50</li>
							</ul>
						</div>
						<div class="shopping_r">
							<ul>
								<li class="f1">
									<a href="#"><img src="mcy/img/shu1.jpg" alt="" width="60px" height="60px"></a>
								</li>
								<li class="f2">
									<a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a>
								</li>
								<li class="f2">1111111111111</li>
								<li class="f3">￥50</li>
								<li class="f4">1</li>
								<li class="f4">￥50</li>
							</ul>
						</div>
						<div class="myoder_form_s">
							<p>总计：<span>￥100元</span></p>
						</div>

					</div>
				</div>
								<div class="myoder_form">
					<!-- 时间 -->
					<div class="myoder_time">
						<span>2018-5-11</span>
					</div>
					<div class="myoder_form_c">
						<div class="myoder_form_con">
							<ul>

								<li class="f1" style="visibility: hidden;">图片</li>
								<li class="f2">商品信息</li>
								<li class="f2">订单编号</li>
								<li class="f3">单价（元）</li>
								<li class="f4">数量</li>
								<li class="f4">金额</li>
							</ul>
						</div>
						<div class="shopping_r">
							<ul>
								<li class="f1">
									<a href="#"><img src="mcy/img/shu1.jpg" alt="" width="60px" height="60px"></a>
								</li>
								<li class="f2">
									<a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a>
								</li>
								<li class="f2">1111111111111</li>
								<li class="f3">￥50</li>
								<li class="f4">1</li>
								<li class="f4">￥50</li>
							</ul>
						</div>
						<div class="shopping_r">
							<ul>
								<li class="f1">
									<a href="#"><img src="mcy/img/shu1.jpg" alt="" width="60px" height="60px"></a>
								</li>
								<li class="f2">
									<a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a>
								</li>
								<li class="f2">1111111111111</li>
								<li class="f3">￥50</li>
								<li class="f4">1</li>
								<li class="f4">￥50</li>
							</ul>
						</div>
						<div class="myoder_form_s">
							<p>总计：<span>￥100元</span></p>
						</div>
					</div>
				</div>

			</div>
		</div>
		
		
        <!--为您推荐-->
       <div class="yourlike_title">
			<h3>猜你喜欢</h3>
			<h4><a href="">换一批</a></h4>
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