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
	<div class="text_center">
		<div class="login_main">
			<!--左边图片信息-->
			<div class="login_left">
				<img src="xn/img/icon_06.jpg">
			</div>
			<!--右边输入信息显示-->
			<div class="login_right">
				<p class="login_password">会员登陆</p>
				<div class="login_main_in">
					<div class="login_row">
						<input type="text" name="" value="" class="login_input login_inp1"
							placeholder="用户名" />
						<div class="bbb1" id="bbb1"></div>
					</div>
					<div class="login_row">
						<input type="password" name="" value=""
							class="login_input login_inp2" placeholder="密码" />
						<div class="bbb1" id="bbb2">
							<span id="bb2"></span>
						</div>
					</div>
					<div class="login_valid">
						<span class="login_valid_nm">验证码：</span> <input type="password"
							name="" value="" class="login_input login_inp3" placeholder="" />
						<div class="btn111">
							<img alt="点击图片" src="" onclick="">
						</div>
					</div>
					<div class="login_tr">
						<input type="submit" class="ltn" id="login_ltn" value="登陆"
							onclick="javascript:window.location.href='book_index.jsp'">
					</div>
					<div class="login_wj fr">
						<a href="#" type="button" class="btn" id="qqqqq">忘记密码？</a>
						<!-- Modal -->

						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">找回密码</h4>
									</div>
									<div class="modal-body">
										<p>
											电子邮件地址： <input type="email" name="" value="" required />
										</p>
									</div>
									<div class="modal-foter">
										<button type="button" class="btn" data-dismiss="modal">关闭</button>
										<button type="button" class="btn">确认</button>
									</div>
									<div class="modal-fot ">请前往输入邮箱地址按提示进行密码修改</div>
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
	</div>
	<!--中间信息结束-->
	<!--底部信息显示-->
	<div id="footer"></div>
	<!--底部信息显示结束-->

</body>

</html>