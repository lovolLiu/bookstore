<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>在线书城</title>
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
<!-- BX SLIDER -->
<link href="css/jquery.bxslider.css" rel="stylesheet">
<!-- Boostrap Slider -->
<link href="css/bootstrap-slider.css" rel="stylesheet">
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
<!-- Owl Carusel -->
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- responsive -->
<link href="css/responsive.css" rel="stylesheet">
<!-- Component -->
<link href="js/dl-menu/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/bookblock.css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
.flowstep {
	
}

.flowstep ol {
	overflow: hidden;
	zoom: 1;
}

.flowstep-5 {
	margin-left: 0px;
	padding-left: 0px;
}

ul, ol {
	list-style: none;
}

.flowstep-5 li {
	width: 25%;
}

.flowstep li {
	float: left;
	text-align: center;
}

.flowstep .step-name {
	padding: 3px 0;
	font-weight: 700;
	color: #888;
}

.flowstep .step-first .step-done .step-no {
	background-position: 50% -204px;
}

.flowstep .step-done .step-no {
	background-position: 50% -170px;
}

.flowstep .step-no {
	height: 34px;
	line-height: 34px;
	font-family: 'arial black';
	color: #fff;
	font-size: 18px;
}

.flowstep .step-no, .flowstep .step-sub-box .step-sub {
	background: url(images/progressbar.png) no-repeat 50% -102px;
}

.flowstep .step-time {
	color: #999;
	margin-top: 10px;
}

.flowstep .step-time {
	color: #999;
	padding: 8px 0;
}

.flowstep .step-cur .step-no {
	background-position: 50% 0;
}

.flowstep .step-last .step-no {
	background-position: 50% -136px;
}

.flowstep .step-no, .flowstep .step-sub-box .step-sub {
	background: url(images/progressbar.png) no-repeat 50% -102px;
}

.flowstep .step-last .step-done .step-no {
	background-position: 50% -68px;
}

.uline-title {
	margin-bottom: 50px;
	padding: 0 0 37px;
	text-align: center;
	background: url("images/utitlebg.png");
	background-repeat: no-repeat;
	background-position: center bottom -2px;
}

.headerwithshadow {
	margin-bottom: 0;
	background: orange;
	color: #ffffff;
	text-transform: uppercase;
	text-align: center;
}

.lead {
	margin: 0;
	line-height: 93px;
	font-size: x-large;
	color: white;
}

.divider-shadow {
	text-align: center;
	position: relative;
	line-height: 0;
}

.btn {
	background-color: orange;
	border-color: orange;
}

.btn-primary:hover {
	background-color: orange;
	border-color: orange;
}

#cart_items .cart_info .cart_price p {
	color: #696763;
	font-size: 18px;
}

#cart_items .cart_info .cart_total_price {
	color: #FE980F;
	font-size: 24px;
}

.cart_delete a {
	background: #F0F0E9;
	color: #FFFFFF;
	padding: 5px 7px;
	font-size: 16px;
}

.cart_delete a:hover {
	background: #FE980F;
}

.cart_description a {
	color: #FE980F;
}

#cart_items .cart_info 
 .table.table-condensed.total-result {
	margin-bottom: 10px;
	margin-top: 35px;
	color: #696763;
}

#cart_items .cart_info 
 .table.table-condensed.total-result table {
	border-bottom: 0;
}

.total_area, #do_action .chose_area {
	border: 1px solid #E6E4DF;
	color: #696763;
	padding: 30px 25px 30px 0;
	margin-bottom: 80px;
}

.total_area {
	padding-bottom: 18px !important;
	text-align: right;
}

.total_area ul {
	list-style: none;
}

.total_area ul li {
	background: #E6E4DF;
	color: #696763;
	margin-top: 10px;
	padding: 7px 20px;
}

.cart_info .cart_menu {
	background: #FE980F;
	color: #fff;
	font-size: 16px;
	font-family: 'Roboto', sans-serif;
	font-weight: normal;
}

.cart_product>a>img {
	height: 50%;
}

.cart_info table {
	border: none;
}

.cart_info table tr {
	border-top: 0 none;
	vertical-align: inherit;
	border-bottom: 2px solid #67675f;
}

.cart_info td {
	padding: 5px;
	vertical-align: middle !important;
	border: none;
}

