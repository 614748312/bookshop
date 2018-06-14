<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆界面</title>
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="css/app.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
</head>

<body data-type="login">
	<script src="js/theme.js">
		
	</script>
	<div class="am-g tpl-g">
		<!-- 风格切换 -->
		<div class="tpl-skiner">
			<div class="tpl-skiner-toggle am-icon-cog"></div>
			<div class="tpl-skiner-content">
				<div class="tpl-skiner-content-title">选择主题</div>
				<div class="tpl-skiner-content-bar">
					<span class="skiner-color skiner-white" data-color="theme-white"></span>
					<span class="skiner-color skiner-black" data-color="theme-black"></span>
				</div>
			</div>
		</div>
		<div class="tpl-login">
			<div class="tpl-login-content">
				<h1 style="text-align: center; color: white;">登录</h1>
				<form class="am-form tpl-form-line-form">
					<div class="am-form-group">
						<input type="text" class="tpl-form-input" id="user-name"
							placeholder="请输入账号">
					</div>
					<div class="am-form-group">
						<input type="password" class="tpl-form-input" id="user-name"
							placeholder="请输入密码">
					</div>
					<div class="am-form-group">
						<button type="button"
							class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="http://cdn.bootcss.com/amazeui/2.7.2/js/amazeui.min.js"></script>
	<script src="js/app.js"></script>
</body>
</html>