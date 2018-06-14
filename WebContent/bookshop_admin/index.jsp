<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主界面</title>
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="css/app.css">
<script src="js/jquery.min.js"></script>
<link rel="icon" type="image/png" href="img/favicon.png">
<link rel="apple-touch-icon-precomposed" href="img/app-icon72x72@2x.png">
</head>
<body data-type="index">
	<script src="js/theme.js"></script>
	<div class="am-g tpl-g div">
		<!-- 头部 -->
		<header> <!-- logo -->
		<div class="am-fl tpl-header-logo">
			<a href="javascript:;"><h1>图书销售管理系统</h1> </a>
		</div>
		<!-- 右侧内容 -->
		<div class="tpl-header-fluid">
			<!-- 其它功能-->
			<div class="am-fr tpl-header-navbar">
				<ul>

					<!-- 新提示 -->
					<li class="am-dropdown" data-am-dropdown><a
						href="javascript:;" class="am-dropdown-toggle"
						data-am-dropdown-toggle> <i class="am-icon-cog"></i> <span>
								账号设置</span>
					</a> <!-- 弹出列表 -->
						<ul class="am-dropdown-content tpl-dropdown-content">
							<li class="tpl-dropdown-menu-notifications"><a
								href="javascript:;"
								class="tpl-dropdown-menu-notifications-item am-cf">
									<div class="tpl-dropdown-menu-notifications-title">
										<i class="am-icon-star"></i> <span> 修改密码</span>
									</div>
							</a></li>
						</ul></li>




					<!-- 退出 -->
					<li class="am-text-sm"><a href="javascript:;"> <span
							class="am-icon-sign-out"></span> 退出
					</a></li>
				</ul>
			</div>
		</div>

		</header>
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
		<!-- 侧边导航栏 -->
		<div class="left-sidebar">
			<!-- 用户信息 -->
			<div class="tpl-sidebar-user-panel">
				<div class="tpl-user-panel-slide-toggleable">
					<div class="tpl-user-panel-profile-picture">
						<img src="img/user09.png" alt="">
					</div>
					<span class="us er-panel-logged-in-text"> <i
						class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>李白小哥哥
					</span>

				</div>
			</div>

			<!-- 菜单 -->
			<ul class="sidebar-nav">
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 信息管理 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a href="book_order.jsp"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 订单管理
						</a></li>
						<li class="sidebar-nav-link"><a href="book_publishmg.jsp"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 出版社管理
						</a></li>
						<li class="sidebar-nav-link"><a href="${path}findConditionByKeywords.action"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span>图书管理
						</a></li>
						<li class="sidebar-nav-link"><a href="book_user.jsp"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span>用户管理
						</a></li>
						<li class="sidebar-nav-link"><a href="book_author.jsp"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span>作者管理
						</a></li>
					</ul></li>
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 信息查询 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a href="book_sales.jsp"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span>
								出版社销售查询
						</a></li>
						<li class="sidebar-nav-link"><a
							href="book_mdistribution.jsp" target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 金额分配报表
						</a></li>
						<li class="sidebar-nav-link"><a href="book_diary.jsp"
							target="box"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 日志管理
						</a></li>
					</ul></li>

			</ul>
		</div>
	</div>
	</div>
	<!-- 内容区域 -->
	<div class="tpl-content-wrapper">

		<iframe id="content" src="book_order.jsp" name="box"
			style="height: 690.4px; width: 1400px; border-width: 0px;"
			scrolling="no"></iframe>
	</div>
	<script src="js/amazeui.min.js"></script>
	<script src="js/amazeui.datatables.min.js"></script>
	<script src="js/dataTables.responsive.min.js"></script>
	<script src="js/app.js"></script>

</body>
</html>