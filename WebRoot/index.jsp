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
					<li class="hidden-sm"><a href="initSearchAction.action">开始选购</a></li>
					<li class="hidden-sm"><a href="cart.jsp">购物车</a></li>
					<li class="hidden-sm"><a href="userinfo.jsp">我的账户</a></li>
			    </ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
    <!--HEADER END-->
    <!--BANNER START-->
    <div class="kode-banner">
    	<ul class="bxslider">
        	<li>
            	<img src="images/banner-1.png" alt="">
                <div class="kode-caption-2">
                	<h5>阅读丰富人生</h5>
                	<h2>海量书籍</h2>
                    <p>体验完美购书体验</p>
                    <div class="caption-btns">
                    	<a href="searchbook.jsp">发现更多书籍</a>
                    </div>					
                </div>
            </li>
            <li>
            	<img src="images/banner-2.png" alt="">
                <div class="kode-caption-2">
                	<h5>阅读丰富人生</h5>
                	<h2>海量书籍</h2>
                    <p>体验完美购书体验</p>
                    <div class="caption-btns">
                    	<a href="searchbook.jsp">发现更多书籍</a>
                    </div>					
                </div>
            </li>
            <li>
            	<img src="images/banner-3.png" alt="">
                 <div class="kode-caption-2">
                	<h5>阅读丰富人生</h5>
                	<h2>海量书籍</h2>
                    <p>体验完美购书体验</p>
                    <div class="caption-btns">
                    	<a href="searchbook.jsp">发现更多书籍</a>
                    </div>					
                </div>
            </li>
        </ul>
    </div>
    <!--BANNER END-->
    <!--CONTENT START-->
    <div class="kode-content">
	     <!--RELATED PRODUCTS START-->
                    <div class="lib-related-products">
                        <div class="section-heading-1">
                	<h2>为你推荐</h2>
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
                        <div class="row">
                            <!--PRODUCT GRID START-->
                            <div class="container">
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
                            </div>
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
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
                <!--SECTION CONTENT END-->
                <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#Photography" role="tab" data-toggle="tab">艺术 &amp; 摄影</a></li>
                <li role="presentation"><a href="#Biographies" role="tab" data-toggle="tab">自传 &amp; 回忆录</a></li>
                <li role="presentation"><a href="#Business" role="tab" data-toggle="tab">商业</a></li>
                <li role="presentation"><a href="#Computers" role="tab" data-toggle="tab">电脑 &amp; 网络</a></li>
                </ul>
                
                <!-- Tab panes -->
                <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="Photography">
                	<ul class="bxslider">
                    	<li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3>PENDRAGON</h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>PENDRAGON Dr.Machale</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Dr.Machale</p>
                                <p class="price">$224.20</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book2.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Bridget Jones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Mad About the Boy</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Helen Fielding</p>
                                <p class="price">$77.70</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img src="images/book3.png" alt="">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img src="images/book4.png" alt="">
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
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book5.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Winning</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Winning Story</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Mind Set</p>
                                <p class="price">$447.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book10.png">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img alt="" src="images/book7.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Fault In our Stars</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Paper Towns</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Daniel Abraham</p>
                                <p class="price">$770.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book8.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Ruby Of Egypt</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Ruby Of Egypt</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cat Howard</p>
                                <p class="price">$996.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book9.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Fableheaven</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Fableheaven The Master</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Brandon Hall</p>
                                <p class="price">$542.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Star Trek</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Star Trek Course</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>DisAvowed</p>
                                <p class="price">$821.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book10.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">City Of Bones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>City Of Bones Lies here</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cassandra Clare</p>
                                <p class="price">$362.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book2.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Annette Blair</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Annette Blair The Maker</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Vampire Dragon</p>
                                <p class="price">$599.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                    </ul>
                	
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Biographies">
                	<ul class="bxslider-1">
                    	<li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book3.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3>PENDRAGON</h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>PENDRAGON Dr.Machale</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Dr.Machale</p>
                                <p class="price">$224.20</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book4.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Bridget Jones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Mad About the Boy</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Helen Fielding</p>
                                <p class="price">$77.70</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img src="images/book5.png" alt="">
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
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book8.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Winning</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Winning Story</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Mind Set</p>
                                <p class="price">$447.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book9.png">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img alt="" src="images/book13.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Fault In our Stars</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Paper Towns</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Daniel Abraham</p>
                                <p class="price">$770.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Ruby Of Egypt</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Ruby Of Egypt</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cat Howard</p>
                                <p class="price">$996.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book4.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Fableheaven</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Fableheaven The Master</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Brandon Hall</p>
                                <p class="price">$542.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book2.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Star Trek</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Star Trek Course</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>DisAvowed</p>
                                <p class="price">$821.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book3.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">City Of Bones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>City Of Bones Lies here</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cassandra Clare</p>
                                <p class="price">$362.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book4.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Annette Blair</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Annette Blair The Maker</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Vampire Dragon</p>
                                <p class="price">$599.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                    </ul>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Business">
                	<ul class="bxslider-3">
                    	<li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book4.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3>PENDRAGON</h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>PENDRAGON Dr.Machale</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Dr.Machale</p>
                                <p class="price">$224.20</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book5.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Bridget Jones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Mad About the Boy</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Helen Fielding</p>
                                <p class="price">$77.70</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
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
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book6.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Winning</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Winning Story</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Mind Set</p>
                                <p class="price">$447.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book9.png">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img alt="" src="images/book.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Fault In our Stars</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Paper Towns</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Daniel Abraham</p>
                                <p class="price">$770.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book2.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Ruby Of Egypt</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Ruby Of Egypt</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cat Howard</p>
                                <p class="price">$996.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book3.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Fableheaven</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Fableheaven The Master</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Brandon Hall</p>
                                <p class="price">$542.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book4.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Star Trek</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Star Trek Course</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>DisAvowed</p>
                                <p class="price">$821.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book5.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">City Of Bones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>City Of Bones Lies here</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cassandra Clare</p>
                                <p class="price">$362.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book6.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Annette Blair</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Annette Blair The Maker</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Vampire Dragon</p>
                                <p class="price">$599.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                    </ul>
                </div>
				<div role="tabpanel" class="tab-pane fade" id="Computers">
                	<ul class="bxslider-4">
                    	<li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book5.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3>PENDRAGON</h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>PENDRAGON Dr.Machale</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Dr.Machale</p>
                                <p class="price">$224.20</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img src="images/book6.png" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Bridget Jones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Mad About the Boy</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Helen Fielding</p>
                                <p class="price">$77.70</p>
                                <a href="#" class="add-to-cart">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
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
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book9.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Winning</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Winning Story</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Mind Set</p>
                                <p class="price">$447.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book10.png">
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
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                               <figure>
                            	<img alt="" src="images/book2.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Fault In our Stars</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Paper Towns</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Daniel Abraham</p>
                                <p class="price">$770.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book6.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">The Ruby Of Egypt</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>The Ruby Of Egypt</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cat Howard</p>
                                <p class="price">$996.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                        <li>
                        	<!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book7.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Fableheaven</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Fableheaven The Master</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Brandon Hall</p>
                                <p class="price">$542.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                                </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book10.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Star Trek</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Star Trek Course</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>DisAvowed</p>
                                <p class="price">$821.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book2.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">City Of Bones</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>City Of Bones Lies here</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Cassandra Clare</p>
                                <p class="price">$362.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                            <!--PRODUCT GRID START-->
                            <div class="col-md-3 col-sm-6 best-seller-pro">
                                <figure>
                            	<img alt="" src="images/book3.png">
                            </figure>
                            <div class="kode-text">
                            	<h3><a href="#">Annette Blair</a></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3>Annette Blair The Maker</h3>
                                <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
                                <p>Vampire Dragon</p>
                                <p class="price">$599.75</p>
                                <a class="add-to-cart" href="#">Add To Cart</a>
                                </div>
                            </div>
                            <!--PRODUCT GRID END-->
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        </section>
        <!--FROM THE BLOG SECTION START-->
        <section>
        	<!--SECTION HEADING START-->
            <div class="container">
            	<div class="section-heading-1">
                    <h2>最新上架</h2>
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
            </div>
            <!--SECTION HEADING END-->
            <div class="owl-blog owl-theme">
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog2.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog3.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog4.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog5.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog2.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog3.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog4.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog5.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog2.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog3.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog4.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
                <!--BLOG ITEM END-->
                <!--BLOG ITEM START-->
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src="images/lib-blog5.png" alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky’s Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            <a href="#" class="more"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
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
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
                <div class="row">
                    <!--SECTION CONTENT END-->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active col-md-4 col-sm-3">
                        	<a href="#book1" role="tab" data-toggle="tab">
                                <div class="lib-papular-thumb">
                                    <img src="images/papular-books2.png" alt="">
                                </div>
                        	</a>
                        </li>
                        <li role="presentation" class="col-md-4 col-sm-3">
                            <a href="#book2" role="tab" data-toggle="tab">
                                <div class="lib-papular-thumb">
                                    <img src="images/papular-books3.png" alt="">
                                </div>
                            </a>
                        </li>
                        <li role="presentation" class="col-md-4 col-sm-3">
                            <a href="#book3" role="tab" data-toggle="tab">
                            	<div class="lib-papular-thumb">
                                    <img src="images/papular-books4.png" alt="">
                                </div>
                            </a>
                        </li>
                        <li role="presentation" class="col-md-4 col-sm-3">
                        	<a href="#book4" role="tab" data-toggle="tab">
                                <div class="lib-papular-thumb">
                                    <img src="images/papular-books5.png" alt="">
                                </div>
                        	</a>
                        </li>
                        <li role="presentation" class="col-md-4 col-sm-3 visible-lg visible-md">
                            <a href="#book5" role="tab" data-toggle="tab">
                                <div class="lib-papular-thumb">
                                    <img src="images/papular-books6.png" alt="">
                                </div>
                            </a>
                        </li>
                        <li role="presentation" class="col-md-4 col-sm-3 visible-lg visible-md">
                            <a href="#book6" role="tab" data-toggle="tab">
                            	<div class="lib-papular-thumb">
                                    <img src="images/papular-books7.png" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="book1">
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src="images/papular-books.png" alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>Engaging Imagination</h2>
                                    <h4>Gillian Judson</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>When asked what they want colleges to emphasize most, employers didn’t put science, computing, math, or business management first. According to 2013 employer survey, 95% of employers give hiring preference to college graduates with skills that will enable them to contribute to innovation in the workplace. that will enable them to contribute to innovation in the workplace in the city town of the lost vallies.</p>
                                    <div class="lib-price">
                                        <h3>$245</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="book2">
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src="images/papular-books11.png" alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>Deception</h2>
                                    <h4>John M Fluid</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>The world's most infamous hacker offers an insider's view of the low-tech threats to high-tech security. Kevin Mitnick's exploits as a cyber-desperado and fugitive form one of the most exhaustive FBI manhunts in history and have spawned dozens of articles, books, films, and documentaries. Since his release from federal prison, in 1998 that will enable them to contribute to innovation in the workplace</p>
                                    <div class="lib-price">
                                        <h3>$245</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="book3">
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src="images/papular-books22.png" alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>Last Days</h2>
                                    <h4>Adam Nevill</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>Last Days (winner of the British Fantasy Award for Best Horror Novel of the Year) by Adam Nevill is a Blair Witch style novel in which a documentary film-maker undertakes the investigation of a dangerous. When guerrilla documentary maker, Kyle Freeman, is asked to shoot a film on the notorious cult known as the Temple of the Last Days that will enable them to contribute to innovation in the workplace</p>
                                    <div class="lib-price">
                                        <h3>$555</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="book4">
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src="images/papular-books33.png" alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>Catching Fire</h2>
                                    <h4>Suzanne Collin</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>Against all odds, Katniss Everdeen has won the annual Hunger Games with fellow district tribute Peeta Mellark. But it was a victory won by defiance of the Capitol and their harsh rules. Katniss and Peeta should be happy. After all, they have just won for themselves and their families a life of safety and plenty that will enable them to contribute to innovation in the workplace families a life of safety.</p>
                                    <div class="lib-price">
                                        <h3>$751</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="book5">
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src="images/papular-books44.png" alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>The Fire of Life</h2>
                                    <h4>Runshide </h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>“You’ve reached the age at which people in this family cross the border into the magical world. It’s your turn for an adventure—yes, it’s finally here!” So says Haroun to his younger brother, twelve-year-old Luka. The adventure begins one beautiful starry night in the land of Alifbay, when Luka’s father, Rashid that will enable them to contribute to innovation in the workplace families a life of safety.</p>
                                    <div class="lib-price">
                                        <h3>$852</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="book6">
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src="images/papular-books55.png" alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>New Moon</h2>
                                    <h4>Stephenie Meyer</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>Legions of readers entranced by Twilight are hungry for more and they won't be disappointed. In New Moon, Stephenie Meyer delivers another irresistible combination of romance and suspense with a supernatural twist. The "star-crossed" lovers theme continues as Bella and Edward find themselves facing new obstacles that will enable them to contribute to innovation in the workplace families a life of safety.</p>
                                    <div class="lib-price">
                                        <h3>$630</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                            <li><a href="index.jsp">主页</a></li> 
                            <li><a href="initSearchAction.action">开始选购</a></li>       
                            <!-- <a href="books.jsp">开始选购</a> -->
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
</body>
</html>