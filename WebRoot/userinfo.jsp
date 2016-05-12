<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>在线书城</title>
<!-- CUSTOM STYLE -->
<link href="css/style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- BOOTSTRAP -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- COLOR FILE -->
<link href="css/color.css" rel="stylesheet">
<!-- FONT AWESOME -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- BX SLIDER -->
<link href="css/jquery.bxslider.css" rel="stylesheet">
<!-- Boostrap Slider -->
<link href="css/bootstrap-slider.css" rel="stylesheet">
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
<link href="css/bootstrap-editable.css" rel="stylesheet" />
<link href="css/bootkit.css" rel="stylesheet" />
<!-- responsive -->
<link href="css/responsive.css" rel="stylesheet">
<!-- Component -->
<link href="js/dl-menu/component.css" rel="stylesheet">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" type="text/css" href="css/bookblock.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.panel {
	border: 1;
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;
	margin-bottom: 30px;
}

.panel .panel-body {
	border-width: 0;
	border-style: none;
	border-top: none;
	border-right-color: none;
	border-bottom-color: none;
	border-left-color: none;
}

.bk-avatar img.bk-img-120 {
	width: 120px;
	height: 120px;
}

.bk-border-3x {
	border-width: 3px !important;
}

.bk-border-light-gray {
	border: 1px solid #dfdfdf !important;
}

.img-circle {
	border-radius: 50%;
}

.userinfo>a {
	color: orange;
	font-size: x-large;
}

.userinfo a:hover {
	background-color: #f5f5f5 !important;
	text-decoration: none;
}

.pic img {
	float: left;
	max-width: 80px;
	max-height: 90px;
	margin-right: 5%;
	margin-bottom: 5%;
}

.msg p {
	margin: 0;
}

.msg .book-title {
	font-size: x-large;
	color: #FF9606;
}

.orderno {
	margin-left: 15%;
}

.btn.btn-primary {
	background: #FE980F;
	color: white;
	border: 0 none;
	border-radius: 0;
}

.checkallorder {
	text-align: center;
	margin-bottom: 15px;
}

.modifyitem {
	text-align: center;
	vertical-align: middle;
}

.modifyitem>i {
	font-size: 80px;
	margin: 20px;
}

.modifyitem>a {
	color: orange;
}

.over {
	position: fixed;
	left: 0px;
	top: 0px;
	z-index: 1;
}

.over .over_child {
	width: 400px;
	height: 250px;
	padding: 15px;
	margin-left: auto;
	margin-right: auto;
	background-color: white;
	opacity: 1;
	position: fixed;
	z-index: 100;
	border-radius: 20px;
	border: 5px solid orange;
}

.over .over_child p {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	color: white;
}

.over .over_child table {
	margin-left: auto;
	margin-right: auto;
	border-collapse: separate;
	border-spacing: 10px;
}

.over .over_child table td {
	text-align: center;
}

.error {
	color: red;
}

.mail {
	font-size: large;
}

.order_list tbody td {
	vertical-align: top;
	text-align: center;
}

.order_list thead th {
	vertical-align: top;
	text-align: center;
}

.order_list thead .order_number {
	vertical-align: top;
	text-align: left;
}

.order-table col-md-9 col-md-offset-1 col-xs-12 table tbody td {
	vertical-align: top;
	text-align: center;
}

a {
	color: orange;
}

#address .panel {
	height: 300px;
}

