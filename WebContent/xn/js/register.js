		$(document).ready(function(){
			var uname=null;
			var nc=null;
			var phone=null;
			var pasw=null;
			var gender=null;
			var email=null
			$("#ipuser").blur(function(){/*用户名---焦点失去执行方法*/
				var rxuser=/^[\u4e00-\u9fa5A-Za-z0-9]{4,20}$/;
				uname=$("#ipuser").val();
				var spanContent=document.getElementById("aa");
				if(uname.length==0 || !rxuser.test(uname)){
					spanContent.style.color="red";
					spanContent.innerText="用户名输入格式有误";
					
				}else{
					spanContent.style.color="black";
					document.getElementById("aa").innerText="输入正确";
					uname=$("#ipuser").val();
					
				}
			});
			$("#ipnc").blur(function(){/*昵称---焦点失去执行方法*/
				var rxnc=/^[\u4e00-\u9fa5A-Za-z0-9]{4,20}$/;
				var nc=$("#ipnc").val();
				var ncContent=document.getElementById("bb");
				if(nc.length==0 || !rxnc.test(nc)){
					ncContent.style.color="red";
					ncContent.innerText="昵称输入有误";
				}else{
					ncContent.style.color="black";
					ncContent.innerText="输入正确";
					nc=$("#ipnc").val();
					
				}
			});
			$("#ipphone").blur(function(){/*电话----焦点失去执行方法*/
				var rxphone=/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
				var phone=$("#ipphone").val();
				var phoneContent=document.getElementById("cc");
				if(phone.length===0 || !rxphone.test(phone)){
					phoneContent.style.color="red";
					phoneContent.innerText="号码输入有误";
				}else{
					phoneContent.style.color="black";
					phoneContent.innerText="输入正确";
					phone=$("#ipphone").val();
				}
			});
			
			//获得性别
			gender=$("input[name='sex']:checked").val();
			
			$("#ippasw").blur(function(){/*焦点失去执行方法*/
				var rxpasw=/^[a-zA-Z0-9]{6,12}$/;
				var pasw=$("#ippasw").val();
				var paswContent=document.getElementById("dd");
				if(pasw.length=0 || !rxpasw.test(pasw)){
					paswContent.style.color="red";
					paswContent.innerText="密码输入有误";
				}else{
					paswContent.style.color="black";
					paswContent.innerText="输入正确";
					pasw=$("#ippasw").val();
				}
			});
			
			$("#ippassword").change(function(){/*焦点失去执行方法*/
				
				if(this.value!=$("#ippasw").val()){
					document.getElementById("ee").innerText="两次密码输入不一致 ";
				}else{
					document.getElementById("ee").innerText="输入正确";
					
				}
			});
			
			
			$("#ipemail").blur(function(){/*焦点失去执行方法*/
				var rxemail=/^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
				var email=$("#ipemail").val();
				var emailContent=document.getElementById("ff");
				if(email.length==0 || !rxemail.test(email)){
					emailContent.style.color="red";
					emailContent.innerText="邮箱输入有误";
				}else{
					emailContent.style.color="black";
					emailContent.innerText="输入正确";
					email=$("#ipemail").val();
				}
			});
			
			//异步验证
			//创建XMLHttpRequest对象
			var xmlhttp;
			function getxhr(){
				if (window.XMLHttpRequest){
    			//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
   					 xmlhttp=new XMLHttpRequest();
				}
				else
				{
   				 // IE6, IE5 浏览器执行代码
   					 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				}
			}
			
			//给注册按钮添加click事件
			$("regist_btn").bind("click",function(){
				getxhr();
				var formdata=new FormData();
				formdata.append("user.userName",uname);//用户名
				formdata.append("user.",nc);
				formdata.append("user.",phone);
				formdata.append("user.",pasw);
				formdata.append("user.",gender);
				formdata.append("user.",email);
				
				//发送请求
				xmlhttp.open("POST","路径",true)
				xmlhttp.send(formdata);
				
			});
			
		});