<%@page import="models.Products"%>
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
									<li><a href="<%=request.getContextPath()%>/auth/login">My Account</a></li>
									<li><a href="cart.html">My Cart</a></li>
									<%
										Member userLogin = (Member) session.getAttribute("userLogin");
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
					<%
						if(userLogin!=null){
					%>
					<%@ include file="/templates/public/inc/shopping-cart.jsp" %>
					<%} %>	
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
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- BSTORE-BREADCRUMB START -->
						<div class="bstore-breadcrumb">
							<a href="index.html">HOMe<span><i class="fa fa-caret-right"></i> </span> </a>
							<span> <i class="fa fa-caret-right"> </i> </span>
							<a href="shop-gird.html"> women </a>
							<span> Faded Short Sleeves T-shirt </span>
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>				
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!-- SINGLE-PRODUCT-DESCRIPTION START -->
						<%
							Products itemPro = (Products) request.getAttribute("itemPro");
							if(itemPro!=null){
						%>
						<div class="row">
							<div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
								<div class="single-product-view">
									  <!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active" id="thumbnail_1">
											<div class="single-product-image">
												<img src="<%=request.getContextPath() %>/uploads/images/<%=itemPro.getArPicture().get(0) %>" alt="single-product-image" />
												<a class="new-mark-box" href="#">new</a>
												<a class="fancybox" href="<%=request.getContextPath() %>/uploads/images/<%=itemPro.getArPicture().get(0) %>" data-fancybox-group="gallery"><span class="btn large-btn">View larger <i class="fa fa-search-plus"></i></span></a>
											</div>	
										</div>
										<%
										if(itemPro.getArPicture().size()>1){
											for(int i=1; i<itemPro.getArPicture().size(); i++){
												String picture = itemPro.getArPicture().get(i);
										%>
										<div class="tab-pane" id="thumbnail_2">
											<div class="single-product-image">
												<img src="<%=request.getContextPath() %>/uploads/images/<%=picture %>" alt="single-product-image" />
												<a class="new-mark-box" href="#">new</a>
												<a class="fancybox" href="<%=request.getContextPath() %>/uploads/images/<%=picture %>" data-fancybox-group="gallery"><span class="btn large-btn"><i class="fa fa-search-plus"></i></span></a>
											</div>	
										</div>
										<%}} %>
									</div>										
								</div>
								<div class="select-product">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs select-product-tab bxslider">
										<li class="active">
											<a href="#thumbnail_1" data-toggle="tab"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/1.jpg" alt="pro-thumbnail" /></a>
										</li>
										<li>
											<a href="#thumbnail_2" data-toggle="tab"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/2.jpg" alt="pro-thumbnail" /></a>
										</li>
										<li>
											<a href="#thumbnail_3" data-toggle="tab"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/3.jpg" alt="pro-thumbnail" /></a>
										</li>
										<li>
											<a href="#thumbnail_4" data-toggle="tab"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/4.jpg" alt="pro-thumbnail" /></a>
										</li>
										<li>
											<a href="#thumbnail_5" data-toggle="tab"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/5.jpg" alt="pro-thumbnail" /></a>
										</li>
										<li>
											<a href="#thumbnail_6" data-toggle="tab"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/6.jpg" alt="pro-thumbnail" /></a>
										</li>
									</ul>										
								</div>
							</div>
							
							<div class="col-lg-7 col-md-7 col-sm-8 col-xs-12">
								<div class="single-product-descirption">
									<h2><%=itemPro.getName() %></h2>
									<div class="single-product-social-share">
										<ul>
											<li><a href="#" class="twi-link"><i class="fa fa-twitter"></i>Tweet</a></li>
											<li><a href="#" class="fb-link"><i class="fa fa-facebook"></i>Share</a></li>
											<li><a href="#" class="g-plus-link"><i class="fa fa-google-plus"></i>Google+</a></li>
											<li><a href="#" class="pin-link"><i class="fa fa-pinterest"></i>Pinterest</a></li>
										</ul>
									</div>
									<div class="single-product-review-box">
										<div class="rating-box">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-half-empty"></i>
										</div>
										<div class="read-reviews">
											<a href="#">Read reviews (<%=itemPro.getPreview() %>)</a>
										</div>
										<div class="write-review">
											<a href="#">Write a review</a>
										</div>		
									</div>
									<div class="single-product-condition">
										<p>Reference: <span>demo_1</span></p>
										<p>Condition: <span>New product</span></p>
									</div>
									<div class="single-product-price">
										<h2><%=itemPro.getPrice() %></h2>
									</div>
									<div class="single-product-desc">
										<p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
										<div class="product-in-stock">
											<p>300 Items<span>In stock</span></p>
										</div>
									</div>
									<div class="single-product-info">
										<a href="#"><i class="fa fa-envelope"></i></a>
										<a href="#"><i class="fa fa-print"></i></a>
										<a href="#"><i class="fa fa-heart"></i></a>
									</div>
									<div class="single-product-quantity">
										<p class="small-title">Quantity</p> 
										<div class="cart-quantity">
											<div class="cart-plus-minus-button single-qty-btn">
												<input class="cart-plus-minus sing-pro-qty" type="text" name="qtybutton" value="0">
											</div>
										</div>
									</div>
									<div class="single-product-size">
										<p class="small-title">Size </p> 
										<select name="product-size" id="product-size">
											<option value="">S</option>
											<option value="">M</option>
											<option value="">L</option>
										</select>
									</div>
									<div class="single-product-color">
										<p class="small-title">Color </p> 
										<a href="#"><span></span></a>
										<a class="color-blue" href="#"><span></span></a>
									</div>
									<%if(userLogin!=null){ %>
									<div class="single-product-add-cart" style="<%if(userLogin==null) out.print("display: none");%>">
										<a class="add-cart-text" title="Add to cart" href="javascript:void(0)" onclick="addToCard(<%=itemPro.getId()%>, <%=userLogin.getId()%>)">Add to cart</a>
									</div>
									<%} %>
								</div>
							</div>
						</div>
						<!-- SINGLE-PRODUCT-DESCRIPTION END -->
						<!-- SINGLE-PRODUCT INFO TAB START -->
						<div class="row">
							<div class="col-sm-12">
								<div class="product-more-info-tab">
									<!-- Nav tabs -->
									<ul class="nav nav-tabs more-info-tab">
										<li class="active"><a href="#moreinfo" data-toggle="tab">more info</a></li>
										<li><a href="#datasheet" data-toggle="tab">data sheet</a></li>
										<li><a href="#review" data-toggle="tab">reviews</a></li>
									</ul>
									  <!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active" id="moreinfo">
											<div class="tab-description">
												<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman's wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>
											</div>
										</div>
										<div class="tab-pane" id="datasheet">
											<div class="deta-sheet">
												<table class="table-data-sheet">			
													<tbody>
														<tr class="odd">
															<td>Compositions</td>
															<td>Cotton</td>
														</tr>
														<tr class="even">
															<td class="td-bg">Styles</td>
															<td class="td-bg">Casual</td>
														</tr>
														<tr class="odd">
															<td>Properties</td>
															<td>Short Sleeve</td>
														</tr>
													</tbody>
												</table>				
											</div>
										</div>
										<div class="tab-pane" id="review">
											<div class="row tab-review-row">
												<div class="col-xs-5 col-sm-4 col-md-4 col-lg-3 padding-5">
													<div class="tab-rating-box">
														<span>Grade</span>
														<div class="rating-box">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-half-empty"></i>
														</div>	
														<div class="review-author-info">
															<strong>write A REVIEW</strong>
															<span>06/22/2015</span>
														</div>															
													</div>
												</div>
												<div class="col-xs-7 col-sm-8 col-md-8 col-lg-9 padding-5">
													<div class="write-your-review">
														<p><strong>write A REVIEW</strong></p>
														<p>write A REVIEW</p>
														<span class="usefull-comment">Was this comment useful to you? <span>Yes</span><span>No</span></span>
														<a href="#">Report abuse </a>
													</div>
												</div>
												<a href="javascript:void(0)" class="write-review-btn">Write your review!</a>
												<input type="text" id="review_content">
												<input type="submit" value="OK" onclick="onReview(<%=itemPro.getId()%>)">
											</div>
										</div>
									</div>									
								</div>
							</div>
						</div>
						<%
						}
						%>
						<!-- SINGLE-PRODUCT INFO TAB END -->
						<!-- RELATED-PRODUCTS-AREA START -->
						<div class="row">
							<div class="col-sm-12">
								<div class="left-title-area">
									<h2 class="left-title">related products</h2>
								</div>	
							</div>
							<div class="related-product-area featured-products-area">
								<div class="col-sm-12">
									<div class=" row">
										<!-- RELATED-CAROUSEL START -->
										<div class="related-product">
											<!-- SINGLE-PRODUCT-ITEM START -->
											<div class="item">
												<div class="single-product-item">
													<div class="product-image">
														<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sale/3.jpg" alt="product-image" /></a>
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
														<a href="#">Faded Short T-sh...</a>
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
														<a href="#">Blouse</a>
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
														<a href="#">Printed Dress</a>
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
														<div class="overlay-content">
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
														<a href="#">Printed Dress</a>
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
														<a href="#">Printed Summer Dr...</a>
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
														<a href="#">Printed Summer</a>
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
														<a href="#">Printed Chiffon Dr...</a>
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
														<a href="#">Printed Dress</a>
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
														<a href="#">Printed Dress</a>
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
														<a href="#">Blouse</a>
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
														<a href="#">Faded Short Sle...</a>
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
														<a href="#">Printed Chiffon Dr...</a>
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
														<a href="#">Printed Dress</a>
														<div class="price-box">
															<span class="price">$26.00</span>
														</div>
													</div>
												</div>							
											</div>	
											<!-- SINGLE-PRODUCT-ITEM END -->
											<!-- SINGLE-PRODUCT-ITEM START -->								
										</div>
										<!-- RELATED-CAROUSEL END -->
									</div>	
								</div>
							</div>	
						</div>
						<!-- RELATED-PRODUCTS-AREA END -->
					</div>
					<!-- RIGHT SIDE BAR START -->
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- SINGLE SIDE BAR START -->
						<div class="single-product-right-sidebar">
							<h2 class="left-title">Viewed products</h2>
							<ul>
								<li>
									<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/2.jpg" alt="" /></a>
									<div class="r-sidebar-pro-content">
										<h5><a href="#">Faded Short ...</a></h5>
										<p>Faded short sleeves t-shirt with high...</p>
									</div>
								</li>
								<li>
									<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/4.jpg" alt="" /></a>
									<div class="r-sidebar-pro-content">
										<h5><a href="#">Printed Chif ..</a></h5>
										<p>Printed chiffon knee length dress...</p>
									</div>
								</li>
								<li>
									<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/6.jpg" alt="" /></a>
									<div class="r-sidebar-pro-content">
										<h5><a href="#">Printed Sum ...</a></h5>
										<p>Long printed dress with thin...</p>
									</div>
								</li>
								<li>
									<a href="#"><img src="<%=request.getContextPath() %>/templates/public/img/product/sidebar_product/1.jpg" alt="" /></a>
									<div class="r-sidebar-pro-content">
										<h5><a href="#">Printed Dress </a></h5>
										<p>100% cotton double printed dress....</p>
									</div>
								</li>
							</ul>
						</div>	
						<!-- SINGLE SIDE BAR END -->
						<!-- SINGLE SIDE BAR START -->
						<div class="single-product-right-sidebar clearfix">
							<h2 class="left-title">Tags </h2>
							<div class="category-tag">
								<a href="#">fashion</a>
								<a href="#">handbags</a>
								<a href="#">women</a>
								<a href="#">men</a>
								<a href="#">kids</a>
								<a href="#">New</a>
								<a href="#">Accessories</a>
								<a href="#">clothing</a>
								<a href="#">New</a>
							</div>							
						</div>	
						<!-- SINGLE SIDE BAR END -->
						<!-- SINGLE SIDE BAR START -->						
						<div class="single-product-right-sidebar">
							<div class="slider-right zoom-img">
								<a href="#"><img class="img-responsive" src="<%=request.getContextPath() %>/templates/public/img/product/cms11.jpg" alt="sidebar left" /></a>
							</div>							
						</div>
					</div>
					<!-- SINGLE SIDE BAR END -->				
				</div>
			</div>
		</section>
		<!-- MAIN-CONTENT-SECTION END -->
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
			function addToCard(idPro, idMember){
				$.ajax({
					url: '<%=request.getContextPath()%>/index',
					type: 'POST',
					data: {aidPro: idPro, aidMember: idMember},
					success: function(data){
						alert("Đã thêm vào giỏ hàng!");
						$("#size-cart").text(data);
					},
					error: function (){
						alert('Có lỗi xảy ra');
					}
				})
			}
			function onReview(id){
				var review = $("#review_content").val();
				$.ajax({
					url: '<%=request.getContextPath()%>/detail',
					type: 'POST',
					data: {aid: id, areview: review},
					success: function(data){
						alert(data);
						$("#review_content").val("");
					},
					error: function (){
						alert('Có lỗi xảy ra');
					}
				})
			}
		</script>
    </body>

</html>