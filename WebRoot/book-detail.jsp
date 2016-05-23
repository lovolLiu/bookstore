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
<link rel="stylesheet" href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
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
                    		<input type="text" placeholder="输入关键字">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <!--SEARCH WIDGET END-->
                    <!--PRICE FILTER WIDGET START-->
                    <div class="widget widget-price-filter">
                    	<h2>按照价格筛选</h2>
                        <b>10  RMB</b> 
                        <b class="pull-right">1000 RMB</b>
                        <input id="ex2" type="text" class="span2" value="" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[10,400]"/>
                        <a href="#" class="filter">筛选</a>
                    </div>
                    <!--PRICE FILTER WIDGET END-->
                    <!--NEW ARRIVAL WIDGET START-->
                    <div class="widget widget-new-arrival">
                    	<h2>新书上架</h2>
                        <ul>
                        	<li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='newestDivBookList[0].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="newestDivBookList[0].bookName"/></h3>
                                        <p><s:property value="newestDivBookList[0].description"/></p>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='newestDivBookList[1].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="newestDivBookList[1].bookName"/></h3>
                                        <p><s:property value="newestDivBookList[1].description"/></p>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='newestDivBookList[2].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="newestDivBookList[2].bookName"/></h3>
                                        <p><s:property value="newestDivBookList[2].description"/></p>
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
                        	<li><a href="#"><s:property value=""/></a></li>
                            <li><a href="#">Web/Graphic Design</a></li>
                            <li><a href="#">Mobile Development</a></li>
                            <li><a href="#">Video Editing</a></li>
                            <li><a href="#">Photoshop</a></li>
                            <li><a href="#">Web/Graphic Design</a></li>
                            <li><a href="#">Mobile Development</a></li>
                            <li><a href="#">Video Editing</a></li>
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
                                        <a href="#"><img src="<s:property value='hotestDivBookList[0].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="hotestDivBookList[0].bookName"/></h3>
                                        <p><s:property value="hotestDivBookList[0].description"/></p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='hotestDivBookList[1].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="hotestDivBookList[1].bookName"/></h3>
                                        <p><s:property value="hotestDivBookList[1].description"/></p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='hotestDivBookList[2].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="hotestDivBookList[2].bookName"/></h3>
                                        <p><s:property value="hotestDivBookList[2].description"/></p>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='hotestDivBookList[3].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="hotestDivBookList[3].bookName"/></h3>
                                        <p><s:property value="hotestDivBookList[3].description"/></p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='hotestDivBookList[4].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="hotestDivBookList[4].bookName"/></h3>
                                        <p><s:property value="hotestDivBookList[4].description"/></p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="<s:property value='hotestDivBookList[5].URL'/>" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3><s:property value="hotestDivBookList[5].bookName"/></h3>
                                        <p><s:property value="hotestDivBookList[5].description"/></p>
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
                                    <img src="images/book-detail.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="kode-text">
                                	<h2> <s:property value="book.bookName"/></h2>
                                    <div class="product-review">
                                        <div>
                                            <input id="input-21b" value="4" type="number" class="rating" min=0 max=5 step=1 data-size="lg">
                                        </div>
                                        <p><s:property value = "bookScore" />分</p>
                                    </div>
                                    <div class="product-price">
                                        <h4><s:property value="book.price"/> RMB</h4>
                                        <p>作者: <span class="color"><s:property value="book.author"/></span></p>
                                    </div>
                                    <div class="book-text">
                                    	<p><s:property value="book.description"/></p>
                                    </div>
                                    <div class="book-text">
                                        <p>标签: 文学.</p>
                                        <p>作者: <s:property value="book.author"/></p>
                                        <p>出版商:<s:property value="publisher.publisherName"/> </p>
                                        <p>书目ID: 1100</p>
                                    </div>
                                    <a href="StraightBuy?bookID=9&num=1" class="add-to-cart">立即购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--BOOK DETAIL END-->
                    <!--PRODUCT REVIEW TABS START-->
                    <div class="product-review-tabs">
                <!--NAV TABS START-->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#Description " aria-controls="Description" role="tab" data-toggle="tab">书目简介 </a></li>
                    <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">评论</a></li>
                </ul>
                <!--NAV TABS END-->
                <!--TAB PANEL START-->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="Description">
                       <p><s:property value="book.description"/></p>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="reviews">
                        <div class="kode-comments">
                            <ul>
                                <li>
                                    <div class="kode-thumb">
                                        <a href="#"><img alt="" src="images/author14.png"></a>
                                    </div>
                                    <div class="kode-text">
                                        <h4>Saul Bellow</h4>
                                        <p class="designation">JUNE 20, 2015</p>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                                        <a class="reply" href="#">Reply</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="kode-thumb">
                                        <a href="#"><img alt="" src="images/author14.png"></a>
                                    </div>
                                    <div class="kode-text">
                                        <h4>Saul Bellow</h4>
                                        <p class="designation">JUNE 20, 2015</p>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                                        <a class="reply" href="#">Reply</a>
                                    </div>
                                </li>
                            </ul>
                        </div>                        
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tags">
                         <div class="product-tags">
                            	<a href="#">habemus</a>
                                <a href="#">accusam</a>
                                <a href="#">vero</a>
                                <a href="#">dolor</a>
                                <a href="#">justo</a>
                                <a href="#">diam</a>
                                <a href="#">nonumy</a>
                                <a href="#">consetetur</a>
                                <a href="#">erat</a>
                                <a href="#">sanctus</a>
                                <a href="#">gubergren</a>
                                <a href="#">eirmod</a>
                                <a href="#">habemus</a>
                                <a href="#">accusam</a>
                                <a href="#">vero</a>
                                <a href="#">dolor</a>
                                <a href="#">justo</a>
                                <a href="#">diam</a>
                                <a href="#">nonumy</a>
                                <a href="#">consetetur</a>
                                <a href="#">erat</a>
                                <a href="#">sanctus</a>
                                <a href="#">gubergren</a>
                                <a href="#">eirmod</a>
                                <a href="#">habemus</a>
                                <a href="#">accusam</a>
                                <a href="#">vero</a>
                                <a href="#">dolor</a>
                                <a href="#">justo</a>
                                <a href="#">diam</a>
                                <a href="#">nonumy</a>
                                <a href="#">consetetur</a>
                                <a href="#">erat</a>
                                <a href="#">sanctus</a>
                                <a href="#">gubergren</a>
                                <a href="#">eirmod</a>
                         </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="CustomTab">
                        <p>Ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p> 
                        <p>Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p>
                        <p>Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p>
                        <p>Ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p> 
                    </div>
                </div>
                <!--TAB PANEL END-->
            </div>
                    <!--PRODUCT REVIEW TABS END-->
                    <!--RELATED PRODUCTS START-->
                    <div class="lib-related-products">
                        <h2>相关书籍</h2>
                        <div class="row">
                            <!--PRODUCT GRID START-->
                            <div class="col-md-4 col-sm-6">
                                <div class="best-seller-pro">
                                     <figure>
                            	<img src="images/book7.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Burnt Siena</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Art History Mystery</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Sara Wisseman</p>
                                <p class="price">$334.50</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-4 col-sm-6">
                                <div class="best-seller-pro">
                                    <figure>
                            	<img src="images/book8.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Chrysalis</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Brave Girl</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>William S.</p>
                                <p class="price">$24.75</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-4">
                                <div class="best-seller-pro">
                                    <figure>
                            	<img alt="" src="images/book4.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Dead Water</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Dead Water in the Sea</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Ann Grannger</p>
                                <p class="price">$777.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                    </div>
                                </div>
                            </div>
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
                            <li>
                                <i class="fa fa-paper-plane"></i>
                                <div class="kode-text">
                                    <h4>地址</h4>
                                    <p>北京市海淀区西土城路10号北京邮电大学</p>
                                </div>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <div class="kode-text">
                                    <h4>电话号码</h4>
                                    <p>+55(62) 55258-4570</p>
                                    <p>+55(62) 55258-4570</p>
                                </div>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <div class="kode-text">
                                    <h4>电子邮箱</h4>
                                    <a href="#">teamx@bupt.edu.cn</a>
                                </div>
                            </li>
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
            <div class="cards"><img src="images/cards.png" alt=""></div>
        </div>
    </div>
</div>
<!--WRAPPER END-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/bootstrap-slider.js"></script>
<script src="js/waypoints.min.js"></script> 
<script src="js/jquery.counterup.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/dl-menu/modernizr.custom.js"></script>
<script src="js/dl-menu/jquery.dlmenu.js"></script>
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
<script src="js/star-rating.js" type="text/javascript"></script>
<script type="application/x-javascript"> 
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion           
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
						});
						$("#input-id").rating();
					});
</script>
</body>
</html>