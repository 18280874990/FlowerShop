<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Floral Shop, Ecommerce, Online Shopping, Web Store</title>

<link href="<%=basePath%>templatemo_style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" href="<%=basePath%>css/orman.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="<%=basePath%>css/nivo-slider.css"
	type="text/css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/ddsmoothmenu.css" />

<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}


</script>

<link rel="stylesheet" href="<%=basePath%>css/slimbox2.css"
	type="text/css" media="screen" />
<script type="text/JavaScript" src="<%=basePath%>js/slimbox2.js"></script>

<style>
	.nav{
		color:#FBCF60;
		position:absolute;
		right:50px;
		top:10px;
		z-index:999;
		font-size: 20px;
		font-weight: bold;
		text-decoration: underline;
	}
</style>
</head>

<body>
	<c:choose>
		<c:when test="${not empty uid}">
			<div class="nav">你好,${username}</div>
		</c:when>
		<c:otherwise>
		
			<a class="nav" style="text-decoration: underline;" href="../jumpAction/login.do">考虑一下登录吧!</a>
		
		</c:otherwise>
	</c:choose>
	<div id="templatemo_wrapper_h">
		<div id="templatemo_header_wh">
			<div id="templatemo_header" class="header_home">
				<div id="site_title">
					<a href="" title=""></a>
				</div>
				<div id="templatemo_menu" class="ddsmoothmenu">
					<ul>

						<li><a href="#" class="selected">主页</a></li>
						<li><a href="../jumpAction/login.do">登录注册</a></li>
						<li><a href="../jumpAction/products.do">产品</a></li>
							<c:if test="${not empty uid}">
						<li><a href="../jumpAction/gotocart.do">购物车</a></li>
					</c:if>
					
						<li><a href="../jumpAction/contact.do">关于我们</a></li>
						<li><a href="../jumpAction/faqs.do">常见问题</a></li>
				<c:if test="${not empty uid}">
						<li><a href="../jumpAction/userinfo.do">个人信息</a></li>
				</c:if>
				<c:if test="${not empty uid}">
						<li><a href="../jumpAction/quit.do">退出登录</a></li>
				</c:if>
					</ul>
					<div id="templatemo_search">
						<form action="../jumpAction/search.do" method="post">
							<input type="text"  required="required" name="keyword" id="keyword"
								title="keyword" onfocus="clearText(this)"
								onblur="clearText(this)"  class="txt_field"  /> <input
								type="submit" name="" value="" alt="Search"
								id="searchbutton" title="Search" class="sub_btn" />
						</form>
					</div>
					<br style="clear: left" />
				</div>
				<a href="#" title="visit " class="site_repeat" target="_blank"><img
					src="<%=basePath%>images/top_repeat.png" alt="visit " /></a>
				<!-- end of templatemo_menu -->

				<div class="slider-wrapper theme-orman">
					<div class="ribbon"></div>
					<div id="slider" class="nivoSlider">
						<img src="<%=basePath%>images/portfolio/01.jpg"
							alt="slider image 1" /> <img
							src="<%=basePath%>images/portfolio/02.jpg" alt="slider image 2" />
						<img src="<%=basePath%>images/portfolio/03.jpg"
							alt="slider image 3" /> <img
							src="<%=basePath%>images/portfolio/04.jpg" alt="slider image 4" />
						<img src="<%=basePath%>images/portfolio/05.jpg"
							alt="slider image 5" />
					</div>

				</div>
				<script type="text/javascript"
					src="<%=basePath%>js/jquery-1.6.1.min.js"></script>
				<script type="text/javascript"
					src="<%=basePath%>js/jquery.nivo.slider.pack.js"></script>
				<script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
				controlNav:false
			});
        });
        </script>
			</div>
			<!-- END of header -->
		</div>
		<!-- END of header wrapper -->
		<div id="templatemo_main_wrapper">
			<div id="templatemo_main">
				<div id="sidebar" class="left">
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>种类</h3>
						<div class="content">
							<ul class="sidebar_list">
								<c:forEach items="${flowerkindlist}" var="flowerkind">
									<li><a href="#"><c:out value="${flowerkind.getName()}" /></a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>本周特价</h3>
						<div class="content special">
							<img src="<%=basePath%>${bargainflower.getPicPath()}"
								alt="Flowers" /> <a href="#">${bargainflower.getName()}</a>
							<p>
								Price: <span class="price normal_price">${bargainflower.getPrice()}</span>&nbsp;&nbsp;
								<span class="price special_price">${bargainprice}</span>
							</p>
						</div>
					</div>
				</div>
				<div id="content" class="right">
					<h2>欢迎来到花店</h2>
					<p>这花可太漂亮了</p>

					<c:forEach items="${flowerlist}" var="flower">
					
						<div class="product_box">
							<a
								href="../jumpAction/productdetail.do?fid=${flower.getFlowerId()}"><img
								src="<%=basePath%><c:out value="${flower.getPicPath()}" />"
								alt="floral set 1" /></a>
							<h3>
								<c:out value="${flower.getName()}" />
							</h3>
							<p class="product_price" >
								<c:out value="${flower.getPrice()}" />
							</p>
							<p class="add_to_cart">
								<a
									href="../jumpAction/productdetail.do?fid=${flower.getFlowerId()}">Detail</a>
						<c:choose>
								<c:when test="${not empty uid && flower.getAvailabilityNum() > 0}">
									<a href="../shoppingAction/shoppingcart.do?fid=${flower.getFlowerId()}
								&fprice=${flower.getPrice()}&fquantity=1">Add to Cart</a>
								</c:when>
								<c:when test="${not empty uid && flower.getAvailabilityNum() <= 0}">
									<a href="#">库存不足</a>
								</c:when>
								<c:otherwise>
									<a href="#">无法购买</a>
								</c:otherwise>
						</c:choose>
							</p>
						</div>
					</c:forEach>


	<div class="blank_box">
	  
		<a class="button left" href="../jumpAction/ProductPageDeal.do?pageNow=1">首页</a>
		<c:choose>
			
			<c:when test="${page.pageNow - 1 > 0}">
				<a class="button left" href="../jumpAction/ProductPageDeal.do?pageNow=${page.pageNow - 1}">上一页</a>
			</c:when>
			<c:when test="${page.pageNow - 1 <= 0}">
				<a class="button left" href="../jumpAction/ProductPageDeal.do?pageNow=1">上一页</a>
			</c:when>
		</c:choose>
		
		
		<c:choose>
			<c:when test="${page.totalPageCount==0}">
				<a class="button right" href="../jumpAction/ProductPageDeal.do?pageNow=${page.pageNow}">尾页</a>
			</c:when>
			<c:otherwise>
				<a class="button right" href="../jumpAction/ProductPageDeal.do?pageNow=${page.totalPageCount}">尾页</a>
			</c:otherwise>
		</c:choose>
			<c:choose>
			<c:when test="${page.totalPageCount==0}">
				<a class="button right" href="../jumpAction/ProductPageDeal.do?pageNow=${page.pageNow}">下一页</a>
			</c:when>
			<c:when test="${page.pageNow + 1 < page.totalPageCount}">
				<a class="button right" href="../jumpAction/ProductPageDeal.do?pageNow=${page.pageNow + 1}">下一页</a>
			</c:when>
			<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
				<a class="button right" href="../jumpAction/ProductPageDeal.do?pageNow=${page.totalPageCount}">下一页</a>
			</c:when>
		</c:choose>
	
		<div style="text-align: center; color: red;font-weight: bold;">
			<font size="2">第${page.pageNow} 页</font>
			<font size="2">共 ${page.totalPageCount} 页</font>
		</div>
	</div>			
			
			
					<div class="cleaner h20"></div>
					<div class="blank_box">
						<a href="#"><img src="<%=basePath%>images/free_shipping.jpg"
							alt="Free Shipping" /></a>
					</div>
				</div>
				<div class="cleaner"></div>

			</div>
			<!-- END of main -->
		</div>
		<!-- END of main wrapper -->


	</div>

</body>
<script type="text/javascript" src="<%=basePath%>js/logging.js"></script>
</html>