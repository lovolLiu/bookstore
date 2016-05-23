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
					<li class="hidden-sm"><a href="initSearchAction?">开始选购</a></li>
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
                    	<a href="FindMoreBooks">发现更多书籍</a>
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
                    	<a href="FindMoreBooks">发现更多书籍</a>
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
                    	<a href="FindMoreBooks">发现更多书籍</a>
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
							<s:iterator value="divBookList">
                            <div class="col-md-4 col-sm-6">
                                <div class="best-seller-pro">
                                    <figure>
                            			<img src=${URL } alt="">
                           	 		</figure>
                            		<div class="kode-text">
                            			<h3><a href="#">${author }</a></h3>
                            		</div>
                            		<div class="kode-caption">
                            			<h3>${bookName }</h3>
                                			<div class="rating">
												<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
											</div>
                                		<p>${author }</p>
                                		<p class="price">${bookPrice }</p>
                               			<a href="#" class="add-to-cart">Add To Cart</a>
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
                <s:iterator value="divBookListNewest">
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	<img src=${URL } alt="">
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>${bookName }</h2>
                            <ul>
                            	<li><p>by: <a href="#">${author }</a></p></li>
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
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
                <div class="row">
                    <!--SECTION CONTENT END-->
                    <ul class="nav nav-tabs" role="tablist">
						<s:iterator value="divBookListHottest">
                        <li role="presentation" class="col-md-4 col-sm-3 visible-lg visible-md">
                            <a href="#${bookID }" role="tab" data-toggle="tab">
                            	<div class="lib-papular-thumb">
                                    <img src=${URL } alt=""/>
                                </div>
                            </a>
                        </li>
                        </s:iterator>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                    	<s:iterator value="divBookListHottest" var="d">
                    	<s:if test="#d.bookID ==1 ">
                        <div role="tabpanel" class="tab-pane fade in active" id=${bookID }>
                        	<div class="lib-papular">
                                <div class="kode-thumb">
                                    <img src=${URL } alt="">
                                </div>
                                <div class="kode-text">
                                    <h2>${bookName }</h2>
                                    <h4>${author }</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>${description }</p>
                                    <div class="lib-price">
                                        <h3>${bookPrice }</h3>
                                        <a href="#">See More</a>
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
                                    <h2>${bookName }</h2>
                                    <h4>${author }</h4>
                                    <div class="rating">
                                    <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                                    </div>
                                    <p>${description }</p>
                                    <div class="lib-price">
                                        <h3>${bookPrice }</h3>
                                        <a href="#">See More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </s:else>
                        </s:iterator>
                        
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
                            <li><a href="initSearchAction?">开始选购</a></li>
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