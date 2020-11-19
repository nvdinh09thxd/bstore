<%@page import="models.Cart"%>
<%@page import="models.User"%>
<%@page import="models.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/templates/public/inc/header.jsp" %>
    <body>
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
										<a href="#" title="French (French)">
											<span>French</span>
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
									<%
									User userLogin = (User) session.getAttribute("userLogin");
									%>
									<li style="<%if(userLogin!=null) out.print("display: none"); %>"><a href="<%=request.getContextPath() %>/login">Sign in</a></li>
									<li style="<%if(userLogin==null) out.print("display: none"); %>"><a href="<%=request.getContextPath() %>/logout">Sign out</a></li>
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
							<a href="index.html"><img src="<%=request.getContextPath() %>/templates/public/img/logo.png" alt="bstore logo" /></a>
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
									<%
									if(request.getAttribute("listCarts")!=null){
										List<Cart> listCarts = (List<Cart>) request.getAttribute("listCarts");
										if(listCarts.size()>0){											
									%>
							<div class="shopping-cart">
								<a class="shop-link" href="<%=request.getContextPath() %>/cart" title="View my shopping cart">
									<i class="fa fa-shopping-cart cart-icon"></i>
									<b>My Cart</b>
									<span class="ajax-cart-quantity">2</span>
								</a>
								<div class="shipping-cart-overly">
									<%
									for(Cart objCart: listCarts){
									%>
									<div class="shipping-item">
										<span class="cross-icon"><i class="fa fa-times-circle"></i></span>
										<div class="shipping-item-image">
											<a href="#"><img src="<%=request.getContextPath() %>/uploads/images/<%=objCart.getPro().getPicture() %>" alt="shopping image" /></a>
										</div>
										<div class="shipping-item-text">
											<span>2 <span class="pro-quan-x">x</span> <a href="#" class="pro-cat"><%=objCart.getPro().getName() %></a></span>
											<span class="pro-quality"><a href="#">S,Black</a></span>
											<p>$22.95</p>
										</div>
									</div>
									<%} %>
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
							<%}} %>
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
		<!-- MAIN-CONTENT-SECTION START -->
		<section class="main-content-section">
			<div class="container">
				<div class="row">
					<!-- MAIN-SLIDER-AREA START -->
					<div class="main-slider-area">
						<!-- SLIDER-AREA START -->
						<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
							<div class="slider-area">
								<div id="wrapper">
									<div class="slider-wrapper">
										<div id="mainSlider" class="nivoSlider">
											<img src="<%=request.getContextPath() %>/templates/public/img/slider/2.jpg" alt="main slider" title="#htmlcaption"/>
											<img src="<%=request.getContextPath() %>/templates/public/img/slider/1.jpg" alt="main slider" title="#htmlcaption2"/>
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
										<div id="htmlcaption2" class="nivo-html-caption slider-caption">
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
						<!-- SLIDER-AREA END -->
						<!-- SLIDER-RIGHT START -->
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="slider-right zoom-img m-top">
								<a href="#"><img class="img-responsive" src="<%=request.getContextPath() %>/templates/public/img/product/cms11.jpg" alt="sidebar left" /></a>
							</div>
						</div>
						<!-- SLIDER-RIGHT END -->
					</div>
					<!-- MAIN-SLIDER-AREA END -->
				</div>
				<!-- TOW-COLUMN-PRODUCT START -->
				<div class="row tow-column-product">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- NEW-PRODUCT-AREA START -->
						<div class="new-product-area">
							<div class="left-title-area">
								<h2 class="left-title">New Products</h2>
							</div>						
							<div class="row">
								<div class="col-xs-12">
									<div class="row">
										<!-- NEW-PRO-CAROUSEL START -->
										<div class="new-pro-carousel">
											<!-- NEW-PRODUCT-SINGLE-ITEM START -->
											<%
												if(request.getAttribute("listNewProducts")!=null){
												List<Products> listNewProducts = (List<Products>) request.getAttribute("listNewProducts");
												if(listNewProducts.size()>0){
													for(Products objNewPro: listNewProducts){
											%>
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="<%=request.getContextPath() %>/detail?id=<%=objNewPro.getId()%>">
																<img src="<%=request.getContextPath() %>/uploads/images/<%=objNewPro.getPicture() %>" alt="product-image" />
															</a>
															<a href="#" class="new-mark-box">New</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="javascript:void(0)" title="Add to cart" onclick="addToCard(<%=objNewPro.getId()%>)"><i class="fa fa-shopping-cart"></i></a></li>
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
																	<span><%=objNewPro.getPreview() %> Review (s)</span>
																</div>
															</div>
															<a href="#"><%=objNewPro.getName() %></a>
															<div class="price-box">
																<span class="price"><%=objNewPro.getPrice() %></span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<%
												}}}
											%>
											<!-- NEW-PRODUCT-SINGLE-ITEM START -->										
										</div>
										<!-- NEW-PRO-CAROUSEL END -->
									</div>
								</div>
							</div>
						</div>
						<!-- NEW-PRODUCT-AREA END -->
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- SALE-PRODUCTS START -->
						<div class="Sale-Products">
							<div class="left-title-area">
								<h2 class="left-title">Sale Products</h2>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="row">
										<!-- SALE-CAROUSEL START -->
										<div class="sale-carousel">
											<!-- SALE-PRODUCTS-SINGLE-ITEM START -->
											<%
												if(request.getAttribute("listSaleProducts")!=null){
												List<Products> listSaleProducts = (List<Products>) request.getAttribute("listSaleProducts");
												if(listSaleProducts.size()>0){
													for(Products objSalePro: listSaleProducts){
											%>
											<div class="item">
												<div class="new-product">
													<div class="single-product-item">
														<div class="product-image">
															<a href="<%=request.getContextPath() %>/detail?id=<%=objSalePro.getId()%>">
																<img src="<%=request.getContextPath() %>/uploads/images/<%=objSalePro.getPicture() %>" alt="product-image" />
															</a>
															<a href="#" class="new-mark-box">Sale</a>
															<div class="overlay-content">
																<ul>
																	<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
																	<li><a href="javascript:void(0)" title="Add to cart" onclick="addToCard(<%=objSalePro.getId()%>)"><i class="fa fa-shopping-cart"></i></a></li>
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
																	<span><%=objSalePro.getPreview() %> Review (s)</span>
																</div>
															</div>
															<a href="single-product.html"><%=objSalePro.getName() %></a>
															<div class="price-box">
																<span class="price"><%=objSalePro.getPrice() %></span>
																<span class="old-price"><%=objSalePro.getOldPrice() %></span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<%
													}}}
											%>
											<!-- SALE-PRODUCTS-SINGLE-ITEM END -->
										</div>
										<!-- SALE-CAROUSEL END -->
									</div>
								</div>
							</div>
						</div>
						<!-- SALE-PRODUCTS END -->
					</div>
				</div>
				<!-- TOW-COLUMN-PRODUCT END -->
				<div class="row">
					<!-- ADD-TWO-BY-ONE-COLUMN START -->
					<div class="add-two-by-one-column">
						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
							<div class="tow-column-add zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/shope-add1.jpg" alt="shope-add" /></a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<div class="one-column-add zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/shope-add2.jpg" alt="shope-add" /></a>
							</div>								
						</div>
					</div>
					<!-- ADD-TWO-BY-ONE-COLUMN END -->
				</div>
				<div class="row">
					<!-- FEATURED-PRODUCTS-AREA START -->
					<div class="featured-products-area">
						<div class="center-title-area">
							<h2 class="center-title">Featured Products</h2>
						</div>	
						<div class="col-xs-12">
							<div class="row">
								<!-- FEARTURED-CAROUSEL START -->
								<div class="feartured-carousel">
									<!-- SINGLE-PRODUCT-ITEM START -->
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Faded Short Sleeves T-shirt</a>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>							
									</div>
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$50.99</span>
												</div>
											</div>
										</div>							
									</div>		
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>							
									</div>	
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<div class="review-box">
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$26.00</span>
												</div>
											</div>
										</div>							
									</div>		
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$26.00</span>
												</div>
											</div>
										</div>							
									</div>		
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Blouse</a>
												<div class="price-box">
													<span class="price">$27.00</span>
												</div>
											</div>
										</div>							
									</div>		
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Faded Short Sleeves T-shirt</a>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>							
									</div>		
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Dress</a>
												<div class="price-box">
													<span class="price">$26.00</span>
												</div>
											</div>
										</div>							
									</div>	
									<!-- SINGLE-PRODUCT-ITEM END -->
									<!-- SINGLE-PRODUCT-ITEM START -->								
								</div>
								<!-- FEARTURED-CAROUSEL END -->
							</div>
						</div>						
					</div>
					<!-- FEATURED-PRODUCTS-AREA END -->
				</div>
				<div class="row">
					<div class="col-xs-12">
						<!-- TAB-BG-PRODUCT-AREA START -->
						<div class="tab-bg-product-area">
							<!-- TAB PANES START -->
							<div class="tab-content bg-tab-content">
								<!-- TABS ONE START-->
								<div role="tabpanel" class="tab-pane active" id="women-tab">
									<div class="bg-tab-content-area tab-carousel-1">
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
													<a href="single-product.html">Short Sleeves T-shirt</a>
													<div class="price-box">
														<span class="price">$16.51</span>
													</div>
												</div>
											</div>							
										</div>
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										</div>
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
													<a href="single-product.html">Faded Short Sleeves T-shirt</a>
													<div class="price-box">
														<span class="price">$16.40</span>
														<span class="old-price">$20.50</span>
													</div>
												</div>
											</div>							
										</div>
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
									</div>	
								</div>
								<!-- TABS ONE END-->
								<!-- TABS TWO START-->
								<div role="tabpanel" class="tab-pane" id="tops-tab">
									<div class="bg-tab-content-area tab-carousel-2">
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->	
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->										
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->	
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
													<a href="single-product.html">Short Sleeves T-shirt</a>
													<div class="price-box">
														<span class="price">$16.51</span>
													</div>
												</div>
											</div>							
										</div>
										<!-- TAB-SINGLE-ITEM END -->										
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->	
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										</div>
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
													<a href="single-product.html">Faded Short Sleeves T-shirt</a>
													<div class="price-box">
														<span class="price">$16.40</span>
														<span class="old-price">$20.50</span>
													</div>
												</div>
											</div>							
										</div>
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->		
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
									</div>	
								</div>
								<!-- TABS TWO END-->
								<!-- TABS THREE START-->
								<div role="tabpanel" class="tab-pane" id="t-shirts">
									<div class="bg-tab-content-area tab-carousel-3">
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
													<a href="single-product.html">Short Sleeves T-shirt</a>
													<div class="price-box">
														<span class="price">$16.51</span>
													</div>
												</div>
											</div>							
										</div>
										<!-- TAB-SINGLE-ITEM END -->										
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
													<a href="single-product.html">Faded Short Sleeves T-shirt</a>
													<div class="price-box">
														<span class="price">$16.40</span>
														<span class="old-price">$20.50</span>
													</div>
												</div>
											</div>							
										</div>
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										</div>
										<!-- TAB-SINGLE-ITEM END -->										
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->										
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->										
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->	
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->	
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->		
										<!-- TAB-SINGLE-ITEM START -->
										<div class="item">
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
										<!-- TAB-SINGLE-ITEM END -->
									</div>					
								</div>
								<!-- TABS THREE END-->
							</div>	
							<!-- TAB PANES END -->
							<!-- TABS MENU START-->
							<div class="tab-carousel-menu">
								<ul class="nav nav-tabs product-bg-nav">
									<li class="active"><a href="#women-tab" data-toggle="tab">Women</a></li>
									<li><a href="#tops-tab" data-toggle="tab">tops</a></li>
									<li><a href="#t-shirts" data-toggle="tab">t-shirts</a></li>
								</ul>
							</div>
							<!-- TABS MENU END-->					
						</div>
						<!-- TAB-BG-PRODUCT-AREA END -->
					</div>
				</div>
				<div class="row">	
					<!-- BESTSELLER-PRODUCTS-AREA START -->
					<div class="bestseller-products-area">
						<div class="center-title-area">
							<h2 class="center-title">bestseller</h2>
						</div>	
						<div class="col-xs-12">
							<div class="row">
								<!-- BESTSELLER-CAROUSEL START -->
								<div class="bestseller-carousel">
									<!-- BESTSELLER-SINGLE-ITEM START -->
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- BESTSELLER-SINGLE-ITEM END -->
									<!-- BESTSELLER-SINGLE-ITEM START -->
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Faded Short Sleeves T-shirt</a>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>							
									</div>
									<!-- BESTSELLER-SINGLE-ITEM END -->
									<!-- BESTSELLER-SINGLE-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- BESTSELLER-SINGLE-ITEM END -->
									<!-- BESTSELLER-SINGLE-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Printed Summer Dress</a>
												<div class="price-box">
													<span class="price">$30.50</span>
												</div>
											</div>
										</div>							
									</div>
									<!-- BESTSELLER-SINGLE-ITEM END -->
									<!-- BESTSELLER-SINGLE-ITEM START -->
									<div class="item">
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
														<span>1 Review (s)</span>
													</div>
												</div>
												<a href="single-product.html">Faded Short Sleeves T-shirt</a>
												<div class="price-box">
													<span class="price">$16.51</span>
												</div>
											</div>
										</div>							
									</div>
									<!-- BESTSELLER-SINGLE-ITEM END -->									
									<!-- BESTSELLER-SINGLE-ITEM START -->								
									<div class="item">
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
														<span>1 Review (s)</span>
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
									<!-- BESTSELLER-SINGLE-ITEM END -->								
								</div>	
								<!-- BESTSELLER-CAROUSEL END -->
							</div>
						</div>								
					</div>
					<!-- BESTSELLER-PRODUCTS-AREA END -->
				</div>
				<div class="row">
					<!-- IMAGE-ADD-AREA START -->
					<div class="image-add-area">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<!-- ONEHALF-ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/one-helf1.jpg" alt="shope-add" /></a>
							</div>
							<!-- ONEHALF-ADD END -->
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<!-- ONEHALF-ADD START -->
							<div class="onehalf-add-shope zoom-img">
								<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/one-helf2.jpg" alt="shope-add" /></a>
							</div>
							<!-- ONEHALF-ADD END -->
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
<script type="text/javascript">
function addToCard(id){
	$.ajax({
		url: '<%=request.getContextPath()%>/index',
		type: 'POST',
		data: {aid: id},
		success: function(data){
			alert(data);
		},
		error: function (){
			alert('Có lỗi xảy ra');
		}
	})
}
</script>
    </body>
</html>