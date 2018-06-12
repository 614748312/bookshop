<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>顶部</title>
<link rel="stylesheet" type="text/css" href="lq/css/nav_style.css" />
</head>
<body>

	<!--最顶部链接-->
	<div class="tools">
		<div class="head" name="顶部链接">
			<ul class="head_nav">
				<li class="my_bookshop"><a class="menu_btn" href="#"
					name="我的书籍屋" id="a_channel"
					onmouseover="showgaoji('a_channel','nav_mybookshop')"
					onmouseout="hideotherchannel('a_channel','nav_mybookshop')">我的书籍屋</a>
					<ul class="head_card_list" id="nav_mybookshop"
						onmouseover="showgaoji('a_channel','nav_mybookshop')"
						onmouseout="hideotherchannel('a_myddchannel','nav_mybookshop');">
						<li><a href="#">我的订单</a></li>
						<li><a href="#">购物车</a></li>
						<li><a href="#">我的信息</a></li>
						<li><a href="#">账号安全</a></li>
					</ul>
			</ul>
			<div class="new_head_znx" id="znx_content" style="display: none;"></div>
			<div class="head_welcome">
				<span id="nickname"> 欢迎光临奈布书城，请 <a href="book_login.jsp"
					name="登录" class="login_link">登录</a> <a href="book_register.jsp"
					name="注册" class="register_link">成为会员</a>
				</span>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="lq/js/jquery.min.js"></script>
	<script type="text/javascript" src="lq/js/book_tools.js"></script>
</body>
</html>