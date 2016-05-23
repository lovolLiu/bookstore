<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
<link rel="stylesheet" type="text/css" href="css/isotope.css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<style>
.order_list tbody td {
	vertical-align: top;
	text-align: center;
}

.order_list thead th {
	vertical-align: top;
	text-align: center;
}

.order_list thead .order_number {
	vertical-align: top;
	text-align: left;
}

.order-table col-md-9 col-md-offset-1 col-xs-12 table tbody td {
	vertical-align: top;
	text-align: center;
}

.pic img {
	float: left;
	max-width: 80px;
	max-height: 90px;
	margin-right: 5%;
	margin-bottom: 5%;
}

.project-filter a {
	display: block;
	margin: 0 0px 0 0;
	color: #252728;
	padding: 9px 10px;
	line-height: 12px;
	font-size: 13px;
	display: block;
	border: 1px solid #ececec;
	background: #f4f6f5;
	font-weight: bold;
}

.project-filter li {
	display: block;
	float: left;
	margin: 0;
	list-style: none;
	margin-bottom: 5px;
	margin-right: 5px;
}

.project-filter {
	display: block;
	margin: 0 0 30px 15px;
	font-size: 12px;
	padding-bottom: 0px;
}

.project-filter a:hover {
	color: white;
	background: orange;
}

.project-filter .filter-selected {
	color: white;
	background: orange;
}
.btn.btn-primary {
	background: #FE980F;
	color: white;
	border: 0 none;
	border-radius: 0;
}
.itemdetail{
    width:20%;
}
.deliver{
    width:20%;
}
.sum{
    width:20%;
}
.status{
    width:20%;
}
.operation{
    width:20%;
}
</style>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
    function formatDate(data) {
    		var strDate = "20"+data;		//for date in the format "YY-MM-DD HH:MM:SS(.000)" 
			var d = new Date(strDate); 
			var formattedDate = d.getFullYear() + "-" + (d.getMonth() + 1)
					+ "-" + d.getDate();
			var hours = ((d.getHours()) % 24 < 10) ? "0"
					+ (d.getHours() ) % 24 : (d.getHours()) % 24;
			var minutes = (d.getMinutes() < 10) ? "0" + d.getMinutes() : d
					.getMinutes();
			var seconds = (d.getSeconds() < 10) ? "0" + d.getSeconds() : d
					.getSeconds();
			var formattedTime = hours + ":" + minutes + ":" + seconds;
			formattedDate = formattedDate + " " + formattedTime;
			return formattedDate;
		}
</script>
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
				<h2>所有订单</h2>
				<ol class="breadcrumb">
					<li><a href="#">主页</a></li>
					<li class="active">所有订单</li>
				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<!--CONTENT START-->
		<div class="container">
			<div class="row">
				<section>
					<h3>订单状态</h3>
					<ul class="project-filter" id="filters">
						<li><a id="all-filter" data-filter="*" class="filter-selected">所有</a></li>
						<li><a id="unpaid-filter" data-filter=".未付款">未付款</a></li>
						<li><a id="paid-filter" data-filter=".已付款">已付款</a></li>
						<li><a id="canceled-filter" data-filter=".已取消">已取消</a></li>
					</ul>
				</section>
				<div id="isotope-container" class="container">
				    <s:iterator value="divOrderList" var="u">
				        <s:if test="#u.orderStats != '已删除'">
				        <table id="<s:property value='orderId'/>" class="table table-striped isotope-item <s:property value='orderStats'/>">
					    <tbody>
					        <tr class="itemhead">
					            <td colspan="5">
					                <span class="dealtime">
					                    <script type="text/javascript">
					                        var formatedDate = formatDate("<s:property value='dealTime' />");
					                        $('#<s:property value='orderId'/>').find('tbody').find('.dealtime').html(formatedDate);
					                    </script>
					                </span>
					                <span class="orderhead"> 订单号：</span>
					                <span class="orderno"><s:property value='orderId'/></span>
					            </td>
					        </tr>
					        <tr class="item">
					            <td class="itemdetail">
					                <div>
					                    <s:iterator value="#u.orderItemList">
					                      <div class="pic"><img src="<s:property value='imageUrl' />"></div>
					                    </s:iterator>
					                </div>
					            </td>
					            <td class="deliver">
					                <span data-toggle="tooltip" data-placement="bottom" title=""><s:property value='consignee'/></span>
					            </td>
					            <td class="sum"><span><s:property value='totalPrice'/></span></td>
					            <td class="status"><span><s:property value='orderStats'/></span></td>
					            <s:if test="#u.orderStats == '未付款'">
					                <td class="operation">
					                    <a class="btn btn-primary canelorder">取消</a>
					                    <a class="btn btn-primary deleteorder">删除</a>
					                    <a class="btn btn-primary orderdetail" href="OrderDetail?orderID=<s:property value='orderId'/>">详情</a>
					                </td>
					            </s:if>
					            <s:else>
					                <td class="operation">
					                    <a class="btn btn-primary deleteorder">删除</a>
					                    <a class="btn btn-primary orderdetail" href="OrderDetail?orderID=<s:property value='orderId'/>">详情</a>
					                </td>
					            </s:else>
					        </tr>
					    </tbody>
				    </table>
				    </s:if>
				    </s:iterator>
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
	<script src="js/jquery.isotope.js"></script>
	<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        }
        var $container = $('#isotope-container');
		$container.isotope({
			itemSelector : '.isotope-item',
		});
		$(document).ready(function() {
			var filterid = getUrlParam("filter");
			$('#filters li a').removeClass('filter-selected');
			if(filterid == "0"){//userinfo页点击了“待付款”
			    $('#unpaid-filter').addClass('filter-selected');
			    var selector = $('#unpaid-filter').attr('data-filter');
			    $container.isotope({
				    filter : selector
			    });
			    return false;
			}else if(filterid == "1"){//userinfo页点击了“已付款”
			    $('#paid-filter').addClass('filter-selected');
			    var selector = $('#paid-filter').attr('data-filter');
			    $container.isotope({
				    filter : selector
			    });
			    return false;
			}else{//userinfo页点击了“查看全部订单”
			    $('#all-filter').addClass('filter-selected');
			}
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true
			// 100% fit in a container
			});
		});
		//按下过滤标签的function
		$('#filters li a').click(function() {
			$('#filters li a').removeClass('filter-selected');
			$(this).addClass('filter-selected');
			var selector = $(this).attr('data-filter');
			$container.isotope({
				filter : selector
			});
			return false;
		})
		
		$("a[class='btn btn-primary canelorder']").click(function cancelOrder(){
			var orderID = $(this).parent().parent().prev().find("span[class='orderno']").text();
			$.ajax({
					url:"CancelOrder",
					type:"post",
					data:{"orderID":orderID},
					dataType:"json",	/* 服务器返回的数据类型 */
					success:function(data){
						if(data=="success"){
							//$(e.target).parent().parent().parent().remove();
		          		}else{
		          			alert("取消失败");
		          		}
					}
				});
		})
		
		$("a[class='btn btn-primary deleteorder']").click(function deleteOrder(){
			var orderID = $(this).parent().parent().prev().find("span[class='orderno']").text();
			$.ajax({
					url:"DeleteOrder",
					type:"post",
					data:{"orderID":orderID},
					dataType:"json",	/* 服务器返回的数据类型 */
					success:function(data){
						if(data=="success"){
							$(this).parent().parent().parent().remove();
		          		}else{
		          			alert("删除失败");
		          		}
					}
				});
		})
	</script>

</body>
</html>