<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书管理</title>
<link rel="stylesheet" href="${path }bookshop_admin/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${path }bookshop_admin/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="${path }bookshop_admin/css/app.css">
<link rel="stylesheet"
	href="${path }bookshop_admin/css/bootstrap.min.css" />
<script src="${path }bookshop_admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${path }bookshop_admin/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${path }bookshop_admin/js/jquery.min.js"></script>
<link rel="icon" type="image/png"
	href="${path }bookshop_admin/img/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${path }bookshop_admin/img/app-icon72x72@2x.png">
</head>
<body data-type="index">
	<script src="${path }bookshop_admin/js/theme.js"></script>
	<!-- 内容区域 -->
	<div class="tpl-content-wrapper">

		<div class="tpl-content-wrapper">
			<div class="row-content am-cf">
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title  am-cf">图书管理</div>

							</div>
							<div class="widget-body  am-fr">
								<div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
									<div
										class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
										<input type="text" class="am-form-field "> <span
											class="am-input-group-btn">
											<button
												class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
												type="button"></button>
										</span>
									</div>
								</div>
								<!-- 对图书信息进行添加 -->
								<form method="post" action="${path }addBook">
									<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
										<a href="javascript:;"
											class="am-form-group tpl-table-list-select"
											data-toggle="modal" data-target="#myModal1"> <i
											class="am-icon-pencil"></i> 添加图书
										</a>

										<!-- 模态框（Modal） -->
										<div class="modal fade" id="myModal1" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">&times;</button>
														<h4 class="modal-title" id="myModalLabel"
															style="color: black; font: 20px; text-align: center;">
															添加图书</h4>
													</div>
													<div class="modal-body"
														style="color: black; text-align: center; margin-bottom: 50px; height: 500px;">
														<li><span>&emsp;图书名：</span><input type="text"
															name="book_name" /></li>
														<li><span>&emsp;作者：</span> <select name="state"
															id="state" class="state pickout" placeholder="选择一个作者">
																<option value="option1">所有类别</option>
																<option value="option2">IT业界</option>
																<option value="option3">数码产品</option>
																<option value="option3">笔记本电脑</option>
																<option value="option3">平板电脑</option>
																<option value="option3">只能手机</option>
																<option value="option3">超极本</option>
														</select></li>
														<li><span>出版社：</span> <select name="state" id="state"
															class="state pickout" placeholder="选择一个出版社">
																<option value="option1">所有类别</option>
																<option value="option2">IT业界</option>
																<option value="option3">数码产品</option>
																<option value="option3">笔记本电脑</option>
																<option value="option3">平板电脑</option>
																<option value="option3">只能手机</option>
																<option value="option3">超极本</option>
														</select></li>
														<li><span>&emsp;&emsp;单价：</span><input type="text"
															name="book_tip" /></li>
														<li><span>一级类别：</span> <select name="state"
															id="state" class="state pickout" placeholder="选择一级类别">
																<option value="option1">所有类别</option>
																<option value="option2">IT业界</option>
																<option value="option3">数码产品</option>
																<option value="option3">笔记本电脑</option>
																<option value="option3">平板电脑</option>
																<option value="option3">只能手机</option>
																<option value="option3">超极本</option>
														</select></li>
														<li><span>二级类别：</span> <select name="state"
															id="state" class="state pickout" placeholder="选择二级类别">
																<option value="option1">所有类别</option>
																<option value="option2">IT业界</option>
																<option value="option3">数码产品</option>
																<option value="option3">笔记本电脑</option>
																<option value="option3">平板电脑</option>
																<option value="option3">只能手机</option>
																<option value="option3">超极本</option>
														</select></li>

														<li><label style="width: 150px;">图片：</label><input
															id="file1" name="file" type="file"
															onchange="fileUpload();" /><i></i></li>
														<li><label style="width: 150px;">&nbsp;</label><img
															src="" id="pic" width="120px" border="0" /><i></i></li> <input
															id="picPath" name="picPath" type="hidden" />




														<%-- <li><span>图书简介：</span><input type="text" name="" /></li>
														<li><span>图书照片：</span><img src="img/a5.png">
															<button class="modal-body-ll">...</button></li> --%>
													</div>
													<div class="modal-footer">
														<button type="submit" class="btn btn-default"
															data-dismiss="modal">关闭</button>
														<button type="submit" class="btn btn-primary">
															确认提交</button>
													</div>
												</div>
								</form>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal -->
						</div>
					</div>
					<!-- 图书信息 -->
					<div class="am-u-sm-12">
						<table width="100%"
							class="am-table am-table-compact am-table-striped tpl-table-black ">
							<thead>
								<tr>
									<th>图书名</th>
									<th>作者</th>
									<th>出版社</th>
									<th>单价</th>
									<th>图书一级类别</th>
									<th>图书二级类别</th>
									<th>图书简介</th>
									<th>图书照片</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>

								<!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel"
													style="color: black; font: 20px; text-align: center;">
													图书信息修改</h4>
											</div>
											<div class="modal-body"
												style="color: black; text-align: center; margin-bottom: 50px; height: 500px;">

												<li><span>&emsp;图书名：</span><input type="text" name="" /></li>
												<li><span>&emsp;作者：</span> <select name="state"
													id="state" class="state pickout" placeholder="选择一个作者">
														<option value="option1">所有类别</option>
														<option value="option2">IT业界</option>
														<option value="option3">数码产品</option>
														<option value="option3">笔记本电脑</option>
														<option value="option3">平板电脑</option>
														<option value="option3">只能手机</option>
														<option value="option3">超极本</option>
												</select></li>
												<li><span>出版社：</span> <select name="state" id="state"
													class="state pickout" placeholder="选择一个出版社">
														<option value="option1">所有类别</option>
														<option value="option2">IT业界</option>
														<option value="option3">数码产品</option>
														<option value="option3">笔记本电脑</option>
														<option value="option3">平板电脑</option>
														<option value="option3">只能手机</option>
														<option value="option3">超极本</option>
												</select></li>
												<li><span>&emsp;&emsp;单价：</span><input type="text"
													name="" /></li>
												<li><span>一级类别：</span><input type="text" name="" /></li>
												<li><span>二级类别：</span><input type="text" name="" /></li>
												<li><span>图书简介：</span><input type="text" name="" /></li>
												<li><span>图书照片：</span><img src="img/a5.png">
													<button class="modal-body-ll">...</button></li>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary">提交更改</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>
								<s:iterator value="pb.list" id="info">
									<tr class="gradeX">
										<td class="am-text-middle"><s:property
												value="#info.bookISBN" /></td>
										<td class="am-text-middle"><s:property
												value="#info.bookName" /></td>
										<td class="am-text-middle"><s:property
												value="#info.bookImage" /></td>
										<td class="am-text-middle"><s:property
												value="#info.authorId" /></td>
										<td class="am-text-middle"><s:property
												value="#info.publishHouseId" /></td>
										<td class="am-text-middle"><s:property
												value="#info.bookUnitPrice" /></td>
										<td class="am-text-middle"><s:property
												value="#info.bookOneType" /></td>
										<td class="am-text-middle"><s:property
												value="#info.bookOneType" /></td>
										<td class="am-text-middle">
											<div class="tpl-table-black-operation">


												<a href="javascript:;" data-toggle="modal"
													data-target="#myModal"> <i class="am-icon-pencil"></i>
													编辑
												</a> &nbsp;|&nbsp; <a href='#'
													onclick="del(<s:property value="#info.bookISBN"/>)">删除</a>
											</div>
										</td>
									</tr>
								</s:iterator>
								<tr>
									<td colspan="7" align="center">
										<div class="pagination">
											第
											<s:property value="#request.pb.currentPage" />
											页 &nbsp;&nbsp; 共
											<s:property value="#request.pb.totalPage" />
											页 &nbsp;&nbsp; 共
											<s:property value="#request.pb.count" />
											条信息
											<div style="height: 10px;"></div>
											<s:if test="#request.pb.currentPage == 1"> 首页&nbsp;&nbsp;上一页 </s:if>
											<s:else>
												<a href='#' onclick="fy(1)">首页</a>
												<a href='#'
													onclick="fy(<s:property value="#request.pb.currentPage - 1"/>)">上一页</a>
											</s:else>
											<s:if test="#request.pb.currentPage != #request.pb.totalPage">
												<a href='#'
													onclick="fy(<s:property value="#request.pb.currentPage + 1"/>)">下一页</a>
												<a href='#'
													onclick="fy(<s:property value="#request.pb.totalPage"/>)">尾页</a>
											</s:if>
											<s:else>下一页&nbsp;&nbsp;尾页</s:else>
											&nbsp;&nbsp; 跳转至 <input type="text"
												style="color: #282d2f; height: 22px; border: 1px solid #888; width: 30px; border-radius: 0.2rem;"
												name="page" id="page" /> 页 <a href='#' onclick="validate()">跳转</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
							function fileUpload() {
								var files = ['file1'];  //将上传三个文件 ID 分别为file2,file2,file3
								$.ajaxFileUpload( {
									url : 'fileUploadAction',     //用于文件上传的服务器端请求地址  
									secureuri : false,            //一般设置为false  
									fileElementId : files,        //文件上传空间的id属性  <input type="file" id="file" name="file" />  
									dataType : 'json',            //返回值类型 一般设置为json  
									success : function(data, status) {
										var fileNames = data.fileFileName; //返回的文件名 
										var filePaths = data.filePath;     //返回的文件地址 
										for(var i=0;i<data.fileFileName.length;i++){
											//将上传后的文件 添加到页面中 以进行下载		
											alert("${path }attached/");
											$("#pic").attr("src","${path }attached/"+filePaths[i]);	
											$("#picPath").val("attached/"+filePaths[i]);	
										}
									}
								})
							}
						</script>
	<script type="text/javascript">
		
		 function fy(page)
        {
			window.document.location.href = "${path}findConditionByKeywords.action?currentPage=" + page 		  
        }
		function validate()
        {
            var page = document.getElementById("page").value;
            if(page > <s:property value="#request.pb.totalPage"/> || page <= 0 )
            {
                alert("你输入的页数大于最大页数或小于最小页面，页面将跳转到首页！");
                fy(1)
             }else{
            	fy(page)
           }
        }
	</script>
	<script type="text/javascript">
		function del(infoId){
			if(window.confirm("您确定要删除吗？"))
			{
			   location.href="${path}delBook.action?bookISBN="+infoId;
			 }
		}
	</script>
	<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	<script src="${path }bookshop_admin/js/amazeui.min.js"></script>
	<script src="${path }bookshop_admin/js/amazeui.datatables.min.js"></script>
	<script src="${path }bookshop_admin/js/dataTables.responsive.min.js"></script>
	<script src="${path }bookshop_admin/js/app.js"></script>

</body>
</html>