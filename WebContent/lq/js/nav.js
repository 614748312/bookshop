
$(function(){

        $("#hd").load("book_nav.jsp")
        $("#footer").load("book_footer.jsp")
        $(".tools").load("book_tools.jsp")
    }
);
$(function () {
    var minsize=1210;
    var screensize=screen.width;
    if (screensize<minsize)
        {
        document.body.className="narrow_page";
        }
}
);

$("#new_page  li ").click(function(){
    $("#new_page  li ").removeClass('active')
    $(this).addClass('active')
});


$("#alertBtn").click(function(){
    $.DialogByZ.Alert({Title: "提示", Content: "您的请求失败",BtnL:"确定",FunL:alerts}) 
})
$("#confirmBtn").click(function(){
    $.DialogByZ.Confirm({Title: "", Content: "自动隐藏提示Tips弹窗插件</br>代码少使用方便",FunL:confirmL,FunR:Immediate})
})
$("#toastBtn").click(function(){
   $.DialogByZ.Autofade({Content: "加入购物车成功！！"})
})

$("#load").click(function(){
	  $.DialogByZ.Loading('image/loading.png') 
})
///
function confirmL(){
     	   $.DialogByZ.Close();
    	    $.DialogByZ.Alert({Title: "提示", Content: "您要求稍后开通",BtnL:"确定"})
}
//
function alerts(){
	  $.DialogByZ.Close();
}



