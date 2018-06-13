<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>


<link rel="stylesheet" href="xn/css/register.css" />
<link rel="stylesheet" href="lq/css/bottom_style.css" />
<script type="text/javascript" src="lq/js/jquery.min.js"></script>
<script type="text/javascript" src="xn/js/register.js"></script>
<script type="text/javascript" src="lq/js/nav.js"></script>
</head>

<body>
		<div class="wrapper">
			<div class="header">
				<div class="regist_img"><img src="xn/img/icon_04.png" style="margin-left: 10px;" /></div>
				<div class="regist_num">
					<ul>
					<li>书城首页</li>
					<li>购物车</li>
					<li>购物导航</li>
				   </ul>
				</div>
			    <div class="regist_login">
				   <a href="login.jsp">登陆</a>	
			    </div>
			</div>
		<form class="form2" method="post" action="register" name="form1">
			<div class="form_help">
				<img src="xn/img/icon_03.png" style="margin-right: 1px;">
				<a href="#" class="help_icon" >首页</a>
				<a href="#" >注册帮助</a>
			</div>
			<div>
				<span class="tip">用户名：</span>
				<input type="text" id="ipuser" name="userName" value="" class="uersname" placeholder="请输入用户名">
				<span class="one"  id="aa"></span>
			</div>

			<div><span class="tip">昵称：</span>
				<input id="ipnc"type="text" name="nickName" value="" placeholder="请输入昵称" class="nicheng">
			    <span class="one" id="bb" ></span>

			</div>
			
            <div><span class="tip">手机号码：</span>
				<input id="ipphone" type="text" name="phoneNumber" value="" placeholder="请输入11位手机号" class="phone ">
				<span class="one" id="cc" ></span>

			</div>
			<div>
				<span class="tip">性别：</span>
				<input class="sex1" type="radio" name="sex" value="1" checked="checked">男
				<input class="sex1" type="radio" name="sex" value="2">女
            </div>
            
			

			<div><span class="tip">密码：</span>
				<input id="ippasw" type="password" name="password" value="" placeholder="请输入6-15个数字" class="pasw required">
		    	<span class="one" id="dd" ></span>

			</div>

			<div><span class="tip">确认密码：</span>
				<input type="password" value="" placeholder="请再次输入密码" id="ippassword" class="pasws required">
				<span class="one" id="ee" ></span>

			</div>

			<div><span class="tip">邮箱：</span>
				<input id="ipemail" type="text" name="email" value="" class="eal required" placeholder="请输入邮箱,邮箱格式,123@163.com">
				<span class="one" id="ff" ></span>

			</div>

			<div class="regist">
				<input type="submit" class="btn" id="regist_btn" value="立即注册">
			</div>
		
		</form>
     <div class="footer">
			<!--图片信息-->
			<div class="footer_pic_new">
				<div class="footer_pic_new_inner">
					<a name="foot_1" class="footer_pic01"><span></span></a>
					<a name="foot_2" class="footer_pic02"><span></span></a>
					<a name="foot_3" class="footer_pic03"><span></span></a>
					<a name="foot_4" class="footer_pic04"><span></span></a>
				</div>
				<div class="footer_nav_box">
					<!--学院信息-->
					<div class="footer_nav">
						<span class="sep">|</span>
						<a href="#">萍乡学院官网</a><span class="sep">|</span>
						<a href="#">信息与计算机学院官网</a><span class="sep">|</span>
						<a href="#">团队成员</a><span class="sep">|</span>
						<a href="#">反馈建议</a><span class="sep">|</span>
						<a href="#">加入我们</a><span class="sep">|</span>
					</div>
					<!--备案信息-->
					<div class="footer_copyright">
						<span>Copyright 信息与计算机工程学院 2015-2019</span>
						<img src="xn/img/logog.png" height="40" width="48">
						<span>出版物经营许可证 江西省萍乡市萍安北大道211号</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>