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
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<script src="js/sweetalert.min.js"></script>
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

.selected {
	border: 2px solid orange;
}

.item {
	margin: 30px;
	height: 300px;
}

.panel-body>p {
	height: 50px;
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
					<ul  class="nav navbar-nav navbar-right">
						<li class="hidden-sm"><a href="Index">主页</a></li>
						<li class="hidden-sm"><a href="initSearchAction">开始选购</a></li>
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
					<div role="tabpanel" class="tab-pane fade active in"
						id="selectaddress">

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

									<a class="btn btn-primary itemselect"
										onclick="SelectAddress(${addressID}); return false;">选择</a>

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
													<input type="text" placeholder="详细地址" value=""
														id="address3"> <input type="text"
														placeholder="邮政编码" id="address4"> <a
														class="btn btn-primary" onclick="addAddress();return false;">确定</a>
												</form>
												
											</div>
											<div class="form-two">
												<form onSubmit="return false;">
													<input type="text" placeholder="收货人姓名" value=""
														id="consignee"> <input type="text"
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
									<td class="cart_product"><a
										href='BookDetail?bookID=${bookID }'><img src="${imageUrl }"></a></td>
									<td class="cart_description">
										<h4>
											<a href='BookDetail?bookID=${bookID }'>${bookName}</a>
										</h4>
									</td>
									<td class="cart_price">
										<p>¥${price }</p>
									</td>
									<td class="cart_quantity">
										<div class="cart_quantity_button">
											<a class="cart_quantity_up" href=""
												onclick="return QuantityUp(${buyItemID})"> + </a> <input
												class="cart_quantity_input" type="text" name="quantity"
												onchange="QuantityChange(this.value, ${buyItemID})"
												value="${num }" autocomplete="off" size="2" /> <a
												class="cart_quantity_down" href=""
												onclick="return QuantityDown(${buyItemID})"> - </a>
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
												<td></td>
												<td><div style="text-align: right;" id="div_submit">
														<a class="btn btn-default check_out"
															onclick="SubmitOrder(); return false;">提交订单</a>
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
							<li><a href="Index">主页</a></li>
							<li><a href="initSearchAction">开始选购</a></li>
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
		$(".itemselect").click(function(e) {
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
		});
		function gouserinfo() {
			$.ajax({
				url : "GetUsrname",
				dataType : "json",
				success : function(data) {
					if (data == "") {
						location.href = "login.jsp?userinfo.jsp";
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
				    location.href="login.jsp?cart.jsp";
				}else{
				    location.href="cart.jsp"
				}
			}
		})
		}
	</script>


	<script>
		var g_addressID = -1;
		var g_totalPrice = ${totalPrice};
		function SelectAddress(addressID) {
			g_addressID = addressID;
		}

		function SubmitOrder() {

			var urlCheck = "CheckBuyNumLTRestNum?";
			var trs = $(".itemtr");
			$.each(trs, function(i, list) {
				urlCheck += "&buyItemIDList=" + list.getAttribute("id");
			});
			
			$.ajax({
				url: urlCheck,
				dataType: "json",
				success: function(data){
					if(data){  //库存均充足
						if (g_addressID == -1) {
							swal("Sorry!", "请选择一个收获地址哟，亲~！", "error");
							return false;
						}
						var url = "SubmitOrder?addressID=" + g_addressID;
						$.each(trs, function(i, list) {
							url += "&buyItemIDList=" + list.getAttribute("id");
						})

			 			window.location.href = url;
					}
					else{
						swal("Sorry!", "库存不足，先少买几个吧亲~", "error");
					}
				}
			});
			
			
			
			

		}


		function QuantityChange(num, buyItemID) {
			if(num <= 0){
				swal("Sorry!", "购买数目有误~", "error");
				num = 1;
				$("tr#" + buyItemID).find(".cart_quantity_input").val(num);
			}
			updateCart(buyItemID, num);
			return false;
		}
		
		
		function QuantityUp(buyItemID) {
			var currentNum = parseInt($("tr#" + buyItemID).find(
					".cart_quantity_input").val());
			updateCart(buyItemID, currentNum + 1);
			return false;
		}

		function QuantityDown(buyItemID) {
			var currentNum = parseInt($("tr#" + buyItemID).find(
					".cart_quantity_input").val());
			if (currentNum == 1)
				return false;
			updateCart(buyItemID, currentNum - 1);
			return false;
		}

		function updateCart(buyItemID, num) {
			$.ajax({
				url : "UpdateCartItem?buyItemID=" + buyItemID + "&num=" + num,
				dataType : "json",
				success : function(data) {
					//data便是更新之后这条数据的trCartItem
					//更新这条数据对应的html
					var tr = $("tr#" + buyItemID);
					var numInput = tr.find(".cart_quantity_input");
					var itemTotalPrice = tr.find(".cart_total_price");
					numInput.val(data.num);
					
					var oldItemTotalPrice = parseFloat(itemTotalPrice.html().substr(1, itemTotalPrice.html().length)).toFixed(2);
					
					itemTotalPrice.html("¥" + data.buyItemPrice);
					
					g_totalPrice = parseFloat(g_totalPrice) - parseFloat(oldItemTotalPrice) + parseFloat(data.buyItemPrice);
					g_totalPrice = g_totalPrice.toFixed(2);
					$("#orderTotal").html("¥" + g_totalPrice);

				}
			})
		}

		function addAddress() {
			var consignee = $("input[id='consignee']").val();
			var tel = $("input[id='tel']").val();
			var address = $("input[id='address1']").val()
					+ $("input[id='address2']").val()
					+ $("input[id='address3']").val()
					+ $("input[id='address4']").val();
			$
					.ajax({
						url : "AddAddress",
						data : {
							"consignee" : consignee,
							"tel" : tel,
							"addressDetail" : String(address)
						},
						dataType : "json",
						success : function(data) {
							var address = $("<div class='panel col-sm-3 item'>"
									+ "<div class='panel-body text-center bk-padding-off bk-wrapper'>"
									+ "<img src='images/addressheader.jpg' alt='' class='img-responsive'>"
									+ "</div>"
									+ "<div class='panel-body text-center'>"
									+ "<h3 class='bk-margin-off'>"
									+ "<strong>"
									+ data.person
									+ "</strong>"
									+ "</h3>"
									+ "<small class='bk-fg-inverse'>"
									+ data.tel
									+ "</small>"
									+ "<p class='bk-margin-off-bottom bk-fg-gray'>"
									+ "<em>"
									+ data.address
									+ "</em>"
									+ "</p>"
									+ "<a class='btn btn-primary itemselect'>选择</a>"
									+ "</div>");

							$("div[id='selectaddress']").prepend(address);

							location.reload()
						}
					})
		}
	</script>
</body>
</html>