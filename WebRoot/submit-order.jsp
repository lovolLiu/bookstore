<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<link rel="stylesheet" type="text/css" href="css/bookblock.css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
.form-one {
	float: left;
	width: 47%;
}

.form-two {
	float: right;
	width: 47%;
}

input {
	background: #F0F0E9;
	border: 0 none;
	margin-bottom: 10px;
	padding: 10px;
	width: 100%;
	font-weight: 300;
}

select {
	background: #F0F0E9;
	border: 0 none;
	margin-bottom: 10px;
	padding: 10px;
	width: 100%;
	font-weight: 300;
}

.bill-to p, .order-message p {
	color: #FE980F;
	font-size: 25px;
	font-weight: 300;
	margin-top: 20px;
}

.btn.btn-primary {
	background: #FE980F;
	border: 0 none;
	border-radius: 0;
	margin-top: 16px;
}

.review-payment h2 {
	color: #FE980F;
	font-size: 25px;
	font-weight: 300;
	margin-top: 45px;
	margin-bottom: 20px;
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

.cart_quantity_button {
	width: 100px;
}

.cart_quantity_button a {
	background: #F0F0E9;
	color: #696763;
	display: inline-block;
	font-size: 16px;
	height: 28px;
	overflow: hidden;
	text-align: center;
	width: 20%;
	float: left;
}

.cart_quantity_input {
	color: #696763;
	font-size: 16px;
	text-align: center;
	font-family: 'Roboto', sans-serif;
	float: left;
	height: 28px;
	padding: 0;
	width: 60%;
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

.check_out {
	margin-left: 20px;
}

.update {
	margin-left: 40px;
}

.update, .check_out {
	background: #FE980F;
	border-radius: 0;
	color: #FFFFFF;
	margin-top: 18px;
	border: none;
	padding: 5px 15px;
}

.total-result>tr>td {
	border-top: none;
}
.selected{
    border: 2px solid orange;
}
.item{
    margin:30px;
    height:300px;
}
.panel-body > p{
    height:50px;
}

		.time_messagebox{
			position: fixed;
			margin:auto;
			left:0; 
			right:0; 
			top:0; 
			bottom:0;
			width:250px; 
			height:80px;
			background: orange;
			color: white;
			display: none;
			border-radius:10px;
			z-index:99;
		}
</style>
</head>
<body>
<div class="time_messagebox">
		<p style="height:80px;margin:0px auto;text-align:center"><span style="line-height:80px;">请选择一个收货地址哦亲~~</span></p>
</div>
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
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>结算</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">结算</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--CONTENT START-->
		<div class="container">
			<div class="product-review-tabs" style="margin-top:10px;">
				<!--NAV TABS START-->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a
						href="#selectaddress" aria-controls="Description" role="tab"
						data-toggle="tab" aria-expanded="false">选择收货地址</a></li>
					<li role="presentation" class=""><a href="#newaddress"
						aria-controls="reviews" role="tab" data-toggle="tab"
						aria-expanded="true">添加新地址</a></li>
				</ul>
				<!--NAV TABS END-->
				<!--TAB PANEL START-->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="selectaddress">

					<s:iterator value="addressList">

						<div class="panel col-sm-3 item">
							<div class="panel-body text-center bk-padding-off bk-wrapper">
								<img src="images/addressheader.jpg" alt=""
									class="img-responsive">
							</div>
							<div class="panel-body text-center">
								<h3 class="bk-margin-off">
									<strong>${person }</strong>
								</h3>
								<small class="bk-fg-inverse">${tel }</small>
								<p class="bk-margin-off-bottom bk-fg-gray">
									<em>${address }</em>
								</p>

								<a class="btn btn-primary itemselect" onclick="SelectAddress(${addressID}); return false;">选择</a>

							</div>
						</div>
					</s:iterator>
						
<!-- 						<div class="panel col-sm-3 item  selected"> -->
<!-- 							<div class="panel-body text-center bk-padding-off bk-wrapper"> -->
<!-- 								<img src="images/flat-landscape.jpg" alt="" -->
<!-- 									class="img-responsive"> -->
<!-- 							</div> -->
<!-- 							<div class="panel-body text-center"> -->
<!-- 								<h3 class="bk-margin-off"> -->
<!-- 									<strong>赵四</strong> -->
<!-- 								</h3> -->
<!-- 								<small class="bk-fg-inverse">13275678900</small> -->
<!-- 								<p class="bk-margin-off-bottom bk-fg-gray"> -->
<!-- 									<em>昆明市盘龙区白云路128号</em> -->
<!-- 								</p> -->
<!-- 								<a class="btn btn-primary itemselect">选择</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>
					<div role="tabpanel" class="tab-pane fade" id="newaddress">
						<div class="shopper-informations">
							<div class="container">
								<div class="row">
									<div class="col-sm-5">
										<div class="bill-to">
											<p>寄送到</p>
											<div class="form-one">
												<form onSubmit="return false;">
												    <input type="text" placeholder="省份" id="address1">
												     <input type="text" placeholder="地区" id="address2">
													<input type="text" placeholder="详细地址"
														value="" id="address3"> 
													<input type="text"
														placeholder="邮政编码" id="address4">
													<a class="btn btn-primary" onclick="addAddress()">确定</a>
												</form>
												<a class="btn btn-primary">添加新地址</a>
											</div>
											<div class="form-two">
												<form onSubmit="return false;">
													<input type="text" placeholder="收货人姓名"
														value="" id="consignee"> <input type="text"
														placeholder="电话号码" value="" id="tel">
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
						<tbody id='cartItem'>
						<s:iterator value="trOrderItemList">
							<tr id="${buyItemID }" class="itemtr">
								<td class="cart_product"><a href=""><img
										src="${imageUrl }"></a></td>
								<td class="cart_description">
									<h4>
										<a href="">${bookName}</a>
									</h4>
								</td>
								<td class="cart_price">
									<p>¥${price }</p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
									<a class="cart_quantity_up" href="" onclick="return QuantityUp(${buyItemID})"> + </a>
										<input class="cart_quantity_input" type="text" name="quantity"
											value="${num }" autocomplete="off" size="2"/>
									<a class="cart_quantity_down" href="" onclick="return QuantityDown(${buyItemID})"> - </a>
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price">¥${buyItemPrice }</p>
								</td>

							</tr>
						</s:iterator>
							<tr>

								<td colspan="4">&nbsp;</td>
								<td colspan="2">
									<table class="total-result">
										<tbody>
											<tr style="font-size: x-large;">
												<td>总价</td>
												<td style="color:#FE980F;"><span id="orderTotal">¥${totalPrice }</span></td>
											</tr>
											<tr style="border-bottom: 0;">
												<td ></td>
												<td><div style="text-align: right;" id="div_submit">
														<a class="btn btn-default check_out" onclick="SubmitOrder(); return false;">提交订单</a>
													</div></td>

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
		<!--/#cart_items-->
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
	<!--<script src="js/googlemap.js"></script>-->
	<script type="text/javascript" src="lib/hash.js"></script>
	<script type="text/javascript" src="lib/booklet-lib.js"></script>
	<script src="js/jquerypp.custom.js"></script>
	<script src="js/jquery.bookblock.js"></script>
	<script src="js/functions.js"></script>
	<script type="application/x-javascript">
		 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	</script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $(".itemselect").click(function(e){
	        $('.item').removeClass("selected");
	        $(e.target).parent().parent().addClass("selected");
	    });
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true
			// 100% fit in a container
			});

		});
	</script>


	<script>
		var g_addressID = -1;
		var g_totalPrice = ${totalPrice};
		function SelectAddress(addressID){
			g_addressID = addressID;
		}
		
		
		function SubmitOrder(){

			if(g_addressID == -1){
				
				messageToast();
				return false;
			}
			var url = "SubmitOrder?addressID=" + g_addressID;
			var trs = $(".itemtr");
			$.each(trs,function(i,list){
				url += "&buyItemIDList=" + list.getAttribute("id");
			})

			window.location.href = url;
			
		}
		

		$(".cart_quantity_input").blur(function(){
			alert();
			var num = $(this).attr("value");
			var buyItemID = $(this).parents("tr")[0].attr("id");
			updateCart(buyItemID, num);
			return false;
		});
		

		

		function QuantityUp(buyItemID){
			var currentNum = parseInt($("tr#" + buyItemID).find(".cart_quantity_input").attr("value"));
			updateCart(buyItemID, currentNum+1);
			return false;
		}
		
		function QuantityDown(buyItemID){
			var currentNum = parseInt($("tr#" + buyItemID).find(".cart_quantity_input").attr("value"));
			if(currentNum == 1) return false;
			updateCart(buyItemID, currentNum-1);
			return false;
		}
		
		
		function updateCart(buyItemID,num){
			$.ajax({
				url: "UpdateCartItem?buyItemID=" + buyItemID + "&num=" + num,
				dataType:"json",
				success:function(data){
					//data便是更新之后这条数据的trCartItem
					//更新这条数据对应的html
					var tr = $("tr#" + buyItemID);
					var numInput = tr.find(".cart_quantity_input");
					var itemTotalPrice = tr.find(".cart_total_price");
					numInput.attr("value", data.num);
					
					var oldItemTotalPrice = parseInt(itemTotalPrice.html().substr(1, itemTotalPrice.html().length));
					
					itemTotalPrice.html("¥" + data.buyItemPrice);
					
					g_totalPrice = parseInt(g_totalPrice) - parseInt(oldItemTotalPrice) + parseInt(data.buyItemPrice);
					$("#orderTotal").html("¥" + g_totalPrice);
					
				}
			})
		}


		function addAddress(){
			var consignee = $("input[id='consignee']").val();
			var tel = $("input[id='tel']").val();
			var address = $("input[id='address1']").val()+$("input[id='address2']").val()+$("input[id='address3']").val()+$("input[id='address4']").val();
			$.ajax({
				url:"AddAddress",
				data:{"consignee":consignee,"tel":tel,"address":String(address)},
				dataType:"json",
				success:function(data){
					var address =  $(
	             						"<div class='panel col-sm-3 item'>"
   									 		+"<div class='panel-body text-center bk-padding-off bk-wrapper'>"
   									 			+"<img src='images/addressheader.jpg' alt='' class='img-responsive'>"
   									 		+"</div>"
   									 	+"<div class='panel-body text-center'>"
   									 		+"<h3 class='bk-margin-off'>"
   									 			+"<strong>"+data.person+"</strong>"
   									 		+"</h3>"
  									 	+"<small class='bk-fg-inverse'>"+data.tel+"</small>"
  									 	+"<p class='bk-margin-off-bottom bk-fg-gray'>"
  									 		+"<em>"+data.address+"</em>"
  									 	+"</p>"
  									 	+"<a class='btn btn-primary itemselect'>选择</a>"
  									 	+"</div>");		
					
             		 $("div[id='selectaddress']").prepend(address);
             		 
             		location.reload()
				}
			})
		}
		

	</script>
	

	<script>
	   function messageToast(){
			$(".time_messagebox").fadeIn(300);
			setTimeout("$('.time_messagebox').fadeOut(300);",1200)
	   }
</script>

	
	
	

</body>
</html>