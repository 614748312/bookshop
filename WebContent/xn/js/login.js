function createXMLhttp() {  
    var xmlhttp;  
    if (window.XMLHttpRequest)  
    {  
        //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码  
        xmlhttp=new XMLHttpRequest();  
    }  
    else  
    {  
        // IE6, IE5 浏览器执行代码  
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
    }  
    return xmlhttp;  
}
function ajax(userName,password,yzm) {  
    var xmlhttp = createXMLhttp();
    //发送向指定url发送Ajax请求 
    var sendData = "UserName="+userName+"&Password="+password+"&Yzm="+yzm+"&t="+Math.random();//添加Math.random（）后缀消除缓存  
    var url = "checkuserNamepassword?"+sendData;  
    xmlhttp.open("GET",url,true);  
    xmlhttp.send();  
    //当请求得到响应时，执行的逻辑  
    xmlhttp.onreadystatechange=function(){ 
        if (xmlhttp.readyState==4 && xmlhttp.status==200)  
        {  
            var logindata = JSON.parse(xmlhttp.responseText);  
            if(logindata.checkResult == "none"){
            	$("#bbb3").css({color:"red"});
        		$("#bbb3").html("验证码错误!");
            }else if(logindata.checkResult == null){   
            	$("#bbb1").css({color:"red"});
        		$("#bbb1").html("该用户名不存在!");
            }else if (logindata.checkResult == true){  
                window.location.href="book_index.jsp";   
            }else if (logindata.checkResult == false){  
            	$("#bbb2").css({color:"red"});
        		$("#bbb2").html("密码输入错误!");
            }  
              
        }  
    }  
   
}  
function login1(){
	var username=$(".login_inp1").val().trim();
	var password=$(".login_inp2").val().trim();
	var checkCode=$(".yzm").val().trim();
	if(username.length==0){
		$("#bbb1").css({color:"red"});
		$("#bbb1").html("用户名不能为空!");
	}else if(password.length==0){
		$("#bbb2").css({color:"red"});
		$("#bbb2").html("密码不能为空!");
	}else if(checkCode.length==0){
		$("#bbb3").css({color:"red"});
		$("#bbb3").html("验证码不能为空!");
	}else{
		ajax(username,password,checkCode);
	}
	
	var t=setTimeout(function(){$("#bbb1,#bbb2,#bbb3").empty();}, 3000);
}	