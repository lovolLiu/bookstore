<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bookaholic</title>
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
    background: #E2E0D3;
    text-align: center;
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
					<li class="hidden-sm"><a href="">开始选购</a></li>
					<li class="hidden-sm"><a href="">购物车</a></li>
					<li class="hidden-sm"><a href="">我的订单</a></li>
					<li class="hidden-sm"><a href="">我的账户</a></li>
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
                    		<input type="text" placeholder="输入关键词">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <!--SEARCH WIDGET END-->
                    <!--PRICE FILTER WIDGET START-->
                    <div class="widget widget-price-filter">
                    	<h2>按价格过滤</h2>
                        <b>¥ 10</b> 
                        <b class="pull-right">¥ 1000</b>
                        <input id="ex2" type="text" class="span2" value="" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[10,400]"/>
                        <a href="#" class="filter">过滤</a>
                    </div>
                    <!--PRICE FILTER WIDGET END-->
                    <!--NEW ARRIVAL WIDGET START-->
                    <div class="widget widget-new-arrival">
                    	<h2>新品上架</h2>
                        <ul>
                        	<li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival1.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival2.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival3.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--NEW ARRIVAL WIDGET END--> 
                    <!--CATEGORY WIDGET START-->
                    <div class="widget widget-categories">
                    	<h2>图书分类</h2>
                        <ul>
                        	<li><a href="#">摄影</a></li>
                            <li><a href="#">图像设计</a></li>
                            <li><a href="#">移动开发</a></li>
                            <li><a href="#">视频剪辑</a></li>
                            <li><a href="#">Photoshop</a></li>
                        </ul>
                    </div>
                    <!--CATEGORY WIDGET END-->
                    <!--NEW ARRIVAL WIDGET START-->
                    <div class="widget widget-new-arrival">
                    	<h2>热销榜</h2>
                        <ul class="bxslider">
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival2.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival1.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et</p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival3.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                            	<div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival3.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival2.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
                                    </div>
                                </div>
                                <div class="new-arrival">
                                    <div class="kode-thumb">
                                        <a href="#"><img src="images/new-arrival1.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                        <h3>consetetur sadip scing</h3>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore</p>
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
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book2.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book3.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book4.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book5.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book6.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book7.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book8.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <!--BOOK LISTING START-->
                        <div class="col-md-4 col-sm-6">
                            <div class="books-listing-4">
                                <div class="kode-thumb">
                                    <a href="#"><img src="images/book9.png" alt=""></a>
                                </div>
                                <div class="kode-text">
                                    <h3><a href="#">Basic Time Management Course</a></h3>
                                    <p><a href="books-detail.jsp">详情</a></p>
                                </div>
                                <div class="book-price">
                                    <p>$24.75</p>
                                    <div class="rating">
                                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                </div>
                                <a href="#" class="add-to-cart">Add to cart</a>
                            </div>
                        </div>
                        <!--BOOK LISTING END-->
                        <nav>
                          <ul class="pagination">
                            <li>
                              <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                              <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                    </div>
                </div>
            </div>
            
        </div>
   </div> 
  <div class="dummy-fixed">
				<svg class="checkout__icon" width="30px" height="30px" viewBox="0 0 35 35">
					<path d="M33.623,8.004c-0.185-0.268-0.486-0.434-0.812-0.447L12.573,6.685c-0.581-0.025-1.066,0.423-1.091,1.001 c-0.025,0.578,0.423,1.065,1.001,1.091L31.35,9.589l-3.709,11.575H11.131L8.149,4.924c-0.065-0.355-0.31-0.652-0.646-0.785 L2.618,2.22C2.079,2.01,1.472,2.274,1.26,2.812s0.053,1.146 0.591,1.357l4.343,1.706L9.23,22.4c0.092,0.497,0.524,0.857,1.03,0.857 h0.504l-1.15,3.193c-0.096,0.268-0.057,0.565,0.108,0.798c0.163,0.232,0.429,0.37,0.713,0.37h0.807 c-0.5,0.556-0.807,1.288-0.807,2.093c0,1.732,1.409,3.141,3.14,3.141c1.732,0,3.141-1.408,3.141-3.141c0-0.805-0.307-1.537-0.807-2.093h6.847c-0.5,0.556-0.806,1.288-0.806,2.093c0,1.732,1.407,3.141,3.14,3.141 c1.731,0,3.14-1.408,3.14-3.141c0-0.805-0.307-1.537-0.806-2.093h0.98c0.482,0,0.872-0.391,0.872-0.872s-0.39-0.873-0.872-0.873 H11.675l0.942-2.617h15.786c0.455,0,0.857-0.294,0.996-0.727l4.362-13.608C33.862,8.612,33.811,8.272,33.623,8.004z M13.574,31.108c-0.769,0-1.395-0.626-1.395-1.396s0.626-1.396,1.395-1.396c0.77,0,1.396,0.626,1.396,1.396S14.344,31.108,13.574,31.108z M25.089,31.108c-0.771,0-1.396 0.626-1.396-1.396s0.626-1.396,1.396-1.396c0.77,0,1.396,0.626,1.396,1.396 S25.858,31.108,25.089,31.108z"/>
				</svg>
				<div class="checkout">
					<a class="checkout__button" href="#"><!-- Fallback location -->
						<span class="checkout__text">
							<span class="checkout__text-inner checkout__initial-text">Checkout</span>
							<span class="checkout__text-inner checkout__final-text">$40.70 <i class="fa fa-fw fa-shopping-cart"></i></span>
						</span>
					</a>
					<div class="checkout__order">
						<div class="checkout__order-inner">
							<table class="checkout__summary">
								<thead>
							        <tr><th>Item</th><th>QTY</th><th>Price</th><th>&nbsp;</th></tr>
							    </thead>
							    <tbody>
									<tr><td>Imitations <span>Mark Lanegan</span></td><td>1</td><td>$12.90</td><td><button class="checkout__action"><i class="icon fa fa-trash"></i></button></td></tr>
									<tr><td>Out Of Exile <span>Audioslave</span></td><td>1</td><td>$15.90</td><td><button class="checkout__action"><i class="icon fa fa-trash"></i></button></td></tr>
									<tr><td>Cure For Pain <span>Morphine</span></td><td>1</td><td>$11.90</td><td><button class="checkout__action"><i class="icon fa fa-trash"></i></button></td></tr>
								</tbody>
							</table><!-- /checkout__summary -->
							<button class="checkout__close checkout__cancel"><i class="icon fa fa-fw fa-close"></i>Close</button>
						</div><!-- /checkout__order-inner -->
					</div><!-- /checkout__order -->
				</div><!-- /checkout -->
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
                            <li><a href="#">主页</a></li> 
                            <li><a href="#">搜索书籍</a></li> 
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
<script src="js/dl-menu/modernizr.custom.js"></script>
<script src="js/dl-menu/jquery.dlmenu.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/bootstrap-slider.js"></script>
<script src="js/waypoints.min.js"></script> 
<script src="js/jquery.counterup.min.js"></script> 
<script src="js/functions.js"></script>
<script src="js/classie.js"></script>
<script>
			(function() {
				var dummy = document.getElementById('dummy-grid');
				[].slice.call( document.querySelectorAll( '.checkout' ) ).forEach( function( el ) {
					var openCtrl = el.querySelector( '.checkout__button' ),
						closeCtrl = el.querySelector( '.checkout__cancel' );

					openCtrl.addEventListener( 'click', function(ev) {
						ev.preventDefault();
						classie.add( el, 'checkout--active' );
						classie.add( dummy, 'dummy-grid--highlight' );
					} );

					closeCtrl.addEventListener( 'click', function() {
						classie.remove( el, 'checkout--active' );
						classie.remove( dummy, 'dummy-grid--highlight' );
					} );
				} );
			})();
		</script>
</body>
</html>