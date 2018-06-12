<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css"  href="lq/css/nav_style.css"/>
<title>导航</title>
</head>
<body>
<!--页面顶部-->
<div id="hd">
   
    <!--logo搜索框-->
    <div class="logo_line_out">
    <!--logo-->
        <div class="logo_line">
            <div class="logo">
                <img src="lq/img/nav/logo.png " height="100" width="300">
            </div>
    <!--搜索框-->
            <div class="search">
                <form action="" name="searchform" id="form_search_new" onsubmit="return searchsubmit();"method="get">
                  <input class="select_cart" >
                          <div class="select_">
                           <select class="color">
                                <option class="color"> 全部分类</option>
                                <option class="color"> 儿童</option>
                                <option class="color"> 教育</option>
                                <option class="color"> 小说</option>
                                <option class="color"> 文艺</option>
                                <option class="color"> 社科</option>
                                <option class="color"> 励志</option>
                                <option class="color"> 生活</option>
                           </select>
                          </div>

                    <input type="button" class="button" name="搜索按钮">
                </form>
            </div>
    <!--购物车-->
            <div class="ddnew_cart">
                <a href="book_shopcart.jsp" name="购物车" >
                <i class="icon_card"></i>
                购物车<b id="cart_items_count">0</b></a>
            </div>
    <!--个人订单-->
            <div class="ddnew_order">
                <a href="book_myorder.jsp" name="我的订单">我的订单
                <b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a>
            </div>
        </div>
    </div>
    <!--导航栏-->
    <div class="nav_top" name="一级导航栏">
        <div class="nav_top_img">
            <img src="lq/img/nav/nav_top_img.png">
        </div>
        <div class="nav_top_nav">
        <ul>
            <li><a href="book_index.jsp" name="nav1">首页</a></li>
            <li><a href="book_newbooks.jsp" name="nav2">新书上架</a></li>
            <li><a href="book_wellsell.jsp" name="nav3">图书畅销榜</a></li>
            <li><a href="book_hot.jsp" name="nav4">热门推荐</a></li>
            <li><a href="book_author.jsp" name="nav5">名人堂</a></li>
        </ul>
        </div>

    </div>
    <!--广告图片-->
    <div class="adv">
        <div class="book_1ad " name="广告" ></div>
    </div>
</div>
</body>
</html>