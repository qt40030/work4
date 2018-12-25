<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart Page - Ustora Demo</title>
    <%@include file="/web/page/header.jsp" %>
<script type="text/javascript" src="/work4/web/common/js/common.js"></script>
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
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
	</div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.jsp">购物车 - <span class="cart-amunt">￥100</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">1</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">主页</a></li>
                        <li><a href="shop.jsp">所有商品</a></li>
                        <li><a href="cart.jsp">购物车</a></li>
                        <li><a href="checkout.jsp">订单</a></li>
                        <li><a href="#">类别</a></li>
                        <li><a href="sure-order.jsp">其它</a></li>
                    </ul>	
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>购物车</h2>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Page title area -->
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">	
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form>
                                <table cellspacing="0" class="shop_table cart" style="height: 500px;width: 1200px">
                                    <thead>
                                        <tr>
                                            <th class="product-remove"><input type="checkbox" id="check" name="checkall" onclick="ins()"><label for="check">全选</label></th>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">&nbsp;</th>
                                            <th class="product-name">商品</th>
                                            <th class="product-price">价格</th>
                                            <th class="product-quantity">数量</th>
                                            <th class="product-subtotal">总计</th>
                                        </tr>
                                    </thead>
                                    <tbody id="goods">
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                               <input type="checkbox">
                                            </td>
                                            <td class="product-remove">
                                                <a title="Remove this item" class="remove" href="#">×</a> 
                                            </td>
                                            <td class="product-thumbnail">
                                                <a href="single-product.jsp"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="img/product-thumb-2.jpg"></a>
                                            </td>

                                            <td class="product-name">
                                                <a href="single-product.jsp">Ship Your Idea</a> 
                                            </td>

                                            <td class="product-price">
                                                <span class="amount">￥15.00</span> 
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="1" min="0" step="1">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">
                                                <span class="amount">￥15.00</span> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="actions" colspan="6">
                                                <input type="submit" value="更新购物车" name="update_cart" class="button">
                                                <input type="button" value="结算" onclick="">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
                        <h2>u<span>Stora</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
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
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                    
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
  	<script src="js/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script src="js/bootstrap.min.js"></script>
    
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
    		url : "/work4/cartController/select.do",
    		data:{"usercode":'${usercode}'},
    		dataType : 'json',
    		type : 'post',
    		success : function(data) {
    			var html = '';
    			$.each(data.goods, function(i, dom) {
                html+='<tr class="cart_item" style="height:100px"><td class="product-remove"><input type="checkbox" name="checkbox" id="checkbox'+dom.id+'" value="'+dom.id+'" onclick="inse('+dom.id+')"></td><td class="product-remove"><a title="Remove this item" class="remove" onclick="del('+dom.id+')">×</a></td><td class="product-thumbnail"><a href="/work4/web/store/single-product.jsp"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="/image/'+dom.url+'"></a></td><td class="product-name"><a href="single-product.jsp">'+dom.goodsname+'</a></td><td class="product-price"><span class="amount" id="'+dom.id+'">￥'+dom.price+'</span></td><td class="product-quantity"><div class="quantity buttons_added"><input type="number" id="num'+dom.id+'" size="4" class="input-text qty text" title="Qty" value="'+dom.num+'" min="1" step="1" onchange="update('+dom.id+')"></div></td><td class="product-subtotal">￥<span class="amount'+dom.id+'">'+dom.num*dom.price+'</span></td></tr>';
    			});
    			html+='<tr style="height:100px;"><td class="actions" colspan="6"><div class="coupon">合计订单￥<span class="amount" id="number">0</span></strong></div><input type="button" value="更新购物车" name="update_cart" class="button"><input type="button" onclick="submitorder()" value="结算" name="proceed" class="checkout-button button alt wc-forward"></td></tr>';
    			 $("#goods").html(html);
    			}	
    	})
    }
    function update(id){
    	$.ajax({
    		url : "/work4/cartController/update.do",
    		data:{"num":$("#num"+id+"").val(),"id":id},
    		dataType : 'json',
    		type : 'post',
    		success : function(data) {
    			init();
    		}
    	})
    }
    function del(id){
    	$.ajax({
    		url : "/work4/cartController/del.do",
    		data:{"id":id},
    		dataType : 'json',
    		type : 'post',
    		success : function(data) {
    			if(data=1){
    				alert("删除成功")
    				init();
    			}else{
    				alert("删除失败")
    			}
    		}
    	})
    }
		$('input[name="checkall"]').on("click",function(){
			if($(this).is(':checked')){
				$('input[name="checkbox"]').each(function(){
					$(this).prop("checked",true);
				});
			}else{
				$('input[name="checkbox"]').each(function(){
					$(this).prop("checked",false);
				});
			}
		});
		function inse(id){
			if($("#checkbox"+id).prop("checked")){
				$("#number").html(parseInt($("#number").html())+parseInt($(".amount"+id).html()))
			}else{
				$("#number").html(parseInt($("#number").html())-parseInt($(".amount"+id).html()))
			}
		}
		function ins(){
			var strIds=new Array();
			if($("#check").prop("checked")){
				$("input[id^='checkbox']").prop("checked","checked");
			    $("input[id^=checkbox]").each(function (i,d){ 
			      if(d.checked) { 
			        strIds.push(d.value); 
			      } 
			    })
			    for(var i = 0;i<strIds.length;i++){
			    $("#number").html(parseInt($("#number").html())+parseInt($(".amount"+strIds[i]).html()))
			    }
			}else{
				$("input[id^='checkbox']").prop("checked","");
				$("#number").html(0)
				$("#check").html(0)
			}
		}
		function submitorder(){
			var strIds=new Array();
		    $("input[id^=checkbox]:checked").each(function (i,d){ 
		       strIds.push(d.value)
		    })
		    location.href="/work4/web/store/sure-order.jsp?id="+strIds+"&price="+$("#number").html()
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