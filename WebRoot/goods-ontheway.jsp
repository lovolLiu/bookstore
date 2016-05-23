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
.form-two{
	float: right;
	width: 47%;
}	
input{
    background: #F0F0E9;
    border: 0 none;
    margin-bottom: 10px;
    padding: 10px;
    width: 100%;
    font-weight: 300;
}
select{
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
.cart_product > a > img{
	height:50%;
}
.cart_info table{
	border: none;
}
.cart_info table tr{
	border-top: 0 none;
	vertical-align: inherit;
	border-bottom: 2px solid #67675f;
}
.cart_info td{
	padding: 5px;
	vertical-align: middle !important;
	border:none;
}
.cart_quantity_button{
	width:100px;
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
    font-family: 'Roboto',sans-serif;
    float: left;
    height:28px;
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
.cart_description a{
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
.total_area ul{ 
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
.total-result > tr > td{
	border-top: none;
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
        	<h2>交易成功</h2>
            <ol class="breadcrumb">
              <li><a href="#">主页</a></li>
              <li class="active">交易成功</li>
            </ol>
        </div>
    </div>
    <!--BANNER END-->
    <!--CONTENT START-->
     <div class="kode-content">
    	<div class="container">
            <div class="error-404">
                <h2>恭喜</h2>
                <div class="page-404">
                    <span>您的订单已经成功提交</span>
                </div>
                <p>我们将尽快给您发货。</p>
                <a href="books.jsp" class="go-back">继续逛逛</a>
            </div>   
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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion           
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
						});
					});
				   </script>

</body>
</html>