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
		<title>我的地址界面</title>
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
					<span> >> <a href="">我的书籍屋</a> >> <a href="">我的地址</a></span>
				</div>
				<div class="myadress">
					<div class="addr_list">
						<ul>
							<li class="addr active">
								<h4>姓名<span>号码</span></h4>
								<p>中国 江西 萍乡市 安源区 </p>
								<p>萍乡学院</p>
							</li>
						</ul>
						<div class="address_edit">
							<a class="address_edit_left" href="#">编辑</a>
							<a class="address_edit_regit" href="#">设为默认地址</a>
						</div>
					</div>
					<div class="addr_list">
						<ul>
							<li class="addr active">
								<h4>姓名<span>号码</span></h4>
								<p>中国 江西 萍乡市 安源区 </p>
								<p>萍乡学院</p>
							</li>
						</ul>
						<div class="address_edit">
							<a class="address_edit_left" href="#">编辑</a>
							<a class="address_edit_regit" href="#">设为默认地址</a>
						</div>
					</div>
					<div class="addr_list">
						<ul>
							<li class="addr active">
								<h4>姓名<span>号码</span></h4>
								<p>中国 江西 萍乡市 安源区 </p>
								<p>萍乡学院</p>
							</li>
						</ul>
						<div class="address_edit">
							<a class="address_edit_left" href="#">编辑</a>
							<a class="address_edit_regit" href="#">设为默认地址</a>
						</div>
					</div>
					<div class="addr_list">
						<ul>
							<li class="addr active">
								<h4>姓名<span>号码</span></h4>
								<p>中国 江西 萍乡市 安源区 </p>
								<p>萍乡学院</p>
							</li>
						</ul>
						<div class="address_edit">
							<a class="address_edit_left" href="#">编辑</a>
							<a class="address_edit_regit" href="#">设为默认地址</a>
						</div>
					</div>
					<div class="addr_list">
						<ul>
							<li class="addr active">
								<h4>姓名<span>号码</span></h4>
								<p>中国 江西 萍乡市 安源区 </p>
								<p>萍乡学院</p>
							</li>
						</ul>
						<div class="address_edit">
							<a class="address_edit_left" href="#">编辑</a>
							<a class="address_edit_regit" href="#">设为默认地址</a>
						</div>
					</div>
					<div class="addr_list">
						<ul>
							<li class="addr active">
								<h4>姓名<span>号码</span></h4>
								<p>中国 江西 萍乡市 安源区 </p>
								<p>萍乡学院</p>
							</li>
						</ul>
						<div class="address_edit">
							<a class="address_edit_left" href="#">编辑</a>
							<a class="address_edit_regit" href="#">设为默认地址</a>
						</div>
					</div>
					<div class="address_add">
						<button>新增收货地址</button>
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