<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout Page - Ustora Demo</title>
<%@include file="/web/page/header.jsp" %>
 <script type="text/javascript" src="/work4/web/common/js/common.js"></script>
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="user-menu">
						<ul>
							<li><a href="#"><i class="fa fa-user"></i>我的账户</a></li>
							<li><a href="#"><i class="fa fa-heart"></i>收藏</a></li>
							<li><a href="cart.jsp"><i class="fa fa-user"></i>购物车</a></li>
							<li><a href="checkout.jsp"><i class="fa fa-user"></i>订单</a></li>
							<li><%=session.getAttribute("username")==null?"<a href='/work4/web/login.jsp'><i class='fa fa-user'></i>登录</a>":"<i class='fa fa-user'></i>"+session.getAttribute("username")%></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="header-right">
						<ul class="list-unstyled list-inline">
							<li><%=session.getAttribute("username")==null?"<a href='/work4/web/register.jsp'><i class='fa fa-user'></i>注册</a>":"<a onclick='goLogout()'><i class='fa fa-user'></i>退出</a>"%></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="img/logo.png"></a>
						</h1>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="shopping-item">
						<a href="cart.jsp">购物车 - <span class="cart-amunt">￥100</span>
							<i class="fa fa-shopping-cart"></i> <span class="product-count">1</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End site branding area -->
	<div class="mainmenu-area">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">主页</a></li>
						<li><a href="shop.jsp">所有商品</a></li>
						<li><a href="single-product.jsp">商品详情</a></li>
						<li><a href="cart.jsp">购物车</a></li>
						<li><a href="checkout.jsp">订单</a></li>
						<li><a href="#">类别</a></li>
						<li><a href="#">其它</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Shopping Cart</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="product-content-right">
						<div class="woocommerce">
						<form class="layui-form layui-form-pane" method="post">
                                <table cellspacing="0" class="shop_table cart" style="width: 1200px">
                                   <tbody>
                                    <thead id="goods">
                                        <tr>
                                            <th colspan="3">订单编号</th>
                                            <th class="product-remove" colspan="2">日期</th>
                                            <th class="product-thumbnail">总价</th>
                                        </tr>
                                    </thead>
                                       
                                    </tbody>
                                </table>
                                <div id="pageInfoUser"></div>
                            </form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							u<span>Stora</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>
						<div class="footer-social">
							<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
								href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
								href="#" target="_blank"><i class="fa fa-youtube"></i></a> <a
								href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">User Navigation</h2>
						<ul>
							<li><a href="">My account</a></li>
							<li><a href="">Order history</a></li>
							<li><a href="">Wishlist</a></li>
							<li><a href="">Vendor contact</a></li>
							<li><a href="">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="">Mobile Phone</a></li>
							<li><a href="">Home accesseries</a></li>
							<li><a href="">LED TV</a></li>
							<li><a href="">Computer</a></li>
							<li><a href="">Gadets</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<input type="email" placeholder="Type your email"> <input
								type="submit" value="Subscribe">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
<!-- 							Copyright &copy; 2015.Company name All rights reserved.<a -->
<!-- 								target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> -->
						</p>
					</div>
				</div>

				<div class="col-md-4" >
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i><i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>
	<script type="text/javascript">
    init()
    function init() {
    	
    	$.ajax({
    		url : "/work4/orderController/selectpage2.do",
    		data:{"user":'${usercode}'},
    		dataType : 'json',
    		type : 'post',
    		success : function(data) {
        		var laypage = layui.laypage;
        		var curr=1;
        	    var limit=10;
        	    setPageInfo('pageInfoUser',data.count,curr,limit,function(obj,first){
        	    	curr=obj.curr
      			  limit=obj.limit
      			      if(!first){
      			    	init();}
      			    })
    			var html = '';
    			$.each(data.order, function(i, dom) {
    				html+='<tr><th colspan="2">订单编号:'+dom.code+'</th><th class="product-remove">地址:'+dom.address+'</th><th class="product-remove">日期:'+dom.time+'</th><th class="product-thumbnail">总价:'+dom.total_price+'</th><th class="product-thumbnail"><input type="button" onclick="del(\''+dom.code+'\')" value="删除订单"></th></tr>';
					$.ajax({
						url : "/work4/ordergoodsController/select.do?code="+dom.code,
						dataType : 'json',
						type : 'post',
						async:false,
						success : function(data) {
							$.each(data.order, function(i, dom) {
							html+='<tr style="height: 50px;"><td class="product-thumbnail"><a href="single-product.jsp"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="/image/'+dom.url+'"></a></td><td class="product-name">'+dom.name+'</td><td class="product-price"><span class="amount">单价：'+dom.unit_price+'</span></td><td class="product-quantity"><div class="quantity buttons_added">数量：'+dom.number+'</div></td></tr>';
							})
						}
					})
    			});
    	 $("#goods").html(html);
    		}
    	})
    }
	
	function goLogout() {
		if(confirm("确定退出？")){
		$.ajax({
			url:"/work4/userController/logout.do",
			dataType:'text',
			type:'post',
			success:function(data){
				location.href="/work4/web/store/index.jsp"
			}
		})
		}
}
	function del(code){
		if(confirm("确定删除？")){
	       $.ajax({
	    	   url:"/work4/orderController/del.do?code="+code,
	    		dataType:'text',
	    		type:'post',
	    		success:function(data){
	    			if(data==1){
	    				alert("删除成功")
	    				window.location.reload();
	    			}else{
	    				alert("删除失败")
	    			}
	    		}
	       });
	    }
	}
	</script>
</body>
</html>