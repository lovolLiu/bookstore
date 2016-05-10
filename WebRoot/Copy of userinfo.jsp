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
<!-- Owl Carusel -->
<link href="css/owl.carousel.css" rel="stylesheet">
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
<style>
.userinfo {
	border: 1px solid #ccc;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
	border-radius: 20px;
	margin-top: 40px;
	margin-bottom: 40px;
	display: inline-block;
}

h2 {
	color: #FF9606;
}

.userinfo a {
	color: black;
}

.user-pic {
	width: 120px;
	height: 120px;
	border-radius: 50%;
	overflow: hidden;
	margin-top: 10px;
	margin-bottom: 10px;
	float: left;
}

.user-pic>img {
	width: 120px;
	height: 120px;
}

.userdetail {
	font-size: 26px;
	float: left;
}

.icons {
	font-size: 30px;
	float: left;
	margin-top: 20px;
}

.icons a {
	font-size: 20px;
}

.quantity {
	color: #FF9606 !important;
	font-size: 30px !important;
}

.myorder {
	border: 1px solid #ccc;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
	border-radius: 20px;
	margin-top: 40px;
	margin-bottom: 40px;
	display: inline-block;
}

.order-icon {
	font-size: 120px;
	float: left;
	margin-bottom: 15px;
}

.order-table {
	float: left;
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
	color:white;
	border: 0 none;
	border-radius: 0;
	margin-top: 16px;
}

.checkallorder {
	text-align:center;
	margin-bottom:15px;
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
						<li class="hidden-sm"><a href="cart.jsp">购物车</a></li>
						<li class="hidden-sm"><a href="userinfo.jsp">我的账户</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<!--HEADER END-->
	</div>
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
		class="col-xs-10 col-xs-offset-1 col-md-10 col-md-offset-1 userinfo">
		<h2>个人信息</h2>
		<div class="user-pic">
			<img src="images/userpic/1.JPG" alt="" />
		</div>
		<div class="userdetail col-md-6 col-md-offset-2 col-xs-offset-2">
			<a style="margin-bottmo:10px;">Crenshaw</a>
			<div>
				<div class="icons col-md-4">
					<i class="icon-money"></i> <a class="quantity">1</a><br> <a>待付款</a>
				</div>
				<div class="icons col-md-4">
					<i class="icon-truck"></i> <a class="quantity">2</a><br> <a>待收货</a>
				</div>
				<div class="icons col-md-4">
					<i class="icon-paint-brush"></i> <a class="quantity">1</a><br>
					<a>待评价</a>
				</div>
			</div>
		</div>
		<div>
		    <a class="btn btn-primary">修改个人信息</a>
		</div>
	</div>
	<div
		class="col-xs-10 col-xs-offset-1 col-md-10 col-md-offset-1 myorder">
		<h2>我的订单</h2>
		<div class="order-icon">
			<i class="icon-clipboard2"></i>
		</div>
		<div class="order-table col-md-9 col-md-offset-1 col-xs-12">
			<table class="order_list">
				<thead>
					<tr>
						<th class="order_number">订单号:<a href="">12345</a></th>
						<th class="consignee">收货人</th>
						<th class="total_price">金额</th>
						<th class="deal_time">交易时间</th>
						<th class="status">订单状态</th>
						<th class="op">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="item">
						<td class="itemdetail">
							<div>
								<div class="pic">
									<a href=""><img src="images/book.png" /></a>
								</div>
								<div class="pic">
									<a href=""><img src="images/book.png" /></a>
								</div>
								<div class="pic">
									<a href=""><img src="images/book.png" /></a>
								</div>
							</div>
						</td>
						<td class="deliver"><span data-toggle="tooltip"
							data-placement="bottom" title="张三 北京邮电大学宏福校区 18976543256">张三</span>
						</td>
						<td class="sum"><span>￥50</span></td>
						<td class="time"><span>2016-4-15<br>10:20:39</span></td>
						<td class="status"><span>已支付</span></td>
						<td class="operate"><span>查看</span><br><span>删除</span></td>
					</tr>
				</tbody>
				</table>
		</div>
		<div class="checkallorder">
			<a class="btn btn-primary" href="myorder.jsp">查看所有订单</a>
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
	<script src="js/owl.carousel.js"></script>
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
	<!--<script src="js/googlemap.js"></script>-->
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
			showOrder();
			showPaidOrderNumber();
		});
		
		function showOrder(){
			$.ajax({
				url:"ShowOrderInUserInfo",
				dataType:"json",
				success:function(data){
					$.each(data,function(i,list){  
             				 var _tr = $("<tr class='itemtr' id=\""+list.buyItemID+"\">"
             				 +"<td class=\"cart_product\"><input type=\"checkbox\" class=\"itemselectbox\"><a href><img src=\""+list.imageUrl+"\"></a></td>"
             				 +"<td class=\"cart_description\"><h4><a href>"+ list.bookName+"</a></h4></td>"
             				 +"<td class=\"cart_price\"><p>¥"+list.price+"</p></td>"
             				 +"<td class=\"cart_quantity\"> <div class=\"cart_quantity_button\"> <a class=\"cart_quantity_up\" href=\"\" onclick='return QuantityUp(" + list.buyItemID + ")'> + </a> "
             				 	+ "<input class=\"cart_quantity_input\" type=\"text\" name=\"quantity\" value=\""+list.num+"\"autocomplete=\"off\" size=\"2\" >"
	+ "<a class=\"cart_quantity_down\" href=\"\" onclick='return QuantityDown("+ list.buyItemID +")'> - </a></div></td>"
+"<td class=\"cart_total\"> <p class=\"cart_total_price\"> ¥"+list.buyItemPrice+"</p></td>"
+"<td class=\"cart_delete\"><a class=\"cart_quantity_delete\" href=\"\" onclick=\"return deleteCart( "+ list.buyItemID +")\"><i class=\"fa fa-times\"></i></a></td>"
+"</tr>");  
             			 	 $("tbody[id='cartItem']").prepend(_tr);  
             			 	 
             			 	 
          			})  
				}
			})
		}
	</script>

</body>
</html>