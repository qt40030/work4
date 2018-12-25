<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ustora Demo</title>
<%@include file="/web/page/header.jsp" %>
<script type="text/javascript" src="/work4/web/common/js/common.js"></script>
<!-- Google Fonts -->

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">


<style type="text/css">
.cart_totals {
	float: left;
	margin-bottom: 50px;
	width: 40%;
}

.cart_totals2 {
	margin: 0 auto;
	width: 1150px;
}
</style>
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
						<li><a href="cart.jsp">购物车</a></li>
						<li><a href="checkout.jsp">订单</a></li>
						<li><a href="#">类别</a></li>
						<li><a href="#">其它</a></li>
					</ul>
				</div>
						<div class="single-sidebar">
						<form action="/work4/web/store/selectgoods2.jsp">
							<input type="text" name="name" placeholder="搜索产品..."> <input
								type="submit" value="搜索">
						</form>
					</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->


	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li><img src="img/h4-slide.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							iPhone <span class="primary">6 <strong>Plus</strong></span>
						</h2>
						<h4 class="caption subtitle">Dual SIM</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/h4-slide2.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							by one, get one <span class="primary">50% <strong>off</strong></span>
						</h2>
						<h4 class="caption subtitle">school supplies & backpacks.*</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/h4-slide3.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Apple <span class="primary">Store <strong>Ipod</strong></span>
						</h2>
						<h4 class="caption subtitle">Select Item</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/h4-slide4.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Apple <span class="primary">Store <strong>Ipod</strong></span>
						</h2>
						<h4 class="caption subtitle">& Phone</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->

	<div class="promo-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo1">
						<i class="fa fa-refresh"></i>
						<p>30天内可退</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo2">
						<i class="fa fa-truck"></i>
						<p>免费送货</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo3">
						<i class="fa fa-lock"></i>
						<p>安全付款</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo4">
						<i class="fa fa-gift"></i>
						<p>新产品</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End promo area -->

	<div class="cart_totals2">
		<div class="cart_totals ">
			<table>
				<thead>
					<tr>

					</tr>
				</thead>
				<tbody id="user_tbody"></tbody>
			</table>
		</div>
	</div>

	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">最新产品</h2>
						<div class="product-carousel">
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-1.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> 加入购物车</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> 查看详细信息</a>
									</div>
								</div>

								<h2>
									<a href="single-product.jsp">Samsung Galaxy s5- 2015</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$700.00</ins>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-2.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> 加入购物车</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i>查看详细信息</a>
									</div>
								</div>

								<h2>Nokia Lumia 1320</h2>
								<div class="product-carousel-price">
									<ins>$899.00</ins>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-3.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> 加入购物车</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> 查看详细信息</a>
									</div>
								</div>
								<h2>LG Leon 2015</h2>

								<div class="product-carousel-price">
									<ins>$400.00</ins>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-4.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i>加入购物车</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i>查看详细信息</a>
									</div>
								</div>

								<h2>
									<a href="single-product.jsp">Sony microsoft</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$200.00</ins>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-5.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> 加入购物车</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i>查看详细信息</a>
									</div>
								</div>

								<h2>iPhone 6</h2>

								<div class="product-carousel-price">
									<ins>$1200.00</ins>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-6.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> 加入购物车</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i>查看详细信息</a>
									</div>
								</div>

								<h2>
									<a href="single-product.jsp">Samsung gallaxy note 4</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$400.00</ins>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="product-widget-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">畅销品</h2>
						<a href="" class="wid-view-more">查看全部</a>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Apple new mac book 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">最近浏览过的</h2>
						<a href="#" class="wid-view-more">查看全部</a>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">最新消息</h2>
						<a href="#" class="wid-view-more">查看全部</a>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End product widget area -->

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
							<li><a href="#">My account</a></li>
							<li><a href="#">Order history</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="#">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="#">Mobile Phone</a></li>
							<li><a href="#">Home accesseries</a></li>
							<li><a href="#">LED TV</a></li>
							<li><a href="#">Computer</a></li>
							<li><a href="#">Gadets</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email" placeholder="Type your email"> <input
									type="submit" value="Subscribe">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>你好</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer bottom area -->

	<!-- Latest jQuery form server -->
	<script src="js/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="js/bxslider.min.js"></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
	<script type="text/javascript">
	init()
	function init() {
		$.ajax({
			url : "/work4/goodsController/goods2.do",
			dataType : 'json',
			type : 'post',
			success : function(data) {
				var html = '';
				$.each(data.goods, function(i, dom) {
					html+='<tr id='+dom.code+'>';
					html+='<th>'+dom.name+'</th>';
					$.ajax({
						url : "/work4/goodsController/goods3.do?parentcode="+dom.code,
						dataType : 'json',
						type : 'post',
						async:false,
						success : function(data) {
							$.each(data.goods, function(i, dom) {
								html+='<td><a onclick="selt(\''+dom.code+'\')">'+dom.name+'</a></td>';
							})
							html+='</tr>';
						}
					})
				})
				   $("#user_tbody").html(html);
			}
		})
	}
	
	function selt(code){
		window.location.href="/work4/web/store/selectgoods.jsp?code="+code;
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
	
	</script>
</body>
</html>