.cart_quantity p {
	font-size: 18px;
}
</style>
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
						<li class="hidden-sm"><a href="index.jsp">主页</a></li>
						<li class="hidden-sm"><a href="books.jsp">开始选购</a></li>
						<li class="hidden-sm"><a onclick="gocart()">购物车</a></li>
						<li id="userbox" style="display:none;">
							<div class="userbox" style="margin-top:30px;">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<div class="profile-info">
										<span class="role">欢迎</span> <span id="usrName" class="name"></span>
									</div> <i class="fa custom-caret"></i>
								</a>
								<div class="dropdown-menu">
									<ul class="list-unstyled">
										<li><a onclick="gouserinfo()"><i class="fa fa-user"></i>我的账户</a>
										</li>
										<li><a href="Logout?"><i class="fa fa-power-off"></i>登出</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<!--HEADER END-->
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>订单详情</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">订单详情</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--CONTENT START-->
		<section>
			<div class="col-md-4 text-center">
				<blockquote style="background-color:white">
					<div style="margin-bottom:15px;">
						订单号：<span id="orderID"><s:property value="orderID" /></span><br />
					</div>
					<div style="margin-bottom:15px;">
						<span id="orderstatuslabel" class=""><s:property
								value="divOrder.orderStats" /></span>
					</div>
					<a id="gosw" class="btn btn-primary" style="width:50%"
						href="InitMyOrder?">去付款</a>
				</blockquote>
			</div>
			<div class="row text-center col-md-8" style="margin-top:50px;">
				<div class="flowstep">
					<!-- 订单状态 -->
					<ol id="normalstats" class="flowstep-5" style="">
						<li class="step-first">
							<div class="step-done">
								<div class="step-name">提交订单</div>
								<div class="step-no"></div>
							</div>
						</li>
						<li>
							<div id="unpaidstats" class="">
								<div class="step-name">未付款</div>
								<div id="unpaidstats-num" class="step-no">2</div>
							</div>
						</li>
						<li class="step-last">
							<div id="paidstats" class="">
								<div class="step-name">已付款</div>
								<div id="paidstats-num" class="step-no">3</div>
							</div>
						</li>
					</ol>
					<!-- 订单状态 -->
					<!-- 订单取消状态 -->
					<ol id="cancelstats" class="flowstep-5 ordecancelstatus"
						style="display:none;">
						<li class="step-first" style="width:50%;">
							<div class="step-done">
								<div class="step-name">提交订单</div>
								<div class="step-no"></div>
							</div>
						</li>
						<li class="step-last" style="width:50%;">
							<div class="step-done">
								<div class="step-name">取消</div>
								<div class="step-no">2</div>
							</div>
						</li>
					</ol>
					<!-- 订单取消状态结束 -->
				</div>
			</div>
		</section>
		<section style="background: rgba(244,245,247,0.9);">
			<div class="col-sm-12">
				<h2 class="uline-title text-center">收货人信息</h2>
			</div>
			<div class="container col-md-6 col-md-offset-3">
				<div class="contact-box">
					<div class="row">
						<div class="">
							<table>
								<tbody>
									<tr>
										<td><i class="fa  fa-user"></i></td>
										<td>收货人:</td>
										<td><s:property value="divOrder.consignee" /></td>
									</tr>
									<tr>
										<td><i class="fa fa-phone"></i></td>
										<td>联系方式：</td>
										<td><s:property value="divOrder.tel" /></td>
									</tr>
									<tr>
										<td><i class="fa  fa-location-arrow"></i></td>
										<td>收货地址：</td>
										<td><s:property value="divOrder.address" /></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section style="padding:0px;">
			<div class="headerwithshadow">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h2 class="lead">订单商品</h2>
						</div>
					</div>
					<!-- / .row -->
				</div>
				<!-- / .container -->
			</div>
			<div class="divider-shadow">
				<img src="images/divider-shadow1.png" alt="devider"
					class="responsive-img">
			</div>
		</section>
		<section id="cart_items">
			<div class="container">
				<div class="table-responsive cart_info">
					<table class="table table-condensed">
						<thead>
							<tr class="cart_menu">
								<td class="image">商品</td>
								<td class="description"></td>
								<td class="price">单价</td>
								<td class="quantity">数量</td>
								<td class="total">总价</td>
								<td></td>
							</tr>
						</thead>
						<tbody id="cartItem">
							<s:iterator value="divOrder.orderItemList">
								<tr>
									<td class="cart_product"><a
										href='BookDetail?id=${bookID }'><img src="${imageUrl }"></a></td>
									<td class="cart_description">
										<h4>
											<a href='BookDetail?id=${bookID }'>${bookName }</a>
										</h4>
									</td>
									<td class="cart_price">
										<p>￥${price }</p>
									</td>
									<td class="cart_quantity">
										<p>${num }</p>
									</td>
									<td class="cart_total">
										<p class="cart_total_price">￥${buyItemPrice }</p>
									</td>
								</tr>
							</s:iterator>
							<tr>
								<td colspan="4">&nbsp;</td>
								<td colspan="2">
									<table class="total-result">
										<tbody>
											<tr style="font-size: x-large;border-bottom: 0;">
												<td>总价</td>
												<td style="color:#FE980F;"><span id="orderTotal">￥<s:property
															value="divOrder.totalPrice" /></span></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>
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
								<li><a onclick="gocart()">购物车</a></li>
								<li><a onclick="gouserinfo()">我的账户</a></li>
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
	<!--WRAPPER END-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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
	<script type="text/javascript">
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true
			// 100% fit in a container
			});
			$.ajax({
				url : "GetUsrname",
				dataType : "json",
				success : function(data) {
					if (data == "") {
						$('#gologin').attr("style", "");
					} else {
						$('#userbox').attr("style", "");
						$('#usrName').html(data);
					}
				}
			})
			var orderStats = $('#orderstatuslabel').html();
			var orderID = $('#orderID').html();
			switch (orderStats) {
			case "未付款":
				$('#orderstatuslabel').attr("class", "label label-warning");
				$('#unpaidstats').attr("class", "step-cur");
				$('#gosw').html("去付款");
				$('#gosw').attr("href", "Payment?orderID=" + orderID);
				break;
			case "已付款":
				$('#orderstatuslabel').attr("class", "label label-success");
				$('#unpaidstats').attr("class", "step-done");
				$('#unpaidstats-num').html("");
				$('#paidstats').attr("class", "step-done");
				$('#gosw').html("返回");
				break;
			case "已取消":
				$('#orderstatuslabel').attr("class", "label label-danger");
				$('#normalstats').attr("style", "display:none;");
				$('#cancelstats').attr("style", "");
				$('#gosw').html("返回");
				break;
			}
		});
		function gouserinfo() {
			$.ajax({
				url : "GetUsrname",
				dataType : "json",
				success : function(data) {
					if (data == "") {
						location.href = "login.jsp";
					} else {
						location.href = "userinfo.jsp"
					}
				}
			})
		}
		function gocart(){
		     $.ajax({
			url : "GetUsrname",
			dataType : "json",
			success : function(data) {
				if(data == ""){
				    location.href="login.jsp";
				}else{
				    location.href="cart.jsp"
				}
			}
		})
		}
	</script>
</body>
</html>