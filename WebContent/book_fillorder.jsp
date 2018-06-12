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
		<title>结算账单界面</title>
	    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/bottom_style.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/nav_style1.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/fillorder.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/mcy/css/yourlike.css"  />
	</head>
	<body>
		<!--页面顶部-->
		<div class="tools"></div>

		<!--我的购物车流程-->
		<div class="logo_line1" name="我的购物车流程">
			<div class="w960">
				<div class="shopping_prcedure" style="background: url(mcy/img/procedure_bg2.png) 0 0 no-repeat;">
					<span class="current">我的购物车</span>
					<span>填写订单</span>
					<span>完成订单</span>
				</div>
				<div class="logo1">
					<a href="#"><img src="mcy/img/logo.jpg" alt=""></a>
				</div>
			</div>
		</div>
		
		
		<!--我的购物地址-->
		<div class="address">
			<!--标题-->
			<h3 class="title">收货人信息</h1>
			<!--地址-->	
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
			</div >	
			<!--地址-->	
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
			</div >	
			<!--地址-->	
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
			</div >	
			<!--地址-->	
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
			</div >	
			<!--地址-->	
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
			</div >	
			<div class="address_add">
				<button>新增收货地址</button>
		    </div>
		</div>
	    
	    
	    <!--  结算   -->
        <div id="" class="w960">
			<!--信息-->
			<h3>结算单</h3>
			<div class="shopping_title">
				<ul >
				    <li class="f1" style="visibility: hidden;">图书</li>
				    <li class="f2">商品信息</li>
				    <li class="f3">单价（元）</li>
				    <li class="f4">数量</li>
				    <li class="f4">金额</li>
			    </ul>
			</div>
			<!--书籍详细信息-->
			<div class="shopping_r">
				<ul >
				    <li class="f1"><a href="#"><img src="mcy/img/shu1.jpg" alt="" width="80px" height="80px"></a></li>
            	    <li class="f2"><a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a></li>
				    <li class="f3">￥50</li>
				    <li class="f4">1</li>
				    <li class="f4">￥50</li>
			    </ul>
			</div>
			<div class="shopping_r">
				<ul >
				    <li class="f1"><a href="#"><img src="mcy/img/shu1.jpg" alt="" width="80px" height="80px"></a></li>
            	    <li class="f2"><a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a></li>
				    <li class="f3">￥50</li>
				    <li class="f4">1</li>
				    <li class="f4">￥50</li>
			    </ul>
			</div>
			<div class="shopping_r">
				<ul >
				    <li class="f1"><a href="#"><img src="mcy/img/shu1.jpg" alt="" width="80px" height="80px"></a></li>
            	    <li class="f2"><a href="#">书名书名书名书名书名书名书名书名书名书名书名书名</a></li>
				    <li class="f3">￥50</li>
				    <li class="f4">1</li>
				    <li class="f4">￥50</li>
			    </ul>
			</div>
			<!-- 结算  -->
			<div class="shopping_sett" >
				<div class="shopping_sett_left">
					<span>配送到：</span>
					<p >中国江西萍乡市 安源区   萍乡学院 </p>

				</div>
				<div class="shopping_sett_right">
					<div class="shopping_sett_right_f1">
						<span>商品金额：</span><span class="sett_right_f2">￥100元</span>
					</div>
					<div class="shopping_sett_right_f2">
						<span>应付款：</span><span class="sett_right_f2">￥100元</span>
					</div>
				</div>
			</div>
			<div class="sett">
				 <div class="sett_buttom">
				 	<a href="book_ordercompl.jsp"><button>支付</button></a>
				 </div>
				 <div class="settup_buttom">
				 	<button>放弃支付</button>
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