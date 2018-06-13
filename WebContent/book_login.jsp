<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆</title>
<link rel="stylesheet" href="xn/css/login.css" />
<link rel="stylesheet" href="lq/css/bottom_style.css" />
<link rel="stylesheet" href="xn/css/modal.min.css">
<script type="text/javascript" src="lq/js/jquery.min.js"></script>
<script type="text/javascript" src="xn/js/login.js"></script>
<script type="text/javascript" src="xn/js/modal.min.js"></script>
<script type="text/javascript" src="lq/js/nav.js"></script>
</head>
<body>
		<!--顶部图片信息-->
		<div class="login_head">
			<img src="xn/img/icon_04.png">
		</div>
		<!--顶部结束-->
		<!--中间部分信息显示-->
		<div class="login_main">
			<!--左边图片信息-->
			<div class="login_left"><img src="xn/img/icon_06.jpg"></div>
			<!--右边输入信息显示-->
			<div class="login_right">
				<p class="login_password">密码登陆</p>
				<div class="login_main_in">
					<div class="login_row">
						<input id="userNameid" type="text" name="userName" value="" class="login_inp1" placeholder="用户名" />
						<div class="bbb1" id="bbb1"></div>
					</div>
					<div class="login_row">
						<input id="passwordid" type="password" name="password" value="" class="login_inp2" placeholder="密码" />
						<div class="bbb1" id="bbb2"></div>
					</div>
					<div class="login_valid">
						<span class="login_valid_nm">验证码：</span>
						<input type="password" name="yzm" value="" class="yzm" placeholder="验证码" />
					    <div class="btn111"><img alt="点击图片" src="${pageContext.request.contextPath}/validateCode.action" onclick=""></div>
					    <div class="bbb1" id="bbb3"></div> 
					</div>
					<div class="login_tr">
						<input type="submit" class="ltn" id="login_ltn" value="登陆" onclick="login1()">
					</div>
					<div class="login_wj fr">
						<button type="button" class="btn" id="qqqqq">
                                                  忘记密码
                        </button>
						<!--<a href="changpsw.html">忘记密码</a>-->&nbsp;&nbsp;|&nbsp;&nbsp;

						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="myModalLabel">找回密码</h4>
									</div>
									<div class="modal-body">
										<p>电子邮件地址：
										<input type="email"  name="email" value=""  required/>
										</p>
									</div>
									<div class="modal-foter">
										<button type="button" class="btn" data-dismiss="modal">关闭</button>
										<button type="button" class="btn">确认</button>
									</div>
									<div class="modal-fot ">
										请在输入邮箱账号后点确认按钮，查看电子邮件并修改密码
									</div>
								</div>
							</div>
						</div>

						<!-- Events -->
						<script>
							$("#qqqqq").click(function() {
								$("#myModal").modal('show');
							})
						</script>

						<a href="book_register.jsp">注册</a>
					</div>
				</div>
			</div>
		</div>
		<!--中间信息结束-->
		<!--底部信息显示-->
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
		</div><!--底部信息显示结束-->

	</body>


</html>