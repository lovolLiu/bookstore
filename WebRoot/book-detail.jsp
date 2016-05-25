<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<link rel="stylesheet" href="css/star-rating.css" media="all"
	rel="stylesheet" type="text/css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
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

.button_div {
	clear: both;
	margin-top: 20px;
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
				<h2>书目详情</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">书目详情</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--LOGINFORM START-->
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
								<i class="fa fa-search"></i> <a onclick="filter()"
									class="btn btn-primary">搜索</a>
							</div>
						</div>
						<!--SEARCH WIDGET END-->
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
						<!--BOOK DETAIL START-->
						<div class="lib-book-detail">
							<div class="row">
								<div class="col-md-5">
									<div class="kode-thumb">
	
										<img src="<s:property value='bookPicture[0].url'/>" alt="">
									</div>
								</div>
								<div class="col-md-7">
									<div class="kode-text">
										<h2>
											<s:property value="book.bookName" />
										</h2>
										<div class="product-review">
											<div class="rating-container">
												<div class="rating" style="font-size:large;">
													<span class="empty-stars"><span class="star"><i
															class="glyphicon glyphicon-star-empty"></i></span><span
														class="star"><i
															class="glyphicon glyphicon-star-empty"></i></span><span
														class="star"><i
															class="glyphicon glyphicon-star-empty"></i></span><span
														class="star"><i
															class="glyphicon glyphicon-star-empty"></i></span><span
														class="star"><i
															class="glyphicon glyphicon-star-empty"></i></span></span><span
														class="filled-stars" style="width: 80%;"><span
														class="star"><i class="glyphicon glyphicon-star"></i></span><span
														class="star"><i class="glyphicon glyphicon-star"></i></span><span
														class="star"><i class="glyphicon glyphicon-star"></i></span><span
														class="star"><i class="glyphicon glyphicon-star"></i></span><span
														class="star"><i class="glyphicon glyphicon-star"></i></span></span>
												</div>
												<div class="caption">
													<span id="scorecaption" class=""></span>
												</div>
											</div>
										</div>
										<div class="product-price">
											<h4>
												<s:property value="book.price" />
												RMB
											</h4>
											<p>
												作者: <span class="color"><s:property
														value="book.author" /></span>
											</p>
										</div>
										<div class="book-text">
											<p>
												<s:property value="book.description" />
											</p>
										</div>
										<div class="book-text">
											<p>标签: 文学.</p>
											<p>
												作者:
												<s:property value="book.author" />
											</p>
											<p>
												出版商:
												<s:property value="publisher.publisherName" />
											</p>
											<p>
												库存:
												<s:property value="book.restNum" />
											</p>
										</div>
										<div class="cart_quantity">
											<div class="cart_quantity_button">
												<a class="cart_quantity_up" href=""
													onclick="QuantityUp();return false;"> + </a> <input
													class="cart_quantity_input" type="text" name="quantity"
													value="1" autocomplete="off" size="2" readonly="readonly">
												<a class="cart_quantity_down" href=""
													onclick="QuantityDown();return false;"> - </a>
											</div>
										</div>
										<br>
										<div class="button_div">
											<a href="#" class="add-to-cart"
												onclick="StraightBuy();return false;">立即购买</a> <a href="#"
												class="add-to-cart" onclick="AddCartItem();return false;">加入购物车</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--BOOK DETAIL END-->
						<!--PRODUCT REVIEW TABS START-->
						<div class="product-review-tabs">
							<!--NAV TABS START-->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a
									href="#Description " aria-controls="Description" role="tab"
									data-toggle="tab">书目简介 </a></li>
								<li role="presentation"><a href="#reviews"
									aria-controls="reviews" role="tab" data-toggle="tab">评论</a></li>
							</ul>
							<!--NAV TABS END-->
							<!--TAB PANEL START-->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active"
									id="Description">
									<p>
										<s:property value="book.description" />
									</p>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="reviews">
									<div class="kode-comments">
										<ul id="reviews">
										</ul>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="tags">
									<div class="product-tags">
										<a href="#">habemus</a> <a href="#">accusam</a> <a href="#">vero</a>
										<a href="#">dolor</a> <a href="#">justo</a> <a href="#">diam</a>
										<a href="#">nonumy</a> <a href="#">consetetur</a> <a href="#">erat</a>
										<a href="#">sanctus</a> <a href="#">gubergren</a> <a href="#">eirmod</a>
										<a href="#">habemus</a> <a href="#">accusam</a> <a href="#">vero</a>
										<a href="#">dolor</a> <a href="#">justo</a> <a href="#">diam</a>
										<a href="#">nonumy</a> <a href="#">consetetur</a> <a href="#">erat</a>
										<a href="#">sanctus</a> <a href="#">gubergren</a> <a href="#">eirmod</a>
										<a href="#">habemus</a> <a href="#">accusam</a> <a href="#">vero</a>
										<a href="#">dolor</a> <a href="#">justo</a> <a href="#">diam</a>
										<a href="#">nonumy</a> <a href="#">consetetur</a> <a href="#">erat</a>
										<a href="#">sanctus</a> <a href="#">gubergren</a> <a href="#">eirmod</a>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="CustomTab">
									<p>Ipsum euismod his at. Eu putent habemus voluptua sit,
										sit cu rationibus scripserit, modus voluptaria ex per. Aeque
										dicam consulatu eu his, probatus neglegentur disputationi sit
										et. Ei nec ludus epicuri petentium, vis appetere maluisset ad.
										Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel
										eu sumo tritani. Cum ex minim legere.</p>
									<p>Te eam iisque deseruisse, ipsum euismod his at. Eu
										putent habemus voluptua sit, sit cu rationibus scripserit,
										modus voluptaria ex per. Aeque dicam consulatu eu his,
										probatus neglegentur disputationi sit et. Ei nec ludus epicuri
										petentium, vis appetere maluisset ad. Et hinc exerci utinam
										cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum
										ex minim legere.</p>
									<p>Sed an nominavi maiestatis, et duo corrumpit constituto,
										duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod
										his at. Eu putent habemus voluptua sit, sit cu rationibus
										scripserit, modus voluptaria ex per. Aeque dicam consulatu eu
										his, probatus neglegentur disputationi sit et. Ei nec ludus
										epicuri petentium, vis appetere maluisset ad. Et hinc exerci
										utinam cum. Sonet saperet nominavi est at, vel eu sumo
										tritani. Cum ex minim legere.</p>
									<p>Ipsum euismod his at. Eu putent habemus voluptua sit,
										sit cu rationibus scripserit, modus voluptaria ex per. Aeque
										dicam consulatu eu his, probatus neglegentur disputationi sit
										et. Ei nec ludus epicuri petentium, vis appetere maluisset ad.
										Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel
										eu sumo tritani. Cum ex minim legere.</p>
								</div>
							</div>
							<!--TAB PANEL END-->
						</div>
						<!--PRODUCT REVIEW TABS END-->
						<!--RELATED PRODUCTS START-->
						<div class="lib-related-products">
							<h2>猜你喜欢</h2>
							<div class="row">
								<!--PRODUCT GRID START-->
								<s:iterator value="personalFindByAuthorDivBookList">
									<div class="col-md-4 col-sm-6">
										<div class="best-seller-pro">
											<figure>
												<a href="#"><img
													src="<s:property value="URL"/>"
													alt=""></a>
											</figure>
											<div class="kode-text">
												<h3>
													<a href="#"><s:property
														value="bookName" /></a>
												</h3>
											</div>
											<div class="kode-caption">
												<h3>
													<s:property
													value="bookName" />
												</h3>
												<div class="rating">
													<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
												</div>
												<p>
													<s:property
													value="author" />
												</p>
												<p class="price">
													$
													<s:property
													value="bookPrice" />
												</p>
												<a href="#" class="add-to-cart">Add To Cart</a>
											</div>
										</div>
									</div>
								</s:iterator>

								<!--PRODUCT GRID END-->
							</div>
						</div>
						<!--RELATED PRODUCTS END-->
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
								<li><a href="index.jsp">主页</a></li>
								<li><a href="initSearchAction">开始选购</a></li>
								<li><a onclick="gocart()">购物车</a></li>
								<li ><a onclick="gouserinfo()">我的账户</a></li>
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
	<script src="js/star-rating.js" type="text/javascript"></script>
	<script type="application/x-javascript">
		
		
		
		
	     addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	
	
	
	
	</script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
	    function gocart() {
			$.ajax({
				url : "GetUsrname",
				dataType : "json",
				success : function(data) {
					if (data == "") {
						location.href = "login.jsp";
					} else {
						location.href = "cart.jsp"
					}
				}
			})
		}
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
		$(document)
				.ready(
						function() {
							$('#horizontalTab').easyResponsiveTabs({
								type : 'default', //Types: default, vertical, accordion           
								width : 'auto', //auto or any width like 600px
								fit : true
							// 100% fit in a container
							});
							var score = <s:property value="bookScore"/>;
							switch (score) {
							case 1:
								$('#scorecaption').html("一星");
								$('#scorecaption').attr("class",
										"label label-danger");
								$('.rating-container .rating .filled-stars')
										.css("width", "20%");
								break;
							case 2:
								$('#scorecaption').html("两星");
								$('#scorecaption').attr("class",
										"label label-warning");
								$('.rating-container .rating .filled-stars')
										.css("width", "40%");
								break;
							case 3:
								$('#scorecaption').html("三星");
								$('#scorecaption').attr("class",
										"label label-info");
								$('.rating-container .rating .filled-stars')
										.css("width", "60%");
								break;
							case 4:
								$('#scorecaption').html("四星");
								$('#scorecaption').attr("class",
										"label label-primary");
								$('.rating-container .rating .filled-stars')
										.css("width", "80%");
								break;
							case 5:
								$('#scorecaption').html("五星");
								$('#scorecaption').attr("class",
										"label label-success");
								$('.rating-container .rating .filled-stars')
										.css("width", "100%");
								break;
							default:
								$('#scorecaption').html("暂无评价");
								$('#scorecaption').attr("class",
										"label label-default");
							}
							getAppriseList();
							$.ajax({
								url : "GetUsrname",
								dataType : "json",
								success : function(data) {
									if (data == "") {
										$('#gologin').attr("style", "");
									} else {
										$('#userbox').attr("style", "");
										$('#usrName').html(data);
										$('#myaccount').attr("style", "");
									}
								}
							})
						});
	</script>

	<script>
		
		function StraightBuy() {
			var restNum = ${book.restNum};
			var wantedNum = $(".cart_quantity_input").attr("value");
			if (wantedNum > restNum) {
				messageToast("仓库剩余量不足~");
				return;
			}
			var url = "StraightBuy?bookID=${book.bookID }&num=" + wantedNum;
			window.location.href = url;
		}

		function AddCartItem() {
			var url = "AddCartItem?bookID=${book.bookID }&num="
					+ $(".cart_quantity_input").attr("value");
			$.ajax({
				url : url,
				dataType : "json",
				success : function(data) {
					if (data == true) {
						messageToast("成功加入购物车~");
					} else {
						messageToast("仓库剩余量不足~");
					}
				}
			})
		}
		function QuantityUp() {
			var currentNum = parseInt($(".cart_quantity_input").attr("value"));
			$(".cart_quantity_input").attr("value", currentNum + 1);
			return false;
		}

		function QuantityDown() {
			var currentNum = $(".cart_quantity_input").attr("value");
			if (currentNum == 1)
				return false;
			$(".cart_quantity_input").attr("value", currentNum - 1);
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
		function formatDate(data) {
			var d = new Date(data); //for date in the format "YYYY-MM-DDTHH:MM:SS" where T means timezone!!! 
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

		function getAppriseList() {
			$.ajax({
				url : "ShowAppriseList",
				type : "post",
				data : {
					"bookID" : 2
				},
				dataType : "json",
				success : function(data) {
					$.each(data, function(i, list) {
						var strLi = "<li>" + "<div class='kode-thumb'>"
								+ "<a href='#'>"
								+ "<img src='images/author14.png' alt=''/>"
								+ "</a>" + "</div>" + "<div class='kode-text'>"
								+ "<h4>" + list.userName + "</h4>"
								+ "<p class='designation'>"
								+ formatDate(list.appriseTime) + "</p>" + "<p>"
								+ list.text + "</p>" + "</div>" + "</li>";
						$("ul[id='reviews']").append(strLi);
					})
				}
			})
		}
	</script>
</body>
</html>