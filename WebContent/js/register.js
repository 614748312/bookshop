$(document)
		.ready(
				function() {
					$("#ipuser").blur(function() {/* 用户名---焦点失去执行方法 */
						var rxuser = /^[\u4e00-\u9fa5A-Za-z0-9]{4,20}$/;
						uname = $("#ipuser").val();
						var spanContent = document.getElementById("aa");
						getxhr();
						var sendData = "UserName=" + uname+ "&t=" + Math.random();
						var url = "findByuserName?" + sendData;
						xmlhttp.open("GET", url, true);
						xmlhttp.send();
						xmlhttp.onreadystatechange = function() {
							if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
								var registerdata = JSON.parse(xmlhttp.responseText);
								if(uname.length==0){
								   spanContent.style.color = "red";
								   spanContent.innerText = "用户名为空";
								} else if(!rxuser.test(uname)){
								   spanContent.style.color = "red";
								   spanContent.innerText = "用户名格式错误";
								}
								if(registerdata.checkResult == false) {
								   spanContent.style.color = "red";
								   spanContent.innerText = "用户名已存在";
								} else if (registerdata.checkResult == true && rxuser.test(uname)) {
								   spanContent.style.color = "black";
								   document.getElementById("aa").innerText = "输入正确";
								}
							}
						}
					});
					$("#ipnc").blur(function() {/* 昵称---焦点失去执行方法 */
						var rxnc = /^[\u4e00-\u9fa5A-Za-z0-9]{4,20}$/;
						var nc = $("#ipnc").val();
						var ncContent = document.getElementById("bb");
						if (nc.length == 0 || !rxnc.test(nc)) {
							ncContent.style.color = "red";
							ncContent.innerText = "昵称输入有误";
						} else {
							ncContent.style.color = "black";
							ncContent.innerText = "输入正确";
							nc = $("#ipnc").val();

						}
					});
					$("#ipphone").blur(function() {/* 电话----焦点失去执行方法 */
						var rxphone = /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
						var phone = $("#ipphone").val();
						var phoneContent = document.getElementById("cc");
						if (phone.length === 0 || !rxphone.test(phone)) {
							phoneContent.style.color = "red";
							phoneContent.innerText = "号码输入有误";
						} else {
							phoneContent.style.color = "black";
							phoneContent.innerText = "输入正确";
							phone = $("#ipphone").val();
						}
					});
					// 获得性别
					gender = $("input[name='sex']:checked").val();
					$("#ippasw").blur(function() {/* 焦点失去执行方法 */
						var rxpasw = /^[a-zA-Z0-9]{6,12}$/;
						var pasw = $("#ippasw").val();
						var paswContent = document.getElementById("dd");
						if (pasw.length = 0 || !rxpasw.test(pasw)) {
							paswContent.style.color = "red";
							paswContent.innerText = "密码输入有误";
							
						} else {
							paswContent.style.color = "black";
							paswContent.innerText = "输入正确";
							pasw = $("#ippasw").val();
						}
					});
					$("#ippassword")
							.change(
									function() {/* 焦点失去执行方法 */
										if (this.value != $("#ippasw").val()) {
											document.getElementById("ee").style.color="red";
											document.getElementById("ee").innerText = "两次密码输入不一致 ";
										} else {
											document.getElementById("ee").innerText = "输入正确";
										}
									});

					$("#ipemail")
							.blur(
									function() {/* 焦点失去执行方法 */
										var rxemail = /^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
										var email = $("#ipemail").val();
										var emailContent = document
												.getElementById("ff");
										if (email.length == 0
												|| !rxemail.test(email)) {
											emailContent.style.color = "red";
											emailContent.innerText = "邮箱输入有误";
										} else {
											emailContent.style.color = "black";
											emailContent.innerText = "输入正确";
											email = $("#ipemail").val();
										}
									});

					// 异步验证
					// 创建XMLHttpRequest对象
					var xmlhttp;
					function getxhr() {
						if (window.XMLHttpRequest) {
							// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
							xmlhttp = new XMLHttpRequest();
						} else {
							// IE6, IE5 浏览器执行代码
							xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
						}
					}
				});
function checkcolor(){
	var uil=$("#ipemail").css("color");
	alert($("#ipemail").css("color"));
	return false;
}