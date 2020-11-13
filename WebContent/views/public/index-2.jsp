<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/templates/public/inc/header.jsp" %>
    <body class="index-2">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
		
		<!-- HEADER-TOP START -->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<!-- HEADER-LEFT-MENU START -->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="header-left-menu">
							<div class="welcome-info">
								Welcome <span>BootExperts</span>
							</div>
							<div class="currenty-converter">
								<form method="post" action="#" id="currency-set">
									<div class="current-currency">
										<span class="cur-label">Currency : </span><strong>USD</strong>
									</div>
									<ul class="currency-list currency-toogle">
										<li>
											<a title="Dollar (USD)" href="#">Dollar (USD)</a>
										</li>
										<li>
										<a title="Euro (EUR)" href="#">Euro (EUR)</a>
										</li>
									</ul>
								</form>									
							</div>
							<div class="selected-language">
								<div class="current-lang">
									<span class="current-lang-label">Language : </span><strong>English</strong>
								</div>
								<ul class="languages-choose language-toogle">
									<li>
										<a href="#" title="English">
											<span>English</span>
										</a>
									</li>
									<li>
										<a href="#" title="FranÃ§ais (French)">
											<span>FranÃ§ais</span>
										</a>
									</li>
								</ul>										
							</div>
						</div>
					</div>
					<!-- HEADER-LEFT-MENU END -->
					<!-- HEADER-RIGHT-MENU START -->
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="header-right-menu">
							<nav>
								<ul class="list-inline">
									<li><a href="checkout.html">Check Out</a></li>
									<li><a href="wishlist.html">Wishlist</a></li>
									<li><a href="my-account.html">My Account</a></li>
									<li><a href="cart.html">My Cart</a></li>
									<li><a href="registration.html">Sign in</a></li>
								</ul>									
							</nav>
						</div>
					</div>
					<!-- HEADER-RIGHT-MENU END -->
				</div>
			</div>
		</div>
		<!-- HEADER-TOP END -->
		<!-- HEADER-MIDDLE START -->
		<section class="header-middle">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<!-- LOGO START -->
						<div class="logo">
							<a href="index.html"><img src="<%=request.getContextPath() %>/templates/public/img/logo2.png" alt="bstore logo" /></a>
						</div>
						<!-- LOGO END -->
						<!-- HEADER-RIGHT-CALLUS START -->
						<div class="header-right-callus">
							<h3>call us free</h3>
							<span>0123-456-789</span>
						</div>
						<!-- HEADER-RIGHT-CALLUS END -->
						<!-- CATEGORYS-PRODUCT-SEARCH START -->
						<div class="categorys-product-search">
							<form action="#" method="get" class="search-form-cat">
								<div class="search-product form-group">
									<select name="catsearch" class="cat-search">
										<option value="">Categories</option>
										<option value="2">--Women</option>
										<option value="3">---T-Shirts</option>
										<option value="4">--Men</option>
										<option value="5">----Shoose</option>
										<option value="6">--Dress</option>
										<option value="7">----Tops</option>
										<option value="8">---Casual</option>
										<option value="9">--Evening</option>
										<option value="10">--Summer</option>
										<option value="11">---sports</option>
										<option value="12">--day</option>
										<option value="13">--evening</option>
										<option value="14">-----Blouse</option>
										<option value="15">--handba</option>
										<option value="16">--phone</option>
										<option value="17">-house</option>
										<option value="18">--Beauty</option>
										<option value="19">--health</option>
										<option value="20">---clothing</option>
										<option value="21">---kids</option>
										<option value="22">--Dresse</option>
										<option value="22">---Casual</option>
										<option value="23">--day</option>
										<option value="24">--evening</option>
										<option value="24">---Blouse</option>
										<option value="25">-handb</option>
										<option value="66">--phone</option>
										<option value="27">---house</option>									
									</select>
									<input type="text" class="form-control search-form" name="s" placeholder="Enter your search key ... " />
									<button class="search-button" value="Search" name="s" type="submit">
										<i class="fa fa-search"></i>
									</button>									 
								</div>
							</form>
						</div>
						<!-- CATEGORYS-PRODUCT-SEARCH END -->
					</div>
				</div>
			</div>
		</section>
		<!-- HEADER-MIDDLE END -->
		<!-- MAIN-MENU-AREA START -->
		<header class="main-menu-area">
			<div class="container">
				<div class="row">
					<!-- SHOPPING-CART START -->
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 pull-right shopingcartarea">
						<div class="shopping-cart-out pull-right">
							<div class="shopping-cart">
								<a class="shop-link" href="cart.html" title="View my shopping cart">
									<i class="fa fa-shopping-cart cart-icon"></i>
									<b>My Cart</b>
									<span class="ajax-cart-quantity">2</span>
								</a>
								<div class="shipping-cart-overly">
									<div class="shipping-item">
										<span class="cross-icon"><i class="fa fa-times-circle"></i></span>
										<div class="shipping-item-image">
											<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/shopping-image.jpg" alt="shopping image" /></a>
										</div>
										<div class="shipping-item-text">
											<span>2 <span class="pro-quan-x">x</span> <a href="#" class="pro-cat">Watch</a></span>
											<span class="pro-quality"><a href="#">S,Black</a></span>
											<p>$22.95</p>
										</div>
									</div>
									<div class="shipping-item">
										<span class="cross-icon"><i class="fa fa-times-circle"></i></span>
										<div class="shipping-item-image">
											<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/shopping-image2.jpg" alt="shopping image" /></a>
										</div>
										<div class="shipping-item-text">
											<span>2 <span class="pro-quan-x">x</span> <a href="#" class="pro-cat">Women Bag</a></span>
											<span class="pro-quality"><a href="#">S,Gary</a></span>
											<p>$19.95</p>
										</div>
									</div>
									<div class="shipping-total-bill">
										<div class="cart-prices">
											<span class="shipping-cost">$2.00</span>
											<span>Shipping</span>
										</div>
										<div class="total-shipping-prices">
											<span class="shipping-total">$24.95</span>
											<span>Total</span>
										</div>										
									</div>
									<div class="shipping-checkout-btn">
										<a href="checkout.html">Check out <i class="fa fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>	
					<!-- SHOPPING-CART END -->
					<!-- MAINMENU START -->
					<%@ include file="/templates/public/inc/site-bar.jsp" %>
					<!-- MAINMENU END -->
				</div>
				<div class="row">
					<!-- MOBILE MENU START -->
					<div class="col-sm-12 mobile-menu-area">
						<div class="mobile-menu hidden-md hidden-lg" id="mob-menu">
							<span class="mobile-menu-title">MENU</span>
							<nav>
								<ul>
									<li><a href="index.html">Home</a>
										<ul>
											<li><a href="index.html">Home variation 1</a></li>
											<li><a href="index-2.html">Home variation 2</a></li>
										</ul>														
									</li>								
									<li><a href="shop-gird.html">Women</a>
										<ul>
											<li><a href="shop-gird.html">Tops</a>
												<ul>
													<li><a href="shop-gird.html">T-Shirts</a></li>
													<li><a href="shop-gird.html">Blouses</a></li>
												</ul>													
											</li>
											<li><a href="shop-gird.html">Dresses</a>
												<ul>
													<li><a href="shop-gird.html">Casual Dresses</a></li>
													<li><a href="shop-gird.html">Summer Dresses</a></li>
													<li><a href="shop-gird.html">Evening Dresses</a></li>	
												</ul>	
											</li>

										</ul>
									</li>
									<li><a href="shop-gird.html">men</a>
										<ul>											
											<li><a href="shop-gird.html">Tops</a>
												<ul>
													<li><a href="shop-gird.html">Sports</a></li>
													<li><a href="shop-gird.html">Day</a></li>
													<li><a href="shop-gird.html">Evening</a></li>
												</ul>														
											</li>
											<li><a href="shop-gird.html">Blouses</a>
												<ul>
													<li><a href="shop-gird.html">Handbag</a></li>
													<li><a href="shop-gird.html">Headphone</a></li>
													<li><a href="shop-gird.html">Houseware</a></li>
												</ul>														
											</li>
											<li><a href="shop-gird.html">Accessories</a>
												<ul>
													<li><a href="shop-gird.html">Houseware</a></li>
													<li><a href="shop-gird.html">Home</a></li>
													<li><a href="shop-gird.html">Health & Beauty</a></li>
												</ul>														
											</li>
										</ul>										
									</li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">tops</a></li>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="#">Delivery</a></li>
									<li><a href="about-us.html">About us</a></li>
								</ul>
							</nav>
						</div>						
					</div>
					<!-- MOBILE MENU END -->
				</div>				
			</div>
		</header>
		<!-- MAIN-MENU-AREA END -->
		<!-- HEADER-BOTTOM-AREA START -->
		<section class="header-bottom-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- LEFT-CATEGORY-MENU START -->
						<div class="left-category-menu">
							<div class="left-product-cat">
								<div class="category-heading">
									<h2>category</h2>
								</div>
								<!-- CATEGORY-MENU-LIST START -->
								<div class="category-menu-list">
									<ul>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/1.png" alt="" /></span>Women<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<div class="cat-left-drop-menu">
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Tops</a>
													<ul>
														<li><a href="shop-gird.html">Blouse</a></li>
														<li><a href="shop-gird.html">T-shirts</a></li>
													</ul>
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Dresses</a>
													<ul>
														<li><a href="shop-gird.html">Summer Dresses</a></li>
														<li><a href="shop-gird.html">Casual Dresses</a></li>
														<li><a href="shop-gird.html">Enening Dresses</a></li>
													</ul>														
												</div>
											</div>
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/2.png" alt="" /></span>men<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<div class="cat-left-drop-menu">
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Tops</a>
													<ul>
														<li><a href="shop-gird.html">Evening</a></li>
														<li><a href="shop-gird.html">Day</a></li>
														<li><a href="shop-gird.html">Sports</a></li>
													</ul>
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Blouse</a>
													<ul>
														<li><a href="shop-gird.html">Houseware</a></li>
														<li><a href="shop-gird.html">Headphone</a></li>
														<li><a href="shop-gird.html">Handbags</a></li>
													</ul>														
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Accsosorice</a>
													<ul>
														<li><a href="shop-gird.html">Healht % Beuty</a></li>
														<li><a href="shop-gird.html">Home</a></li>
														<li><a href="shop-gird.html">Houseware</a></li>
													</ul>														
												</div>
											</div>
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/3.png" alt="" /></span>Accessories<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<div class="cat-left-drop-menu">
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Headphone</a>
													<ul>
														<li><a href="shop-gird.html">Evening</a></li>
														<li><a href="shop-gird.html">Day</a></li>
														<li><a href="shop-gird.html">Sports</a></li>
													</ul>
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="#">Blouse</a>
													<ul>
														<li><a href="shop-gird.html">Houseware</a></li>
														<li><a href="shop-gird.html">Headphone</a></li>
														<li><a href="shop-gird.html">Handbags</a></li>
													</ul>														
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Sports</a>
													<ul>
														<li><a href="shop-gird.html">Healht % Beuty</a></li>
														<li><a href="shop-gird.html">Home</a></li>
														<li><a href="shop-gird.html">Houseware</a></li>
													</ul>													
												</div>
												<div class="cat-left-drop-menu-left">
													<a class="menu-item-heading" href="shop-gird.html">Dresses</a>
													<ul>
														<li><a href="shop-gird.html">Summer Dresses</a></li>
														<li><a href="shop-gird.html">Casual Dresses</a></li>
														<li><a href="shop-gird.html">Enening Dresses</a></li>
													</ul>													
												</div>
											</div>
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/4.png" alt="" /></span>Blouse<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<div class="cat-left-drop-menu-single">
												<ul>
													<li><a href="shop-gird.html">Healht % Beuty</a></li>
													<li><a href="shop-gird.html">Home</a></li>
													<li><a href="shop-gird.html">Houseware</a></li>
												</ul>
											</div>
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/5.png" alt="" /></span>Tops<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<div class="cat-left-drop-menu-single">
												<ul>
													<li><a href="shop-gird.html">Blouse</a></li>
													<li><a href="shop-gird.html">T-shirts</a></li>
												</ul>
											</div>
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/6.png" alt="" /></span>dresses<i class="fa fa-angle-right"></i></a>
											<!-- CAT-LEFT MEGA MENU START -->
											<div class="cat-left-drop-menu-single">
												<ul>
													<li><a href="shop-gird.html">Summer Dresses</a></li>
													<li><a href="shop-gird.html">Casual Dresses</a></li>
													<li><a href="shop-gird.html">Enening Dresses</a></li>
												</ul>
											</div>
											<!-- CAT-LEFT MEGA MENU END -->
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/4.png" alt="" /></span>Clothing</a>
										</li>
										<li><a href="shop-gird.html"><span class="cat-thumb hidden-md hidden-sm hidden-xs"><img src="<%=request.getContextPath() %>/templates/public/img/layout2/7.png" alt="" /></span>kids</a>
										</li>
									</ul>
								</div>
								<!-- CATEGORY-MENU-LIST END -->
							</div>
						</div>	
						<!-- LEFT-CATEGORY-MENU END -->			
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!-- MAIN-SLIDER-AREA START -->
						<div class="main-slider-area">
							<div class="slider-area">
								<div id="wrapper">
									<div class="slider-wrapper">
										<div id="mainSlider" class="nivoSlider">
											<img src="<%=request.getContextPath() %>/templates/public/img/slider/homepage2/3.jpg" alt="main slider" title="#htmlcaption"/>
											<img src="<%=request.getContextPath() %>/templates/public/img/slider/homepage2/4.jpg" alt="main slider" title="#htmlcaption2"/>
										</div>
										<div id="htmlcaption" class="nivo-html-caption slider-caption">
											<div class="slider-progress"></div>
											<div class="slider-cap-text slider-text1">
												<div class="d-table-cell">
													<h2 class="animated bounceInDown">BEST THEMES</h2>
													<p class="animated bounceInUp">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod ut laoreet dolore magna aliquam erat volutpat.</p>	
													<a class="wow zoomInDown" data-wow-duration="1s" data-wow-delay="1s" href="#">Read More <i class="fa fa-caret-right"></i></a>													
												</div>
											</div>	
										</div>
										<div id="htmlcaption2" class="nivo-html-caption">
											<div class="slider-progress"></div>
											<div class="slider-cap-text slider-text2">
												<div class="d-table-cell">
													<h2 class="animated bounceInDown">BEST THEMES</h2>
													<p class="animated bounceInUp">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod ut laoreet dolore magna aliquam erat volutpat.</p>	
													<a class="wow zoomInDown" data-wow-duration="1s" data-wow-delay="1s" href="#">Read More <i class="fa fa-caret-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>											
						</div>	
						<!-- MAIN-SLIDER-AREA END -->
					</div>						
				</div>
			</div>
		</section>
		<!-- HEADER-BOTTOM-AREA END -->
		<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section">
			<div class="container">
				<div class="row">
					<!-- LEFT-SIDEBAR START -->
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- SIDEBAR-LEFT-ADD START -->
						<div class="single-left-sidebar sidebar-left-add">
							<div class="sidebar-left zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/cms11.jpg" alt="sidebar left" /></a>
							</div>	
						</div>
						<!-- SIDEBAR-LEFT-ADD END -->
						<!-- LEFT SIDEBAR-BEST-SELLER START -->
						<div class="single-left-sidebar sidebar-best-seller">
							<div class="left-title-area">
								<h2 class="left-title">bestseller</h2>
							</div>
							<div class="row">
								<!-- SIDEBAR-BEST-SELLER-CAROUSEL START -->			
								<div class="sidebar-best-seller-carousel">
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM START -->
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-product.html"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/1.jpg" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-product.html">Blouse</a>
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
												<div class="price-box">
													<span class="price">$22.95</span>
													<span class="old-price">$27.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-product.html"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/2.jpg" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-product.html">Faded Short Sllev...</a>
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
												</div>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-product.html"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/3.jpg" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-product.html">Printed Dress</a>
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
												</div>
												<div class="price-box">
													<span class="price">$23.40</span>
													<span class="old-price">$26.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-product.html"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/4.jpg" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-product.html">Printed Summer...</a>
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item  hidden-sm">
											<div class="sidebar-product-image">
												<a href="single-product.html"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/5.jpg" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-product.html">Printed Chiffon D...</a>
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
												</div>
												<div class="price-box">
													<span class="price">$16.40</span>
													<span class="old-price">$20.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM END -->
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM START -->
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="sidebar-product-image">
												<a href="single-product.html"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/6.jpg" alt="product-image" /></a>
											</div>
											<div class="product-info sede-pro-info">
												<a href="single-product.html">Printed Summer...</a>
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
												</div>
												<div class="price-box">
													<span class="price">$28.98</span>
													<span class="old-price">$30.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->									
									</div>
									<!-- SIDEBAR-BEST-SELLER SINGLE ITEM END -->
								</div>	
								<!-- SIDEBAR-BEST-SELLER-CAROUSEL END -->	
							</div>
						</div>
						<!-- LEFT SIDEBAR-BEST-SELLER END -->
					</div>	
					<!-- LEFT-SIDEBAR END -->
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="new-product-area">
									<div class="left-title-area">
										<h2 class="left-title">New Products</h2>
									</div>						
									<div class="row">
										<div class="col-xs-12">
											<div class="row">
												<!-- HOME2-NEW-PRO-CAROUSEL START -->
												<div class="home2-new-pro-carousel">
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/8.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>3 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Printed Dress</a>
																	<div class="price-box">
																		<span class="price">$26.00</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/6.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																		</div>
																		<div class="review-box">
																			<span>4 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Printed Chiffon Dress</a>
																	<div class="price-box">
																		<span class="price">$16.40</span>
																		<span class="old-price">$20.50</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/4.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Faded Short Sleeves T-shirt</a>
																	<div class="price-box">
																		<span class="price">$16.51</span>
																		
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/2.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Blouse</a>
																	<div class="price-box">
																		<span class="price">$27.00</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/10.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Printed Dress</a>
																	<div class="price-box">
																		<span class="price">$26.00</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/11.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Printed Dress</a>
																	<div class="price-box">
																		<span class="price">$26.00</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/3.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Faded Short Sleeves T-shirt</a>
																	<div class="price-box">
																		<span class="price">$16.51</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/1.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">sale!</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Blouse</a>
																	<div class="price-box">
																		<span class="price">$22.95</span>
																		<span class="old-price">$27.00</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/9.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">sale!</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Printed Dress</a>
																	<div class="price-box">
																		<span class="price">$23.40</span>
																		<span class="old-price">$26.00</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
													<!-- NEW-PRODUCT SINGLE ITEM START -->
													<div class="item">
														<div class="new-product">
															<div class="single-product-item">
																<div class="product-image">
																	<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/5.jpg" alt="product-image" /></a>
																	<a href="#" class="new-mark-box">new</a>
																	<div class="overlay-content">
																		<ul>
																			<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																			<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="product-info">
																	<div class="customar-comments-box">
																		<div class="rating-box">
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star"></i>
																			<i class="fa fa-star-half-empty"></i>
																		</div>
																		<div class="review-box">
																			<span>1 Review(s)</span>
																		</div>
																	</div>
																	<a href="single-product.html">Printed Dress</a>
																	<div class="price-box">
																		<span class="price">$50.99</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- NEW-PRODUCT SINGLE ITEM END -->
												</div>
												<!-- HOME2-NEW-PRO-CAROUSEL END -->
											</div>
										</div>
									</div>
								</div>										
							</div>
							<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
								<!-- TOW-COLUMN-ADD START -->
								<div class="tow-column-add zoom-img">
									<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/shope-add12.jpg" alt="shope-add" /></a>
								</div>
								<!-- TOW-COLUMN-ADD END -->
							</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
								<!-- TOW-COLUMN-ADD START -->
								<div class="one-column-add zoom-img">
									<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/shope-add22.jpg" alt="shope-add" /></a>
								</div>	
								<!-- TOW-COLUMN-ADD END -->
							</div>	
							<div class="col-xs-12">
								<!-- SALE-PODUCT-AREA START -->
								<div class="sale-poduct-area new-product-area">
									<div class="left-title-area">
										<h2 class="left-title">Sale Products</h2>
									</div>
									<div class="row">
										<!-- HOME2-SALE-CAROUSEL START -->
										<div class="home2-sale-carousel">
											<!-- NEW-PRODUCT SINGLE ITEM START -->
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/12.jpg" alt="product-image" /></a>
															<a href="#" class="new-mark-box">new</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																</ul>
															</div>
														</div>
														<div class="product-info">
															<div class="customar-comments-box">
																<div class="rating-box">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star-half-empty"></i>
																	<i class="fa fa-star-half-empty"></i>
																</div>
																<div class="review-box">
																	<span>1 Review(s)</span>
																</div>
															</div>
															<a href="single-product.html">Printed Summer Dress</a>
															<div class="price-box">
																<span class="price">$28.98</span>
																<span class="old-price">$30.51</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- NEW-PRODUCT SINGLE ITEM END -->
											<!-- NEW-PRODUCT SINGLE ITEM START -->
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/9.jpg" alt="product-image" /></a>
															<a href="#" class="new-mark-box">sale!</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																</ul>
															</div>
														</div>
														<div class="product-info">
															<div class="customar-comments-box">
																<div class="rating-box">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star-half-empty"></i>
																	<i class="fa fa-star-half-empty"></i>
																</div>
																<div class="review-box">
																	<span>1 Review(s)</span>
																</div>
															</div>
															<a href="single-product.html">Printed Dress</a>
															<div class="price-box">
																<span class="price">$23.40</span>
																<span class="old-price">$26.00</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- NEW-PRODUCT SINGLE ITEM END -->
											<!-- NEW-PRODUCT SINGLE ITEM START -->
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/1.jpg" alt="product-image" /></a>
															<a href="#" class="new-mark-box">sale!</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																</ul>
															</div>
														</div>
														<div class="product-info">
															<div class="customar-comments-box">
																<div class="rating-box">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																</div>
																<div class="review-box">
																	<span>1 Review(s)</span>
																</div>
															</div>
															<a href="single-product.html">Blouse</a>
															<div class="price-box">
																<span class="price">$22.95</span>
																<span class="old-price">$27.00</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- NEW-PRODUCT SINGLE ITEM END -->
											<!-- NEW-PRODUCT SINGLE ITEM START -->
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/6.jpg" alt="product-image" /></a>
															<a href="#" class="new-mark-box">new</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																</ul>
															</div>
														</div>
														<div class="product-info">
															<div class="customar-comments-box">
																<div class="rating-box">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																</div>
																<div class="review-box">
																	<span>4 Review(s)</span>
																</div>
															</div>
															<a href="single-product.html">Printed Chiffon Dress</a>
															<div class="price-box">
																<span class="price">$16.40</span>
																<span class="old-price">$20.50</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- NEW-PRODUCT SINGLE ITEM END -->
											<!-- NEW-PRODUCT SINGLE ITEM START -->
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/7.jpg" alt="product-image" /></a>
															<a href="#" class="new-mark-box">new</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
																	<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
																</ul>
															</div>
														</div>
														<div class="product-info">
															<div class="customar-comments-box">
																<div class="rating-box">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star-half-empty"></i>
																	<i class="fa fa-star-half-empty"></i>
																</div>
																<div class="review-box">
																	<span>1 Review(s)</span>
																</div>
															</div>
															<a href="single-product.html">Printed Chiffon Dress</a>
															<div class="price-box">
																<span class="price">$16.40</span>
																<span class="old-price">$20.50</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- NEW-PRODUCT SINGLE ITEM END -->
										</div>
										<!-- HOME2-SALE-CAROUSEL END -->
									</div>
								</div>
								<!-- SALE-PODUCT-AREA end -->
							</div>
						</div>	
					</div>	
				</div>
			</div>
		</section>	
		<!-- MAIN-CONTENT-SECTION END -->
		<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section-full-column">
			<div class="container">
				<div class="row">
					<!-- IMAGE-ADD-AREA START -->
					<div class="image-add-area">
						<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
							<!-- SINGLE ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/cms21.jpg" alt="shope-add" /></a>
							</div>
							<!-- SINGLE ADD END -->
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
							<!-- SINGLE ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/cms22.jpg" alt="shope-add" /></a>
							</div>
							<!-- SINGLE ADD END -->
						</div>						
					</div>
					<!-- IMAGE-ADD-AREA END -->
				</div>
				<div class="row">
					<div class="col-xs-12">
						<!-- FEATURED-PRODUCTS-AREA START -->
						<div class="featured-products-area">
							<div class="left-title-area">
								<h2 class="left-title">Featured Products</h2>
							</div>	
							<div class="row">
								<!-- FEARTURED-CAROUSEL START -->	
								<div class="feartured-carousel">
									<!-- SINGLE ITEM START -->
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/3.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Faded Short Sleeves T-shirt</a>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/1.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">sale!</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Blouse</a>
												<div class="price-box">
													<span class="price">$22.95</span>
													<span class="old-price">$27.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
									</div>
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/9.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">sale!</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$23.40</span>
													<span class="old-price">$26.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/5.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$50.99</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->									
									</div>
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->								
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/12.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$28.98</span>
													<span class="old-price">$30.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/13.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>							
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->							
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/7.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Chiffon Dress</a>
												<div class="price-box">
													<span class="price">$16.40</span>
													<span class="old-price">$20.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/11.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$26.00</span>
												</div>
											</div>
										</div>	
										<!-- SINGLE-PRODUCT-ITEM END -->									
									</div>							
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->					
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/10.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$26.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/2.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Blouse</a>
												<div class="price-box">
													<span class="price">$27.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>							
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->					
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/4.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Faded Short Sleeves T-shirt</a>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/6.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Chiffon Dress</a>
												<div class="price-box">
													<span class="price">$16.40</span>
													<span class="old-price">$20.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->								
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/8.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$26.00</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/13.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->										
									</div>
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->								
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/12.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$28.98</span>
													<span class="old-price">$30.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/3.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>							
									<!-- SINGLE ITEM END -->
									<!-- SINGLE ITEM START -->								
									<div class="item">
										<!-- SINGLE-PRODUCT-ITEM START -->								
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/7.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-half-empty"></i>
														<i class="fa fa-star-half-empty"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$28.98</span>
													<span class="old-price">$30.51</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->
										<!-- SINGLE-PRODUCT-ITEM START -->									
										<div class="single-product-item">
											<div class="product-image">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/8.jpg" alt="product-image" /></a>
												<a href="#" class="new-mark-box">new</a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-shopping-cart"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#" title="Quick view"><i class="fa fa-heart-o"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product-info">
												<div class="customar-comments-box">
													<div class="rating-box">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review(s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>
										<!-- SINGLE-PRODUCT-ITEM END -->								
									</div>							
									<!-- SINGLE ITEM END -->									
								</div>
								<!-- FEARTURED-CAROUSEL END -->
							</div>
						</div>
						<!-- FEATURED-PRODUCTS-AREA END -->
					</div>						
				</div>
				<div class="row">
					<!-- IMAGE-ADD-AREA START -->
					<div class="image-add-area">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<!-- SINGLE ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img alt="shope-add" src="<%=request.getContextPath() %>/templates/public/img/product/one-helf1.jpg"></a>
							</div>
							<!-- SINGLE ADD END -->
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<!-- SINGLE ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img alt="shope-add" src="<%=request.getContextPath() %>/templates/public/img/product/one-helf2.jpg"></a>
							</div>
							<!-- SINGLE ADD END -->
						</div>						
					</div>
					<!-- IMAGE-ADD-AREA END -->					
				</div>
			</div>
		</section>
		<!-- MAIN-CONTENT-SECTION END -->
		<!-- LATEST-NEWS-AREA START -->
		<section class="latest-news-area">
			<div class="container">
				<div class="row">
					<div class="latest-news-row">
						<div class="center-title-area">
							<h2 class="center-title"><a href="#">latest news</a></h2>
						</div>	
						<div class="col-xs-12">
							<div class="row">
								<!-- LATEST-NEWS-CAROUSEL START -->
								<div class="latest-news-carousel">
									<!-- LATEST-NEWS-SINGLE-POST START -->
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/1.jpg" alt="latest-post" /></a>
												<h2><a href="#">What is Lorem Ipsum?</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->
									<!-- LATEST-NEWS-SINGLE-POST START -->
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/2.jpg" alt="latest-post" /></a>
												<h2><a href="#">Share the Love for printing</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->
									<!-- LATEST-NEWS-SINGLE-POST START -->								
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/3.jpg" alt="latest-post" /></a>
												<h2><a href="#">Answers your Questions P..</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->
									<!-- LATEST-NEWS-SINGLE-POST START -->								
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/4.jpg" alt="latest-post" /></a>
												<h2><a href="#">What is Bootstrap? â History</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->
									<!-- LATEST-NEWS-SINGLE-POST START -->								
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/5.jpg" alt="latest-post" /></a>
												<h2><a href="#">Share the Love for..</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->
									<!-- LATEST-NEWS-SINGLE-POST START -->								
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/6.jpg" alt="latest-post" /></a>
												<h2><a href="#">What is Bootstrap? â The History a..</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->	
									<!-- LATEST-NEWS-SINGLE-POST START -->								
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/3.jpg" alt="latest-post" /></a>
												<h2><a href="#">Answers your Questions P..</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->
									<!-- LATEST-NEWS-SINGLE-POST START -->								
									<div class="item">
										<div class="latest-news-post">
											<div class="single-latest-post">
												<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/latest-news/4.jpg" alt="latest-post" /></a>
												<h2><a href="#">What is Bootstrap? â History</a></h2>
												<p>Lorem Ipsum is simply dummy text of the printing and Type setting industry. Lorem Ipsum has been...</p>
												<div class="latest-post-info">
													<i class="fa fa-calendar"></i><span>2015-06-20 04:51:43</span>
												</div>
												<div class="read-more">
													<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- LATEST-NEWS-SINGLE-POST END -->						
								</div>	
								<!-- LATEST-NEWS-CAROUSEL START -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- LATEST-NEWS-AREA END -->
		<!-- BRAND-CLIENT-AREA START -->
		<section class="brand-client-area">
			<div class="container">
				<div class="row">
					<!-- BRAND-CLIENT-ROW START -->
					<div class="brand-client-row">
						<div class="center-title-area">
							<h2 class="center-title">BRAND & CLIENTS</h2>
						</div>
						<div class="col-xs-12">
							<div class="row">
								<!-- CLIENT-CAROUSEL START -->
								<div class="client-carousel">
									<!-- CLIENT-SINGLE START -->
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/1.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/2.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/3.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/4.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/5.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/1.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->									
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/3.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/2.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/3.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/4.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/5.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/1.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->									
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/3.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/4.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->
									<!-- CLIENT-SINGLE START -->								
									<div class="item">
										<div class="single-client">
											<a href="#">
												<img src="<%=request.getContextPath() %>/templates/public/img/brand/5.png" alt="brand-client" />
											</a>
										</div>									
									</div>
									<!-- CLIENT-SINGLE END -->									
								</div>
								<!-- CLIENT-CAROUSEL END -->
							</div>
						</div>
					</div>
					<!-- BRAND-CLIENT-ROW END -->
				</div>
			</div>
		</section>
		<!-- BRAND-CLIENT-AREA END -->
		<!-- COMPANY-FACALITY START -->
		<section class="company-facality">
			<div class="container">
				<div class="row">
					<div class="company-facality-row">
						<!-- SINGLE-FACALITY START -->
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="single-facality">
								<div class="facality-icon">
									<i class="fa fa-rocket"></i>
								</div>
								<div class="facality-text">
									<h3 class="facality-heading-text">FREE SHIPPING</h3>
									<span>on order over $100</span>
								</div>
							</div>
						</div>
						<!-- SINGLE-FACALITY END -->
						<!-- SINGLE-FACALITY START -->
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="single-facality">
								<div class="facality-icon">
									<i class="fa fa-umbrella"></i>
								</div>
								<div class="facality-text">
									<h3 class="facality-heading-text">24/7 SUPPORT</h3>
									<span>online consultations</span>
								</div>
							</div>
						</div>
						<!-- SINGLE-FACALITY END -->
						<!-- SINGLE-FACALITY START -->						
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="single-facality">
								<div class="facality-icon">
									<i class="fa fa-calendar"></i>
								</div>
								<div class="facality-text">
									<h3 class="facality-heading-text">DAILY UPDATES</h3>
									<span>Check out store for latest</span>
								</div>
							</div>
						</div>
						<!-- SINGLE-FACALITY END -->
						<!-- SINGLE-FACALITY START -->						
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="single-facality">
								<div class="facality-icon">
									<i class="fa fa-refresh"></i>
								</div>
								<div class="facality-text">
									<h3 class="facality-heading-text">30-DAY RETURNS</h3>
									<span>moneyback guarantee</span>
								</div>
							</div>
						</div>		
						<!-- SINGLE-FACALITY END -->					
					</div>
				</div>
			</div>
		</section>
		<!-- COMPANY-FACALITY END -->
		<!-- FOOTER-TOP-AREA START -->
		<%@ include file="/templates/public/inc/footer.jsp" %>
    </body>

<!-- Nulled by http://www.baobinh.net by tieulonglanh -->
</html>