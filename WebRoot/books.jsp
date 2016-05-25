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
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/checkout-rounded.css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
.dummy-fixed {
	position: fixed;
	bottom: 0;
	left: 0;
	padding: 15px;
	width: 100%;
	height: calc(3em + 30px);
	background: orange;
	text-align: center;
	z-index: 99;
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
						<li id="gologin" class="hidden-sm" style="display:none;"><a
							href="login.jsp">登陆</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		<!--HEADER END-->
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>选购</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">选购</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--CONTENT START-->
		<div class="kode-content padding-tb-50">
			<div class="container">
				<div class="row">
					<div class="col-md-3 sidebar">
						<!--SEARCH WIDGET START-->
						<div class="widget widget-search">
							<h2>搜索</h2>
							<div class="input-container">
								<input id="searchinput" type="text" placeholder="输入关键词">
								<i class="fa fa-search"></i>
							</div>
							<a onclick="filter()" class="btn btn-primary col-md-12"
								style="margin-top:15px;">搜索</a>
						</div>
						<!--SEARCH WIDGET END-->
						<!--NEW ARRIVAL WIDGET START-->
						<div class="widget widget-new-arrival">
							<h2>新书上架</h2>
							<ul>
								<li>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${newestDivBookList[0].bookID}"><img
												src="<s:property value='newestDivBookList[0].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="newestDivBookList[0].bookName" />
											</h3>
											<p>
												<s:property value="newestDivBookList[0].author" />
											</p>
										</div>
									</div>
								</li>
								<li>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${newestDivBookList[1].bookID}"><img
												src="<s:property value='newestDivBookList[1].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="newestDivBookList[1].bookName" />
											</h3>
											<p>
												<s:property value="newestDivBookList[1].author" />
											</p>
										</div>
									</div>
								</li>
								<li>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${newestDivBookList[2].bookID}"><img
												src="<s:property value='newestDivBookList[2].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="newestDivBookList[2].bookName" />
											</h3>
											<p>
												<s:property value="newestDivBookList[2].author" />
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!--NEW ARRIVAL WIDGET END-->
						<!--CATEGORY WIDGET START-->
						<div class="widget widget-categories">
							<h2>类别</h2>
							<ul>
								<s:iterator value="btList">
									<li><a href="sortSearchAction?typeID=${typeID }">${type }</a></li>
								</s:iterator>
							</ul>
						</div>
						<!--CATEGORY WIDGET END-->
						<!--NEW ARRIVAL WIDGET START-->
						<div class="widget widget-new-arrival">
							<h2>畅销书目</h2>
							<ul class="bxslider">
								<li>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${hotestDivBookList[0].bookID}"><img
												src="<s:property value='hotestDivBookList[0].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="hotestDivBookList[0].bookName" />
											</h3>
											<p>
												<s:property value="hotestDivBookList[0].author" />
											</p>
										</div>
									</div>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${hotestDivBookList[1].bookID}"><img
												src="<s:property value='hotestDivBookList[1].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="hotestDivBookList[1].bookName" />
											</h3>
											<p>
												<s:property value="hotestDivBookList[1].author" />
											</p>
										</div>
									</div>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${hotestDivBookList[2].bookID}"><img
												src="<s:property value='hotestDivBookList[2].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="hotestDivBookList[2].bookName" />
											</h3>
											<p>
												<s:property value="hotestDivBookList[2].author" />
											</p>
										</div>
									</div>
								</li>
								<li>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${hotestDivBookList[3].bookID}"><img
												src="<s:property value='hotestDivBookList[3].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="hotestDivBookList[3].bookName" />
											</h3>
											<p>
												<s:property value="hotestDivBookList[3].author" />
											</p>
										</div>
									</div>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${hotestDivBookList[4].bookID}"><img
												src="<s:property value='hotestDivBookList[4].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="hotestDivBookList[4].bookName" />
											</h3>
											<p>
												<s:property value="hotestDivBookList[4].author" />
											</p>
										</div>
									</div>
									<div class="new-arrival">
										<div class="kode-thumb">
											<a href="BookDetail?bookID=${hotestDivBookList[5].bookID}"><img
												src="<s:property value='hotestDivBookList[5].URL'/>" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<s:property value="hotestDivBookList[5].bookName" />
											</h3>
											<p>
												<s:property value="hotestDivBookList[5].author" />
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!--NEW ARRIVAL WIDGET END-->
					</div>
					<div class="col-md-9">
						<div class="row">
							<!--BOOK LISTING START-->
							<s:iterator value="divBook">
								<div class="col-md-4 col-sm-6">
									<div class="books-listing-4">
										<div class="kode-thumb">
											<a href="#" onclick="AddCartItem(${bookID}); return false;"><img
												src="${URL }" alt=""></a>
										</div>
										<div class="kode-text">
											<h3>
												<a href="BookDetail?bookID=${bookID }">${bookName }</a>
											</h3>
											<p>
												<a class="btn btn-primary"
													href="BookDetail?bookID=${bookID }">详情</a>
											</p>
										</div>
										<div class="book-price">
											<p>${bookPrice }</p>
											<div class="rating">
												<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
											</div>
										</div>
										<a href="#" class="add-to-cart"
											onclick="AddCartItem(${bookID}); return false;">Add to
											cart</a>
									</div>
								</div>
							</s:iterator>


							<!--BOOK LISTING END-->
							<nav>
								<ul class="pagination">
									<li><a href="initSearchAction?pageNo=<s:if test='pageNo == 1'>1</s:if><s:else>${pageNo-1 }</s:else>" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									
									<s:iterator value="navPageTag" id="i">
										<li><a href="initSearchAction?pageNo=${i }">${i }</a></li>
									</s:iterator>
									
									<li> <a href="initSearchAction?pageNo=<s:if test='pageNo >= pageCount'>${pageCount }</s:if><s:else>${pageNo+1 }</s:else>" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="dummy-fixed">
			<svg class="checkout__icon" width="30px" height="30px"
				viewBox="0 0 35 35">
					<path
					d="M33.623,8.004c-0.185-0.268-0.486-0.434-0.812-0.447L12.573,6.685c-0.581-0.025-1.066,0.423-1.091,1.001 c-0.025,0.578,0.423,1.065,1.001,1.091L31.35,9.589l-3.709,11.575H11.131L8.149,4.924c-0.065-0.355-0.31-0.652-0.646-0.785 L2.618,2.22C2.079,2.01,1.472,2.274,1.26,2.812s0.053,1.146 0.591,1.357l4.343,1.706L9.23,22.4c0.092,0.497,0.524,0.857,1.03,0.857 h0.504l-1.15,3.193c-0.096,0.268-0.057,0.565,0.108,0.798c0.163,0.232,0.429,0.37,0.713,0.37h0.807 c-0.5,0.556-0.807,1.288-0.807,2.093c0,1.732,1.409,3.141,3.14,3.141c1.732,0,3.141-1.408,3.141-3.141c0-0.805-0.307-1.537-0.807-2.093h6.847c-0.5,0.556-0.806,1.288-0.806,2.093c0,1.732,1.407,3.141,3.14,3.141 c1.731,0,3.14-1.408,3.14-3.141c0-0.805-0.307-1.537-0.806-2.093h0.98c0.482,0,0.872-0.391,0.872-0.872s-0.39-0.873-0.872-0.873 H11.675l0.942-2.617h15.786c0.455,0,0.857-0.294,0.996-0.727l4.362-13.608C33.862,8.612,33.811,8.272,33.623,8.004z M13.574,31.108c-0.769,0-1.395-0.626-1.395-1.396s0.626-1.396,1.395-1.396c0.77,0,1.396,0.626,1.396,1.396S14.344,31.108,13.574,31.108z M25.089,31.108c-0.771,0-1.396 0.626-1.396-1.396s0.626-1.396,1.396-1.396c0.77,0,1.396,0.626,1.396,1.396 S25.858,31.108,25.089,31.108z" />
				</svg>
			<div class="checkout">
				<a class="checkout__button" href="#" onclick="CheckoutCart();">
					<!-- Fallback location --> <span class="checkout__text"> <span
						class="checkout__text-inner checkout__initial-text">结算</span> <span
						class="checkout__text-inner checkout__final-text">$<span
							id="price_number_span">40.70</span><i
							class="fa fa-fw fa-shopping-cart"></i></span>
				</span>
				</a>
				<div class="checkout__order">
					<div class="checkout__order-inner">
						<table class="checkout__summary">
							<thead>
								<tr>
									<th>商品</th>
									<th>数量</th>
									<th>价格</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody id="tbody_cart">
								<!-- 								<tr> -->
								<!-- 									<td>Imitations <span>Mark Lanegan</span></td> -->
								<!-- 									<td>1</td> -->
								<!-- 									<td>$12.90</td> -->
								<!-- 									<td><button class="checkout__action"> -->
								<!-- 											<i class="icon fa fa-trash"></i> -->
								<!-- 										</button></td> -->
								<!-- 								</tr> -->
								<!-- 								<tr> -->
								<!-- 									<td>Out Of Exile <span>Audioslave</span></td> -->
								<!-- 									<td>1</td> -->
								<!-- 									<td>$15.90</td> -->
								<!-- 									<td><button class="checkout__action"> -->
								<!-- 											<i class="icon fa fa-trash"></i> -->
								<!-- 										</button></td> -->
								<!-- 								</tr> -->
								<!-- 								<tr> -->
								<!-- 									<td>Cure For Pain <span>Morphine</span></td> -->
								<!-- 									<td>1</td> -->
								<!-- 									<td>$11.90</td> -->
								<!-- 									<td><button class="checkout__action"> -->
								<!-- 											<i class="icon fa fa-trash"></i> -->
								<!-- 										</button></td> -->
								<!-- 								</tr> -->
							</tbody>
						</table>
						<!-- /checkout__summary -->
						<button class="checkout__close checkout__cancel">
							<i class="icon fa fa-fw fa-close" onclick="CloseCartDialog()"></i>
						</button>
					</div>
					<!-- /checkout__order-inner -->
				</div>
				<!-- /checkout__order -->
			</div>
			<!-- /checkout -->
			<div class="checkout__count">3</div>
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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/dl-menu/modernizr.custom.js"></script>
	<script src="js/dl-menu/jquery.dlmenu.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/functions.js"></script>
	<script src="js/classie.js"></script>
	<script>
		function filter() {
			var keyword = document.getElementById("searchinput").value;
			location.href = "Search?keyword=" + keyword;
		}
		(function() {
			var dummy = document.getElementById('dummy-grid');
			[].slice
					.call(document.querySelectorAll('.checkout'))
					.forEach(
							function(el) {
								var openCtrl = el
										.querySelector('.checkout__button'), closeCtrl = el
										.querySelector('.checkout__cancel');

								openCtrl
										.addEventListener(
												'click',
												function(ev) {
													ev.preventDefault();
													classie.add(el,
															'checkout--active');
													classie
															.add(dummy,
																	'dummy-grid--highlight');
												});

								closeCtrl.addEventListener('click', function() {
									classie.remove(el, 'checkout--active');
									classie.remove(dummy,
											'dummy-grid--highlight');
								});
							});
		})();
	</script>

	<script>
		$(document).ready(function() {
			UpdateCartNum();
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
		})
		
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
		
		function gocart() {
			$.ajax({
				url : "GetUsrname",
				dataType : "json",
				success : function(data) {
					if (data == "") {
						location.href = "login.jsp?cart.jsp";
					} else {
						location.href = "cart.jsp"
					}
				}
			})
		}

		function UpdateCartNum() {
			var num = 0;
			$.ajax({
				url : "GetCartNum",
				dataType : "json",
				success : function(data) {
					$(".checkout__count").html(data);
				}
			})

		}

		//用在其他页面时只需将 html相对应的id加为tbody_cart即可
		function DownloadCartList() {
			$(".tr_cartitem").remove();
			$
					.ajax({
						url : "GetCartItemList",
						dataType : "json",
						success : function(data) {
							$
									.each(
											data,
											function(i, list) {
												var _tr = '<tr class="tr_cartitem" id="' + list.buyItemID + '">'
														+ '<td>'
														+ list.bookName
														+ '<span>'
														+ list.authorName
														+ '</span></td>'
														+ '<td>'
														+ list.num
														+ '</td>'
														+ '<td>'
														+ list.buyItemPrice
														+ '</td>'
														+ '<td><button class="checkout__action" onclick="deleteCart('
														+ list.buyItemID
														+ ')">'
														+ '<i class="icon fa fa-trash"></i>'
														+ '</button></td>'
														+ '</tr>';
												$("tbody[id='tbody_cart']")
														.prepend(_tr);
											})
						}
					})
		}

		function CheckoutCart() {
			$(".checkout__button")
					.attr("onclick", "window.location='cart.jsp'");
			setTimeout("DownloadCartList()", 200);
			//更新购物车价格
			UpdateCartTotal();
		}

		function UpdateCartTotal() {
			$.ajax({
				url : "GetCartTotal",
				dataType : "json",
				success : function(data) {
					$("#price_number_span").html(data);
				}
			})
		}

		function CloseCartDialog() {
			$(".checkout__button").attr("onclick", "CheckoutCart()");
		}

		function deleteCart(buyItemID) {
			$.ajax({
				url : "DeleteCartItem?buyItemID=" + buyItemID,
				dataType : "json",
				success : function(data) {
					//删除这条数据
					$("#" + buyItemID).slideDown();
					$("#" + buyItemID).remove();
					UpdateCartNum();
					UpdateCartTotal();
				}
			})
			return false;
		}

		function AddCartItem(bookID) {
		
			var url = "AddCartItem?bookID=" + bookID + "&num=1";
			$.ajax({
				url : url,
				dataType : "json",
				success : function(data) {
					if (data == true) {
						messageToast("成功加入购物车~");
						UpdateCartNum();
					} else {
						messageToast("库存不足~");
					}
				},
				error: function(data){
					var loginUrl = "login.jsp?initSearchAction?";
					window.location.href = loginUrl;
				}
				
			})
		}

		function messageToast(messageText) {
			var htmlText = '<div id="time_messagebox" style="position: fixed;margin:auto;left:0; right:0; top:0; bottom:0;width:250px; ' +
			  'height:80px;background: orange;color: white;display: none;border-radius:10px;">'
					+ '<p style="height:80px;margin:0px auto;text-align:center"><span style="line-height:80px;">'
					+ messageText + '</span></p></div>';
			if ($("#time_messagebox").length == 0) {
				$("body").append(htmlText);
			} else {
				$("#time_messagebox").find("span").html(messageText);
			}
			$("#time_messagebox").fadeIn(300);
			setTimeout("$('#time_messagebox').fadeOut(300);", 1200)
		}
	</script>
</body>
</html>