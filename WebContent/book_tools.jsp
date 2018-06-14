<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
			 <s:if test="#session.nicheng!=null">
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
						<li><a href="#">注销</a></li>
					</ul>
					</li>					
			</ul>
			<div class="head_welcome">
					<span id="nickname"> 欢迎<font color="red">${session.nicheng}</font>进入奈布书城</span>				
			</div>
			</s:if>
			<s:else>
			<span id="nickname"> 欢迎光临奈布书城请 ,<a href="book_login.jsp"
					name="登录" class="login_link">登录</a><a href="book_register.jsp"
					name="注册" class="register_link">成为会员</a>
			</span>
			</s:else>
		</div>
	</div>
	<script type="text/javascript" src="lq/js/jquery.min.js"></script>
	<script type="text/javascript" src="lq/js/book_tools.js"></script>
</body>
</html>