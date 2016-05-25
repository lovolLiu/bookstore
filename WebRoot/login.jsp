<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bookaholic</title>
<!-- icon -->
<link rel="shortcut icon" href="siteicon.ico" type="image/x-icon" />
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
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
<!-- Owl Carusel -->
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- responsive -->
<link href="css/responsive.css" rel="stylesheet">
<!-- Component -->
<link href="js/dl-menu/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/bookblock.css" />
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<script src="js/sweetalert.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div id="loader-wrapper">
		<div id="loader"></div>

		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>

	</div>
	<!--WRAPPER START-->
	<div class="wrapper kode-header-class-3">
		<!--HEADER START-->
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
						<li class="hidden-sm"><a href="Index">主页</a></li>
						<li class="hidden-sm"><a href="initSearchAction">开始选购</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<!--HEADER END-->
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>账户登陆</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">登陆</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--LOGINFORM START-->
		<div class="main-content col-md-4 col-md-offset-4">
			<div class="sap_tabs">

				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">

					<ul>
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>登陆</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>注册</span></li>

					</ul>
					<!---->

					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="register">
							<form onSubmit="return false;">
								<input placeholder="用户名" class="mail" type="text"
									id="loginusrname" required="" name="username"> <input
									placeholder="密码" class="lock" type="password" id="loginpwd"
									required="" name="password"> <input type="submit"
									value="登陆" onclick="loginUser()" />
							</form>
							<p>
								忘记密码?<a href="findpassword.jsp"> 点击这里</a>
							</p>
						</div>
					</div>

					<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="register">

							<h4 id="register-success"
								style="width: 100%;display: inline-block;text-align: center;display: none;"></h4>
							<form id="registerform" onSubmit="return false;">
								<input id="usrname" placeholder="用户名" type="text"
									required="required" onblur="checkusrname()">
								<div id="errorusrname" class="errormessage"></div>
								<input id="tel" placeholder="电话号码" type="text" required=""
									onblur="checktel()">
								<div id="errortel" class="errormessage"></div>
								<input id="email" placeholder="电子邮箱" type="text"
									required="required" onblur="checkemail()">
								<div id="erroremail" class="errormessage"></div>
								<input id="pwd1" placeholder="密码" type="password"
									required="required"> <input id="pwd2"
									placeholder="重复密码" type="password" required="required"
									onblur="checkpwd2()">
								<div id="errorpwd2" class="errormessage"></div>
								<div class="sign-up" id="sign-up">
									<input type="submit" value="注册" onclick="submitUser()" />
								</div>
							</form>
						</div>
					</div>

				</div>

			</div>
		</div>
		<!--LOGINFORM END-->
		<footer class="footer-3">
			<div class="container">
				<div class="row">
					<!--CATEGORY WIDGET START-->
					<div class="col-md-6 col-sm-6">
						<div class="widget widget-categories">
							<h2>站点地图</h2>
							<ul>
								<li><a href="Index">主页</a></li>
									<li><a href="initSearchAction">开始选购</a></li>
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
										<a href="mailto:bookaholicstore@163.com">bookaholicstore@163.com</a>
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
	<!--WRAPPER END-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/modernizr.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="lib/hash.js"></script>
	<script src="js/jquerypp.custom.js"></script>
	<script src="js/jquery.bookblock.js"></script>
	<script src="js/functions.js"></script>
	<script type="application/x-javascript">
		 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	</script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		var flag = true;
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true
			// 100% fit in a container
			});
		});
		function loginUser() {
			var username = $("input[id='loginusrname']").val();
			var pwd = $("input[id='loginpwd']").val();
			$
					.ajax({
						url : "Login",
						type : "post",
						data : {
							"username" : username,
							"password" : pwd
						},
						dataType : "json",
						success : function(data) {
							var searchAttr = window.location.search;
							if (data == "success") {

							    swal("登陆成功!", "开始购书吧！", "success");
								var urlSplit = window.location.href.split("/");
								if(	urlSplit[urlSplit.length-1] == "login.jsp"){
									window.location.href = "Index";
								}else if(searchAttr.indexOf("BookID")!=-1){
									window.location.href = "BookDetail"+searchAttr;
								}else if(searchAttr.indexOf("initSearchAction?")!=-1){
									window.location.href = "initSearchAction?";
								}else if(searchAttr.indexOf("Index")!=-1){
									window.location.href = "Index";
								}else if(searchAttr.indexOf("cart.jsp")!=-1){
									window.location.href = "cart.jsp";
								}else if(searchAttr.indexOf("userinfo.jsp")!=-1){
									window.location.href = "userinfo.jsp";
								}else{
									window.location.href = window.location;
								}

							} else {
								swal("登陆失败!", "请确保输入正确的用户名以及密码", "error");
							}
						}
					})
		};
		function checkusrname() {
			var username = $("input[id='usrname']").val();
			$("#errorusrname").html("");
			$.ajax({
				url : "CheckUsername",
				type : "post",
				data : {
					"userName" : username
				},
				dataType : "json", /* 服务器返回的数据类型 */
				success : function(data) {
					if (data == "true") {
						$("#errorusrname").html("用户名已被注册");
						flag = false;
					} else {
						$("#errorusrname").html("");
						flag = true;
					}
				}
			});
		}
		function checktel() {
			var tel = document.getElementById("tel").value;
			var reg = /^0?1[3|4|5|8][0-9]\d{8}$/;
			if (!reg.test(tel)) {
				$("#errortel").html("请输入有效的电话号码");
				flag = false;
			} else {
				$("#errortel").html("");
				flag = true;
			}
		}
		function checkemail() {
			var email = document.getElementById("email").value;
			$("#erroremail").html("");
			var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			if (!(reg.test(email))) {
				$("#erroremail").html("邮箱格式错误");
				flag = false;
			} else {
				$.ajax({
					url : "CheckEmail",
					type : "post",
					data : {
						"userEmail" : email
					},
					dataType : "json", /* 服务器返回的数据类型 */
					success : function(data) {
						if (data == "true") {
							$("#erroremail").html("邮箱已被注册");
							flag = false;
						} else {
							$("#erroremail").html("");
							flag = true;
						}
					}
				});
			}
		}
		function checkpwd2() {
			var pwd1 = document.getElementById("pwd1").value;
			var pwd2 = document.getElementById("pwd2").value;
			if (pwd1 != pwd2) {
				$("#errorpwd2").html("两次密码不一致！");
				flag = false;
			} else {
				$("#errorpwd2").html("");
				flag = true;
			}
		}
		function submitUser() {
		    var username = $("input[id='usrname']").val();
		    var tel = document.getElementById("tel").value;
			var email = document.getElementById("email").value;
			var pwd1 = document.getElementById("pwd1").value;
			if(username != "" && tel != "" && email != "" && pwd1 != "")
			    flag = true;
			else
			    flag = false;
			if (flag == true) {
				$.ajax({
							url : "RegisterUser",
							type : "post",
							data : {
								"userName" : username,
								"password" : pwd1,
								"userTel" : tel,
								"userEmail" : email
							},
							dataType : "json",
							success : function(data) {
								if (data == "success") {
								    swal("注册成功!", "请登录！", "success");
								} else {
								    swal("注册失败!", "请稍后尝试！", "error");
								}
							}
						});
			} 
		}
	</script>
</body>
</html>