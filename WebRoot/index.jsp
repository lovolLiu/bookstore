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
a.book-title{
    color:orange;
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
						<li class="hidden-sm"><a href="initSearchAction?">开始选购</a></li>
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
		<div class="kode-banner">
			<ul class="bxslider">
				<li><img src="images/banner-1.png" alt="">
					<div class="kode-caption-2">
						<h5>阅读丰富人生</h5>
						<h2>海量书籍</h2>
						<p>体验完美购书体验</p>
						<div class="caption-btns">
							<a href="initSearchAction">发现更多书籍</a>
						</div>
					</div></li>
				<li><img src="images/banner-2.png" alt="">
					<div class="kode-caption-2">
						<h5>阅读丰富人生</h5>
						<h2>海量书籍</h2>
						<p>体验完美购书体验</p>
						<div class="caption-btns">
							<a href="initSearchAction">发现更多书籍</a>
						</div>
					</div></li>
				<li><img src="images/banner-3.png" alt="">
					<div class="kode-caption-2">
						<h5>阅读丰富人生</h5>
						<h2>海量书籍</h2>
						<p>体验完美购书体验</p>
						<div class="caption-btns">
							<a href="initSearchAction">发现更多书籍</a>
						</div>
					</div></li>
			</ul>
		</div>
		<!--BANNER END-->
		<!--CONTENT START-->
		<div class="kode-content">
			<!--RELATED PRODUCTS START-->
			<div class="lib-related-products">
				<div class="section-heading-1">
					<h2>为你推荐</h2>
					<div class="kode-icon">
						<i class="fa fa-book"></i>
					</div>
				</div>
				<div class="row">
					<!--PRODUCT GRID START-->
					<div class="container">
						<s:iterator value="divBookList">
							<div class="col-md-4 col-sm-6">
								<div class="best-seller-pro">
									<figure>
										<img src=${URL } alt="">
									</figure>
									<div class="kode-text">
										<h4>
											<a class="book-title" href="BookDetail?bookID=${bookID}">${bookName }</a>
										</h4>
									</div>
									<div class="kode-caption">
										<h4><a href="BookDetail?bookID=${bookID}">${bookName }</a></h4>
										<p>${author }</p>
										<p class="price">￥${bookPrice }</p>
										<a href="#" class="add-to-cart"
											onclick="AddCartItem(${bookID});return false;">Add To
											Cart</a>
									</div>
								</div>
							</div>
						</s:iterator>
						<!--PRODUCT GRID END-->
					</div>
				</div>
				<!--RELATED PRODUCTS END-->
				<!--TOP SELLERS SECTION START-->
				<section class="lib-categories-section">
					<div class="container">
						<!--SECTION CONTENT START-->
						<div class="section-heading-1 dark-sec">
							<h2>图书分类</h2>
							<div class="kode-icon">
								<i class="fa fa-book"></i>
							</div>
						</div>
						<!--SECTION CONTENT END-->
						<ul class="nav nav-tabs" role="tablist">
							<s:iterator value="typeAndBookListItemList" var="d" status="st">
								<s:if test="#st.first">
									<li role="presentation" class="active"><a
										href="#typeid_<s:property value='#st.index'/>"
										onclick="OnClickType(<s:property value='#st.index'/>)"
										role="tab" data-toggle="tab">${bookType.type }</a></li>
								</s:if>
								<s:else>
									<li role="presentation"><a
										href="#typeid_<s:property value='#st.index'/>"
										onclick="OnClickType(<s:property value='#st.index'/>)"
										role="tab" data-toggle="tab">${bookType.type }</a></li>
								</s:else>
							</s:iterator>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">

							<s:iterator value="typeAndBookListItemList" var="d" status="st">
								<div role="tabpanel"
									class="typetab tab-pane fade<s:if test="#st.first"> in active</s:if>"
									id="typeid_<s:property value='#st.index'/>">
									<ul
										class="bxslider<s:if test='#st.first==false'>-<s:property value='#st.index'/></s:if>">
										<s:iterator value="bookList" status="innerst">
											<s:if test="#innerst.index%4 == 0">
												<li>
											</s:if>
											<!--PRODUCT GRID START-->
											<div class="col-md-3 col-sm-6 best-seller-pro">
												<figure>
													<img src="${URL }" alt="">
												</figure>
												<div class="kode-text">
													<h4><a class="book-title" href="BookDetail?bookID=${bookID}">${bookName}</a></h4>
												</div>
												<div class="kode-caption">
													<h4><a href="BookDetail?bookID=${bookID}">${bookName}</a></h4>
													<p>${author}</p>
													<p class="price">¥${bookPrice}</p>
													<a href="#" class="add-to-cart"
														onclick="AddCartItem(${bookID});return false;">Add To
														Cart</a>
												</div>
											</div>
											<!--PRODUCT GRID END-->
											<s:if test="#innerst.index%4 == 3 || #innerst.last">
												</li>
											</s:if>
										</s:iterator>
									</ul>
								</div>
							</s:iterator>
						</div>
					</div>
				</section>
				<!--FROM THE BLOG SECTION START-->
				<section>
					<!--SECTION HEADING START-->
					<div class="container">
						<div class="section-heading-1">
							<h2>最新上架</h2>
							<div class="kode-icon">
								<i class="fa fa-book"></i>
							</div>
						</div>
					</div>
					<!--SECTION HEADING END-->
					<div class="owl-blog owl-theme">
						<!--BLOG ITEM START-->
						<s:iterator value="divBookListNewest">
							<div class="item">
								<div class="lib-blog-post">
									<div class="kode-thumb">
										<img src=${URL } alt="">
										<div class="lib-btns">
											<a href="BookDetail?bookID=${bookID}" data-toggle="tooltip" title="See More"><i
												class="fa fa-search"></i></a> 
										</div>
									</div>
									<div class="kode-text">
										<h2><a class="book-title" href="BookDetail?bookID=${bookID}">${bookName}</a></h2>
										<ul>
											<li><p>
													作者: <a href="#">${author }</a>
												</p></li>
											<!-- <li><p><a href="#">20th August 2015</a></p></li> -->
										</ul>
										<a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
						</s:iterator>
						<!--BLOG ITEM END-->

					</div>
				</section>
				<!--FROM THE BLOG SECTION END-->
				<!--BEST SELLER SLIDER SECTION START-->
				<section class="lib-papular-books">
					<div class="container">
						<!--SECTION CONTENT START-->
						<div class="section-heading-1">
							<h2>热门书籍</h2>
							<div class="kode-icon">
								<i class="fa fa-book"></i>
							</div>
						</div>
						<div class="row">
							<!--SECTION CONTENT END-->
							<ul class="nav nav-tabs" role="tablist">
								<s:iterator value="divBookListHottest">
									<li role="presentation"
										class="col-md-4 col-sm-3 visible-lg visible-md"><a
										href="#${bookID }" role="tab" data-toggle="tab">
											<div class="lib-papular-thumb">
												<img src=${URL } alt="" />
											</div>
									</a></li>
								</s:iterator>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<s:iterator value="divBookListHottest" var="d">
									<s:if test="#d.bookID ==1 ">
										<div role="tabpanel" class="tab-pane fade in active"
											id=${bookID }>
											<div class="lib-papular">
												<div class="kode-thumb">
													<img src=${URL } alt="">
												</div>
												<div class="kode-text">
													<h2><a class="book-title" href="BookDetail?bookID=${bookID}">${bookName}</a></h2>
													<h4>${author }</h4>
													<p>${description }</p>
													<div class="lib-price">
														<h3>¥${bookPrice }</h3>
														<a href="BookDetail?bookID=${bookID}">See More</a>
													</div>
												</div>
											</div>
										</div>
									</s:if>
									<s:else>
										<div role="tabpanel" class="tab-pane fade" id=${bookID }>
											<div class="lib-papular">
												<div class="kode-thumb">
													<img src=${URL } alt="">
												</div>
												<div class="kode-text">
													<h2><a class="book-title" href="BookDetail?bookID=${bookID}">${bookName}</a></h2>
													<h4>${author }</h4>
													<p>${description }</p>
													<div class="lib-price">
														<h3>¥${bookPrice }</h3>
														<a href="BookDetail?bookID=${bookID}">See More</a>
													</div>
												</div>
											</div>
										</div>
									</s:else>
								</s:iterator>

								
								
							</div>
						</div>
					</div>
				</section>
				<!--BEST SELLER SLIDER SECTION END-->
				<!--VIDEO SECTION START-->
				<section class="lib-call-to-action">
					<div class="container">
						<h2>成为我们的会员</h2>
						<p>开启完美购书体验</p>
						<a href="login.jsp" class="reg-btn">注册</a>
					</div>
				</section>
				<!--VIDEO SECTION END-->
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
	<script>
		$(document).ready(function() {
		    $.ajax({
			url : "GetUsrname",
			dataType : "json",
			success : function(data) {
				if(data == ""){
				    $('#gologin').attr("style","");
				}else{
				    $('#userbox').attr("style","");
				    $('#usrName').html(data);
				    $('#myaccount').attr("style","");
				}
			}
		})
		});
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
		$('a[href="#typeid_1"]').one('shown.bs.tab', function (e) {
			$('.bxslider-1').bxSlider();
		});
		$('a[href="#typeid_2"]').one('shown.bs.tab', function (e) {
			$('.bxslider-2').bxSlider();
		});
		$('a[href="#typeid_3"]').one('shown.bs.tab', function (e) {
			$('.bxslider-3').bxSlider();
		});
		$('a[href="#typeid_4"]').one('shown.bs.tab', function (e) {
			$('.bxslider-4').bxSlider();
		});
		$('a[href="#typeid_5"]').one('shown.bs.tab', function (e) {
			$('.bxslider-5').bxSlider();
		});
		$('a[href="#typeid_6"]').one('shown.bs.tab', function (e) {
			$('.bxslider-6').bxSlider();
		});
		
// 			$(document).ready(function (){
// 				for(i = 1;i<7;i++){
// 					$('.bxslider-' + i).bxSlider();
// 				}
// 			})
			
			function OnClickType(typeNum){
// 				var selector = "#typeid_" + typeNum;
// 				$("div.typetab").find("ul").attr("class", "bxslider-1");
// 				$(selector).find("ul").attr("class", "bxslider");
// 				if(typeNum > 0)
// 					$('.bxslider-' + typeNum).bxSlider();
			}


		function AddCartItem(bookID){
			var url = "AddCartItem?bookID=" + bookID + "&num=1";
			$.ajax({
				url: url,
				dataType: "json",
				success: function(data){
					if(data==true){
						swal("Nice!", "已加入购物车！", "success");
						UpdateCartNum();
					}
					else{
						swal("Sorry!", "库存不足！", "error");
					}
				},
				error: function(data){
					swal("Sorry!", "请先登录！", "error");
					var loginUrl = "login.jsp?Index";
					window.location.href = loginUrl;
				}
			})
		}
		</script>
</body>
</html>