.btn {
	margin: 2px;
}
.addaddressform{
    width:40%;
    height:540px;
    padding: 15px;
	margin-left: auto;
	margin-right: auto;
	background-color: white;
	opacity: 1;
	position: fixed;
	z-index: 100;
}
.addaddressform input{
    margin-bottom:8px;
    width:80%;
}
</style>
</head>
<body>
	<div id="addaddressform" class="panel addaddressform" style="display:none">
		<div class="panel-body text-center bk-padding-off bk-wrapper">
			<img src="images/addressheader.jpg" alt="" class="img-responsive">
		</div>
		<div class="panel-body text-center">
			<form onSubmit="return false;">
				<input type="text" placeholder="省份" id="address1" /> 
				<input type="text" placeholder="地区" id="address2" /> 
				<input type="text" placeholder="详细地址" value="" id="address3" /> 
			    <input type="text" placeholder="邮政编码" id="address4" /> 
			    <input type="text" placeholder="收货人姓名" value="" id="consignee" />
				<input type="text" placeholder="电话号码" value="" id="tel" />
			</form>
			<div class="error">我是错误信息</div>
			<a id="confirmaddaddress" class="btn btn-primary">确定</a>
			<a id="canceladdaddress" class="btn btn-primary">取消</a>
		</div>
	</div>
	<div id="oldpasswordform" class="over" style="display:none;">
		<div id="oldpasswordform_child" class="over_child">
			<table>
				<tbody id="over_tb">
					<tr>
						<td>请输入旧密码：</td>
						<td><input id="oldpassword" type="password"></td>
					</tr>
				</tbody>
				<tr>
					<td colspan="2" class="error" id="oldpassworderror"></td>
				</tr>
				<tr>
					<td><a id="cancel" class="btn btn-primary">取消</a></td>
					<td><a id="ok" class="btn btn-primary">确定</a></td>
				</tr>

			</table>
		</div>
	</div>
	<div id="newpasswordform" class="over" style="display:none;">
		<div id="newpasswordform_child" class="over_child">
			<table>
				<tbody id="new_over_tb">
					<tr>
						<td>新密码：</td>
						<td><input id="newpassword" type="password"></td>
					</tr>
					<tr>
						<td>重复新密码：</td>
						<td><input id="renewpassword" type="password"
							onblur="check()"></td>
					</tr>
				</tbody>
				<tr>
					<td colspan="2" class="error" id="newpassworderror"></td>
				</tr>
				<tr>
					<td><a id="new_cancel" class="btn btn-primary">取消</a></td>
					<td><a id="new_ok" class="btn btn-primary">确定</a></td>
				</tr>

			</table>
		</div>
	</div>
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>
	<!--WRAPPER START-->
	<div class="wrapper kode-header-class-3">
		<!--HEADER START
		-->
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand">Bookaholic</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden-sm"><a href="index.jsp">主页</a></li>
						<li class="hidden-sm"><a href="books.jsp">开始选购</a></li>
						<li class="hidden-sm"><a href="cart.jsp">购物车</a></li>
						<li class="hidden-sm"><a href="userinfo.jsp">我的账户</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<!--HEADER END-->
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>我的账户</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">我的账户</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--CONTENT START-->
		<div
			class="panel bk-widget bk-border-off bk-noradius col-md-8 col-md-offset-2 col-sm-12"
			style="margin-top:2%;">
			<div class="panel-body text-center bk-padding-off bk-wrapper">
				<img src="images/userinfobk.jpg" alt="" class="img-responsive">
				<div class="bk-avatar bk-avatar80-halfdown">
					<div class="bk-vcenter"></div>
					<a href="#"> <img src="images/userpic/1.JPG" alt=""
						class="img-circle bk-img-80 bk-border-info bk-border-darken bk-border-3x">
					</a>
				</div>
			</div>
			<div
				class="panel-body bk-ltr bk-padding-bottom-10 bk-avatar80-halfdown-after text-center bk-bg-white">
				<h3 class="bk-margin-off">
					<strong>Crenshaw</strong>
				</h3>
				<p class="bk-margin-off-bottom bk-fg-gray">
					<em>"Books are to mankind what memory is to the individual"</em>
				</p>
			</div>
			<div class="panel-body bk-ltr">
				<div class="row text-center userinfo">
					<a class="col-xs-4"> <i class="icon-money"></i><small
						class="bk-fg-inverse bk-fg-darken">代付款</small>
						<h4 class="bk-margin-off-bottom" id="unpaid"></h4>
					</a> <a class="col-xs-4"> <i class="icon-truck"></i><small
						class="bk-fg-inverse bk-fg-darken">待收货</small>
						<h4 class="bk-margin-off-bottom" id="paid"></h4>
					</a> <a class="col-xs-4"> <i class="icon-paint-brush"></i><small
						class="bk-fg-inverse bk-fg-darken">待评价</small>
						<h4 class="bk-margin-off-bottom" id="unapprise"></h4>
					</a>
				</div>
			</div>
		</div>
		<div class="product-review-tabs col-md-12 col-md-8 col-md-offset-2"
			style="margin-top:10px;">
			<!--NAV TABS START-->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#orders"
					aria-controls="Description" role="tab" data-toggle="tab"
					aria-expanded="true">我的订单</a></li>
				<li role="presentation" class=""><a href="#info"
					aria-controls="reviews" role="tab" data-toggle="tab"
					aria-expanded="false">修改个人信息</a></li>
				<li role="presentation" class=""><a href="#address"
					aria-controls="reviews" role="tab" data-toggle="tab"
					aria-expanded="false" onclick="">管理收货地址</a></li>
			</ul>
			<!--NAV TABS END-->
			<!--TAB PANEL START-->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="orders">
					<h4>最近的订单</h4>
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>订单详情</th>
									<th>收货人</th>
									<th>金额</th>
									<th>订单状态</th>
								</tr>
							</thead>
							<tbody id="ordertable">

							</tbody>
						</table>
						<div style="text-align: center;">
							<a class="btn btn-primary">查看所有订单</a>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="info">
					<div class="modifyitem">
						<i class="fa fa-envelope"></i><br> <em> <a href="#"
							id="email" data-type="text" data-original-title="电子邮箱"
							class="editable editable-click editable-disabled mail">wcincredible@163.com</a>
						</em> <br> <a id="enable" class="btn btn-primary"
							style="margin-left:20px;">编辑</a> <a id="submitemail"
							class="btn btn-primary" style="margin-left:20px;">保存</a>
					</div>
					<hr>
					<div class="modifyitem">
						<i class="fa fa-key"></i><br> <a class="btn btn-primary"
							onclick="modifypassword()">修改密码</a>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="address">
					<div class="panel col-sm-4 item">
						<div class="panel-body text-center bk-padding-off bk-wrapper">
							<img src="images/addressheader.jpg" alt="" class="img-responsive">
						</div>
						<div class="panel-body text-center">
							<h3 class="bk-margin-off">
								<strong>添加新地址</strong>
							</h3>
							<a onclick="addaddress()"><i class="fa fa-plus"
								style="font-size:xx-large;"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--CONTENT END-->
		<footer class="footer-3">
			<div class="container">
				<div class="row">
					<!--CATEGORY WIDGET START-->
					<div class="col-md-6 col-sm-6">
						<div class="widget widget-categories">
							<h2>站点地图</h2>
							<ul>
								<li><a href="index.jsp">主页</a></li>
								<li><a href="books.jsp">开始选购</a></li>
								<li><a href="cart.jsp">购物车</a></li>
								<li><a href="userinfo.jsp">我的账户</a></li>
							</ul>
						</div>
					</div>
					<!--CATEGORY WIDGET END-->
					<!--NEWSLETTER START-->
					<div class="col-md-6 col-sm-6">
						<div class="widget widget-contact-info">
							<h2>联系我们</h2>
							<ul>
								<li><i class="fa fa-paper-plane"></i>
									<div class="kode-text">
										<h4>地址</h4>
										<p>北京市海淀区西土城路10号北京邮电大学</p>
									</div></li>
								<li><i class="fa fa-phone"></i>
									<div class="kode-text">
										<h4>电话号码</h4>
										<p>+55(62) 55258-4570</p>
										<p>+55(62) 55258-4570</p>
									</div></li>
								<li><i class="fa fa-envelope-o"></i>
									<div class="kode-text">
										<h4>电子邮箱</h4>
										<a href="#">teamx@bupt.edu.cn</a>
									</div></li>
							</ul>
						</div>
					</div>
					<!--NEWSLETTER START END-->
				</div>
			</div>
		</footer>
		<div class="copyrights">
			<div class="container">
				<p>Copyrights © 2015-16 BUPTSSE. All rights reserved</p>
				<div class="cards">
					<img src="images/cards.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/dl-menu/modernizr.custom.js"></script>
	<script src="js/dl-menu/jquery.dlmenu.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/functions.js"></script>
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/modernizr.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/dl-menu/jquery.dlmenu.js"></script>
	<script type="text/javascript" src="lib/hash.js"></script>
	<script type="text/javascript" src="lib/booklet-lib.js"></script>
	<script src="js/jquerypp.custom.js"></script>
	<script src="js/jquery.bookblock.js"></script>
	<script src="js/functions.js"></script>
	<script type="application/x-javascript">
		
		
		
		
		
		
		
		
			
		 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	
	
	
	
	
	
	
	
	</script>

	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script src="js/bootstrap-editable.min.js"></script>
	<script type="text/javascript">
		var ti
		me = 0;
		var flag = false;
		//修改email
		$('#enable').click(function() {
			if (time == 0) {
				$('.mail').editable('toggleDisabled');
				$('.mail').editable('toggleDisabled');
				time++;
			} else
				$('.mail').editable('toggleDisabled');
		});
		//保存修改的email
		$('#submitemail').click(function() {
			var newemail = $('#email').html();
			alert(newemail);
			$.ajax({
				url : "modifyEmail.action",
				type : "post",
				data : {
					"newemail" : newemail
				},
				dataType : "json", /* 服务器返回的数据类型 */
				success : function(data) {
					if (data == "success") {
						alert("成功修改邮箱！");
					} else if (data == "fail") {
						alert("邮箱修改失败！");
					}
				}
			})
		});
		//修改密码按钮
		function modifypassword() {
			//1.获得隐藏的DIV
			var overDiv = document.getElementById("oldpasswordform");
			//2.将隐藏的div有隐藏显现出来hidden-->block
			overDiv.style.display = "block";
			/**
			 *控制遮罩层的宽度，高度；
			 *
			 */
			var w = window.innerWidth;//返回窗口的文档显示区的宽度;
			var h = window.innerHeight;//返回窗口的文档显示区的高度;
			console.log("w=" + w + "h=" + h);
			//改变div over的宽度，高度；
			overDiv.style.height = h + "px";
			overDiv.style.width = w + "px";
			/*遮罩层的内部div垂直居中*/
			var childDiv = document.getElementById("oldpasswordform_child");
			var vmiddle = Math.floor((h - 200) / 2);
			var hmiddle = Math.floor((w - 400) / 2);
			childDiv.style.top = vmiddle + "px";
			childDiv.style.left = hmiddle + "px";
		}
		//输入旧密码div的cancel按钮
		$('#cancel').click(function() {
			//将遮罩层的内容隐藏掉
			//1.获得隐藏div
			var overDiv = document.getElementById("oldpasswordform");
			overDiv.style.display = "none";
		});
		//输入旧密码div的ok按钮
		$('#ok')
				.click(
						function() {
							var oldpassword = document
									.getElementById("oldpassword").value;
							$
									.ajax({
										url : "IsPasswordValid.action",
										type : "post",
										data : {
											"oldpassword" : oldpassword
										},
										dataType : "json", /* 服务器返回的数据类型 */
										success : function(data) {
											if (data == "success") {
												var overDiv = document
														.getElementById("oldpasswordform");
												overDiv.style.display = "none";
												//1.获得隐藏的DIV
												var overDiv = document
														.getElementById("newpasswordform");
												//2.将隐藏的div有隐藏显现出来hidden-->block
												overDiv.style.display = "block";
												var w = window.innerWidth;//返回窗口的文档显示区的宽度;
												var h = window.innerHeight;//返回窗口的文档显示区的高度;
												console
														.log("w=" + w + "h="
																+ h);
												//改变div over的宽度，高度；
												overDiv.style.height = h + "px";
												overDiv.style.width = w + "px";
												/*遮罩层的内部div垂直居中*/
												var childDiv = document
														.getElementById("newpasswordform_child");
												var vmiddle = Math
														.floor((h - 200) / 2);
												var hmiddle = Math
														.floor((w - 400) / 2);
												childDiv.style.top = vmiddle
														+ "px";
												childDiv.style.left = hmiddle
														+ "px";
												$('#oldpassworderror').html("");
											} else if (data == "fail") {
												$('#oldpassworderror').html(
														"<em>您输入的旧密码有误！</em>");
											}
										}
									})
						});
		//检查两次输入的密码是否一致
		function check() {
			var pwd1 = document.getElementById("newpassword").value;
			var pwd2 = document.getElementById("renewpassword").value;
			if (pwd1 != pwd2) {
				$("#newpassworderror").html("<em>两次密码不一致！</em>");
				flag = false;
			} else {
				$("#newpassworderror").html("");
				flag = true;
			}
		}
		//修改密码隐藏div的cancel按钮
		$('#new_cancel').click(function() {
			//将遮罩层的内容隐藏掉
			//1.获得隐藏div
			var overDiv = document.getElementById("newpasswordform");
			overDiv.style.display = "none";
		});
		//修改密码隐藏div的ok按钮
		$('#new_ok').click(function() {
			var newpassword = document.getElementById("newpassword").value;
			if (flag == true) {
				$.ajax({
					url : "modifyPassword.action",
					type : "post",
					data : {
						"newpassword" : newpassword
					},
					dataType : "json", /* 服务器返回的数据类型 */
					success : function(data) {
						if (data == "success") {
							alert("成功修改密码！");
						} else if (data == "fail") {
							alert("密码修改失败！");
						}
					}
				})
			} else {
				alert("请确保您两次输入的密码一致！");
			}
		});
		//添加新地址
		function addaddress() {
			//1.获得隐藏的DIV
			var overDiv = document.getElementById("addaddressform");
			//2.将隐藏的div有隐藏显现出来hidden-->block
			overDiv.style.display = "block";
			/**
			 *控制遮罩层的宽度，高度；
			 *
			 */
			var w = window.innerWidth;//返回窗口的文档显示区的宽度;
			var h = window.innerHeight;//返回窗口的文档显示区的高度;
			console.log("w=" + w + "h=" + h);
			/*遮罩层的内部div垂直居中*/
			var vmiddle = Math.floor((h - 540) / 2);
			var hmiddle = Math.floor(0.3 * w);
			overDiv.style.top = vmiddle + "px";
			overDiv.style.left = hmiddle + "px";
		}
		//添加新地址form的取消按钮
		$('#canceladdaddress').click(function() {
			//将遮罩层的内容隐藏掉
			//1.获得隐藏div
			var overDiv = document.getElementById("addaddressform");
			overDiv.style.display = "none";
		});
		//添加新地址form的确定按钮
		$('#confirmaddaddress').click(function() {
		});
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true
			// 100% fit in a container
			});
			showOrder();
			showAddress();
			showPaidOrderNumber();
			showUnpaidOrderNumber();
			showUnapprisedOrderNumber();
		});

		function formatDate(data) {
			var d = new Date(data);
			var formattedDate = d.getFullYear() + "-" + (d.getMonth() + 1)
					+ "-" + d.getDate();
			var hours = ((d.getHours() + 16) % 24 < 10) ? "0"
					+ (d.getHours() + 16) % 24 : (d.getHours() + 16) % 24;
			var minutes = (d.getMinutes() < 10) ? "0" + d.getMinutes() : d
					.getMinutes();
			var seconds = (d.getSeconds() < 10) ? "0" + d.getSeconds() : d
					.getSeconds();
			var formattedTime = hours + ":" + minutes + ":" + seconds;
			formattedDate = formattedDate + " " + formattedTime;
			return formattedDate;
		}
		function showOrder() {
			$
					.ajax({
						url : "ShowOrderInUserInfo.action",
						dataType : "json",
						success : function(data) {
							$
									.each(
											data,
											function(i, list) {
												var divPic = "";
												var bookName = "";
												$
														.each(
																list.orderItemList,
																function(j,
																		order) {
																	divPic += "<div class='pic'>"
																			+ "<a href='xxxx'><img src='"+order.imageUrl+"'/></a>"
																			+ "</div>";
																	/* bookName = order.bookName; */
																});
												var table1 = $("<tr class='itemhead'>"
														+ "<td colspan='4'>"
														+ "<span class='dealtime'>"
														+ formatDate(list.dealTime)
														+ "</span>"
														+ "<span class='orderno'>"
														+ "订单号: <a href='xxxxx'>"
														+ list.orderId
														+ "</a></span>"/*xxxx表示以后要添加跳转href */
														+ "</tr>"
														+ "<tr class='item'>"
														+ "<td class='itemdetail'>"
														+ "<div>"
														+ divPic
														+ "</div></td>"
														+ "<td class='deliver'>"
														+ "<span data-toggle='tooltip' data-placement='bottom' title=''>"
														+ list.consignee
														+ "</span>"
														+ "</td>"
														+ "<td class='sum'><span>￥"
														+ list.totalPrice
														+ "</span></td>"
														+ "<td class='status'><span>"
														+ list.orderStats
														+ "</span></td></tr>");
												$("tbody[id='ordertable']")
														.append(table1);
											});
						}
					})
		}

		function showPaidOrderNumber() {
			$.ajax({
				url : "ShowPaidNumber",
				dataType : "json",
				success : function(data) {
					$("h4[id='paid']").html(data);
				}
			})
		}
		function showUnpaidOrderNumber() {
			$.ajax({
				url : "ShowUnpaidNumber",
				dataType : "json",
				success : function(data) {
					$("h4[id='unpaid']").html(data);
				}
			})
		}
		function showUnapprisedOrderNumber() {
			$.ajax({
				url : "ShowUnapprisedNumber",
				dataType : "json",
				success : function(data) {
					$("h4[id='unapprise']").html(data);
				}
			})
		}
		function bindbutton() {
			//修改地址
			$('.itemselect').click(function(e) {
				var parent = $(e.target).parent();
				var flag = true;
				if (parent.attr('firsttime') == "yes")
					flag = false;
				if (flag == false) {
					parent.find('.address').editable('toggleDisabled');
					parent.find('.address').editable('toggleDisabled');
					parent.attr("firsttime", "no");
				} else
					parent.find('.address').editable('toggleDisabled');
			});
			//保存修改的地址
			$('.itemsave').click(function(e) {
				alert("保存");
			});
			//删除地址
			$('.itemdelete').click(function(e) {
				var flag = window.confirm("确定删除？");
				if (flag) {
					$(e.target).parent().parent().remove();
				}
			});
		}
		function showAddress() {
			$
					.ajax({
						url : "ShowAddress",
						dataType : "json",
						success : function(data) {

							$
									.each(
											data,
											function(i, list) {
												var table1 = $("<div class='panel col-sm-4 item'>"
														+ "<div class='panel-body text-center bk-padding-off bk-wrapper'>"
														+ "<img src='images/addressheader.jpg' alt='' class='img-responsive'>"
														+ "</div>"
														+ "<div class='panel-body text-center' firsttime='yes'>"
														+ "<h3 class='bk-margin-off'>"
														+ "<strong><a href='#' id='consignee' data-type='text' data-original-title='收货人' class='editable editable-click editable-disabled address'>"
														+ list.person
														+ "</a></strong>"
														+ "</h3>"
														+ "<small class='bk-fg-inverse'><a href='#' id='tel' data-type='text' data-original-title='电话' class='editable editable-click editable-disabled address'>"
														+ list.tel
														+ "</a></small>"
														+ "<p class='bk-margin-off-bottom bk-fg-gray'>"
														+ "<em><a href='#' id='detailaddress' data-type='text' data-original-title='详细地址' class='editable editable-click editable-disabled address'>"
														+ list.address
														+ "</a></em>"
														+ "</p>"
														+ "<a id='modifyaddress' class='btn btn-primary itemselect col-xs-12' onclick='modifyaddress()'>编辑</a> "
														+ "<a id='saveaddress' class='btn btn-primary itemsave col-xs-12' onclick='saveaddress()'>保存</a> "
														+ "<a id='deleteaddress' class='btn btn-primary itemdelete col-xs-12' onclick='deleteaddress()'>删除</a>"
														+ "</div></div>");
												$("div[id='address']").append(
														table1);
											});
							bindbutton();
						}
					})
		}
	</script>

</body>
</html>