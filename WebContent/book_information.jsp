<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍详情</title>
<link rel="stylesheet" type="text/css" href="lq/css/newbooks_style.css" />
<link rel="stylesheet" type="text/css"href="lq/css/book_information.css" />
<link rel="stylesheet" type="text/css"href="lq/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<div class="tools"></div>
	<div id="hd"></div>
	<div id="text_center">
		<!--当前位置-->
		<div class="now_position">
			<p>
				当前位置：<a href="book_index.jsp">首页</a>/<a href="book_newbooks.jsp">新书上架</a>/<a
					href="book_information.jsp">斗罗大陆</a>
			</p>
		</div>
		<!--左侧作者图片信息-->
		<div class="author_left">
			<div class="author_img_big">
				<img src="lq/img/new_books/books_img/25228702-1_l_7.jpg" width="250">
			</div>
			<div class="author_small">
				<ul>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg"
						width="100"></li>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg"
						width="100"></li>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg"
						width="100"></li>
				</ul>
			</div>
		</div>
		<!--右侧作者详情-->
		<div class="author_right">
			<div class="author_name">
				<h2>斗罗大陆</h2>
			</div>
			<div class="author_introduce">
				<p>唐门外门弟子唐三，因偷学内门绝学为唐门所不容， 跳崖明志时却发现没有死，反而以另外一个身份来到了另一
					个世界，一个属于武魂的世界，名叫斗罗大陆。这里没有魔法 ，没有斗气，没有武术，却有神奇的武魂。这里的每个人，
					在自己六岁的时候，都会在武魂殿中令武魂觉醒。武魂有 动物，有植物，有器物 ，武魂可以辅助人们的日常生活。而其中一些特别出色
					的武魂却可以用来修炼并进行战斗，这个职业，是斗 罗大陆上最为强大也是最荣耀的职业“魂师”。</p>
			</div>
			<div class="author_books_money">
				<h1>
					<i class="fa fa-jpy"></i>50.00
				</h1>
				<form>
					<span> 数量: <input type="text" class="num" placeholder="0">
					</span> <a class="btn btn-lg btn-primary num_add">+</a> <a
						class="btn btn-lg btn-danger num_del num_disable">-</a> <br>
					<input type="button" class="btn btn-a btn-lg btn-danger num_cart"
						value="加入购物车" onclick='location.href=("book_shopcart.jsp")'>
					<input type="submit" class="btn btn-a btn-lg btn-danger num_buy"
						value="立即购买">
				</form>
			</div>
			<div class="author_books_like">
				<div class="author_like_other">
					<span>喜欢该作者的人还喜欢：</span> <a href="#">林夕</a> <a href="#">林夕</a> <a
						href="#">林夕</a> <a href="#">林夕</a>
				</div>
				<div class="author_book_other">
					<span>喜欢该他的人浏览过：</span> <a href="#">斗罗大陆</a> <a href="#">斗罗大陆</a> <a
						href="#">斗罗大陆</a>
				</div>
				<div class="author_introduce_other">
					<span>该作者推荐的图书：</span> <a href="#">斗罗大陆</a> <a href="#">斗罗大陆</a> <a
						href="#">斗罗大陆</a>
				</div>
			</div>

		</div>
		<!--下方推荐作者-->
		<div class="author_buttom">
			<div class="other_icon">
				<img src="lq/img/wellsell_books/author_icon_bottom.png">
			</div>
			<div class="other_img">
				<ul>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg">
						<a>斗罗大陆</a><br> <span><i class="fa fa-jpy"></i>50.00</span></li>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg">
						<a>斗罗大陆</a> <span><i class="fa fa-jpy"></i>50.00</span></li>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg">
						<a>斗罗大陆</a> <span><i class="fa fa-jpy"></i>50.00</span></li>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg">
						<a>斗罗大陆</a> <span><i class="fa fa-jpy"></i>50.00</span></li>
					<li><img src="lq/img/new_books/books_img/25228702-1_l_7.jpg">
						<a>斗罗大陆</a> <span><i class="fa fa-jpy"></i>50.00</span></li>

				</ul>
			</div>
		</div>
	</div>
	<div id="footer"></div>
	<script type="text/javascript" src="lq/js/jquery.min.js"></script>
	<script type="text/javascript" src="lq/js/nav.js"></script>
	<script type="text/javascript" src="lq/js/book_tools.js"></script>

</body>
</html>