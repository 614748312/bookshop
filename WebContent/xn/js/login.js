//创建XMLHttpRequest对象
var xhr;
function login(){
	
	var psssword=$(".login_inp2").val().trim();
	var checkCode=$(".login_valid_nm").val().trim();
	var username=$(".login_inp1").val().trim();
	if(username.length==0){
		$("#bbb1").css({color:"red"});
		$("#bbb1").html("用户名不能为空!");
	}else{
		$("#bbb1").html("");
	}
	if(psssword.length==0){
		$("#bbb2").css({color:"red"});
		$("#bbb2").html("密码不能为空!");
	}else{
		$("#bbb2").html("");
	}
	
	if(checkCode.length==0){
		
	}else{
		
	}
	
	/*getxhr();
	var formdata=new FormData();
	formdata.append("",username);//用户名
	formdata.append("",psssword);
	formdata.append("",checkCode);
	//发送请求
	xmlhttp.open("POST","路径",true)
	xmlhttp.send(formdata);*/
}

function getxhr(){
	if (window.XMLHttpRequest){
	//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		xhr=new XMLHttpRequest();
	}
	else
	{
		 // IE6, IE5 浏览器执行代码
		xhr=new ActiveXObject("Microsoft.XMLHTTP");
	}
}