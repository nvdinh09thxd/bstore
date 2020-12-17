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
									<li>Xin chào <%if(userLogin!=null) out.print(userLogin.getLastName()); else out.print("Khách"); %></li>
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
							<a href="index.html">HOMe</a>
							<span><i class="fa fa-caret-right"></i></span>
							<span>Women</span>
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<!-- PRODUCT-LEFT-SIDEBAR START -->
						<div class="product-left-sidebar">
							<h2 class="left-title pro-g-page-title">Catalog</h2>
							<!-- SINGLE SIDEBAR ENABLED FILTERS START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">ENABLED FILTERS:</span>
								<ul class="filtering-menu">
									<li>
										Categories: Dresses 
										<a href="#"><i class="fa fa-remove"></i></a>
									</li>
									<li>
										Avaiale: In stock 
										<a href="#"><i class="fa fa-remove"></i></a>
									</li>
									<li>
										Categories: Dresses 
										<a href="#"><i class="fa fa-remove"></i></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR ENABLED FILTERS END -->
							<!-- SINGLE SIDEBAR CATEGORIES START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Categories</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="categories"/>
											<span></span>
										</label>
										<a href="#">Tops<span> (12)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="categories"/>
											<span></span>
										</label>
										<a href="#">Dresses<span> (13)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR CATEGORIES END -->
							<!-- SINGLE SIDEBAR AVAILABILITY START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Availability</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="availability"/>
											<span></span>
										</label>
										<a href="#">In stock<span> (13)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR AVAILABILITY END -->
							<!-- SINGLE SIDEBAR CONDITION START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Condition</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="condition"/>
											<span></span>
										</label>
										<a href="#">new<span> (13)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR CONDITION END -->
							<!-- SINGLE SIDEBAR MANUFACTURER START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Manufacturer</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="manufacturer"/>
											<span></span>
										</label>
										<a href="#">Fashion Manufacturer<span> (13)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR MANUFACTURER END -->
							<!-- SINGLE SIDEBAR PRICE START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Price</span>
								<ul>
									<li> 
										<label><strong>Range:</strong><input type="text" id="slidevalue" /></label>
									</li>
									<li>
										<div id="price-range"></div>	
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR PRICE END -->
							<!-- SINGLE SIDEBAR SIZE START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Size</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="Size"/>
											<span></span>
										</label>
										<a href="#">S<span> (10)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="Size"/>
											<span></span>
										</label>
										<a href="#">m<span> (10)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="Size"/>
											<span></span>
										</label>
										<a href="#">l<span> (10)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR SIZE END -->
							<!-- SINGLE SIDEBAR COLOR START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Color</span>
								<ul class="product-color-var">
									<li>
										<i class="fa fa-square color-beige"></i>
										<a href="#">Beige<span> (1)</span></a>
									</li>
									<li>
										<i class="fa fa-square color-white"></i>
										<a href="#">white<span> (2)</span></a>
									</li>	
									<li>
										<i class="fa fa-square color-black"></i>
										<a href="#">black<span> (2)</span></a>
									</li>									
									<li>
										<i class="fa fa-square color-orange"></i>
										<a href="#">orange<span> (5)</span></a>
									</li>
									<li>
										<i class="fa fa-square color-blue"></i>
										<a href="#">blue<span> (8)</span></a>
									</li>
									<li>
										<i class="fa fa-square color-green"></i>
										<a href="#">green<span> (3)</span></a>
									</li>
									<li>
										<i class="fa fa-square color-yellow"></i>
										<a href="#">yellow<span> (4)</span></a>
									</li>
									<li>
										<i class="fa fa-square color-pink"></i>
										<a href="#">pink<span> (6)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR COLOR END -->
							<!-- SINGLE SIDEBAR COMPOSITIONS START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Compositions</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="compositions"/>
											<span></span>
										</label>
										<a href="#">Cotton<span>(8)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="compositions"/>
											<span></span>
										</label>
										<a href="#"> Polyester<span>(3)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="compositions"/>
											<span></span>
										</label>
										<a href="#"> Viscose<span>(2)</span></a>
									</li>
								</ul>
							</div>
							<!-- SINGLE SIDEBAR COMPOSITIONS END -->
							<!-- SINGLE SIDEBAR STYLES START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Styles</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="styles"/>
											<span></span>
										</label>
										<a href="#">Casual<span>(5)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="styles"/>
											<span></span>
										</label>
										<a href="#">Dressy<span>(1)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="styles"/>
											<span></span>
										</label>
										<a href="#">Girly<span>(7)</span></a>
									</li>
								</ul>
							</div>	
							<!-- SINGLE SIDEBAR STYLES END -->
							<!-- SINGLE SIDEBAR PROPERTIES START -->
							<div class="product-single-sidebar">
								<span class="sidebar-title">Properties</span>
								<ul>
									<li>
										<label class="cheker">
											<input type="checkbox" name="properties"/>
											<span></span>
										</label>
										<a href="#">Colorful Dress<span>(4)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="properties"/>
											<span></span>
										</label>
										<a href="#">Maxi Dress <span>(1)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="properties"/>
											<span></span>
										</label>
										<a href="#">Midi Dress<span>(2)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="properties"/>
											<span></span>
										</label>
										<a href="#">Short Dress<span>(2)</span></a>
									</li>
									<li>
										<label class="cheker">
											<input type="checkbox" name="properties"/>
											<span></span>
										</label>
										<a href="#"> Short Sleeve<span>(4)</span></a>
									</li>
								</ul>
							</div>	
							<!-- SINGLE SIDEBAR PROPERTIES END -->
						</div>
						<!-- PRODUCT-LEFT-SIDEBAR END -->
						<!-- SINGLE SIDEBAR TAG START -->
						<div class="product-left-sidebar">
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
						<!-- SINGLE SIDEBAR TAG END -->
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<div class="right-all-product">
							<!-- PRODUCT-CATEGORY-HEADER START -->
							<div class="product-category-header">
								<div class="category-header-image">
									<img src="<%=request.getContextPath() %>/templates/public/img/category-header.jpg" alt="category-header" />
									<div class="category-header-text">
										<h2>Women </h2>
										<strong>You will find here all woman fashion collections.</strong>
										<p>This category includes all the basics of your wardrobe and much more:<br /> shoes, accessories, printed t-shirts, feminine dresses, women's jeans!</p>
									</div>									
								</div>
							</div>
							<!-- PRODUCT-CATEGORY-HEADER END -->
							<div class="product-category-title">
								<!-- PRODUCT-CATEGORY-TITLE START -->
								<h1>
									<span class="cat-name">Women</span>
									<span class="count-product">There are 13 products.</span>
								</h1>
								<!-- PRODUCT-CATEGORY-TITLE END -->
							</div>
							<div class="product-shooting-area">
								<div class="product-shooting-bar">
									<!-- SHOORT-BY START -->
									<div class="shoort-by">
										<label for="productShort">Sort by</label>
										<div class="short-select-option">
											<select name="sortby" id="productShort">
												<option value="">--</option>
												<option value="">Price: Lowest first</option>
												<option value="">Price: Highest first</option>
												<option value="">Product Name: A to Z</option>
												<option value="">Product Name: Z to A</option>
												<option value="">In stock</option>
												<option value="">Reference: Lowest first</option>
												<option value="">Reference: Highest first</option>
											</select>												
										</div>
									</div>
									<!-- SHOORT-BY END -->
									<!-- SHOW-PAGE START -->
									<div class="show-page">
										<label for="perPage">Show</label>
										<div class="s-page-select-option">
											<select name="show" id="perPage">
												<option value="">11</option>
												<option value="">12</option>
											</select>													
										</div>
										<span>per page</span>										
									</div>
									<!-- SHOW-PAGE END -->
									<!-- VIEW-SYSTEAM START -->
									<div class="view-systeam">
										<label for="perPage">View:</label>
										<ul>
											<li class="active"><a href="shop-gird.html"><i class="fa fa-th-large"></i></a><br />Grid</li>
											<li><a href="shop-list.html"><i class="fa fa-th-list"></i></a><br />List</li>
										</ul>
									</div>
									<!-- VIEW-SYSTEAM END -->
								</div>
								<!-- PRODUCT-SHOOTING-RESULT START -->
								<div class="product-shooting-result">
									<form action="#">
										<button class="btn compare-button">
											Compare (<span class="compare-value">1</span>)
											<i class="fa fa-chevron-right"></i>
										</button>
									</form>
									<div class="showing-item">
										<span>Showing 1 - 12 of 13 items</span>
									</div>
									<div class="showing-next-prev">
										<ul class="pagination-bar">
											<li class="disabled">
												<a href="#" ><i class="fa fa-chevron-left"></i>Previous</a>
											</li>
											<li class="active">
												<span><a class="pagi-num" href="#">1</a></span>
											</li>
											<li>
												<span><a class="pagi-num" href="#">2</a></span>
											</li>
											<li>
												<a href="#" >Next<i class="fa fa-chevron-right"></i></a>
											</li>
										</ul>
										<form action="#">
											<button class="btn showall-button">Show all</button>
										</form>
									</div>
								</div>
								<!-- PRODUCT-SHOOTING-RESULT END -->
							</div>
						</div>
						<!-- ALL GATEGORY-PRODUCT START -->
						<div class="all-gategory-product">
							<div class="row">
								<ul class="gategory-product">
									<!-- SINGLE ITEM START -->
									<%
									if(request.getAttribute("listProductsByIdCat")!=null){
									List<Products> listPro = (List<Products>) request.getAttribute("listProductsByIdCat");
									if(listPro.size()>0){
										for(Products pro: listPro){
									%>
									<li class="gategory-product-list col-lg-3 col-md-4 col-sm-6 col-xs-12">
										<div class="single-product-item">
											<div class="product-image">
												<a href="<%=request.getContextPath() %>/detail?id=<%=pro.getId()%>">
													<img src="<%=request.getContextPath() %>/uploads/images/<%if(pro.getArPicture().size()>0) out.print(pro.getArPicture().get(0)); else out.print("nopicture.jpg"); %>" alt="product-image" />
												</a>
												<a href="single-product.html" class="new-mark-box"><%=pro.getCat().getName() %></a>
												<div class="overlay-content">
													<ul>
														<li><a href="#" title="Quick view"><i class="fa fa-search"></i></a></li>
														<%
														if(userLogin!=null){
														%>
														<li><a href="javascript:void(0)" title="Add to cart" onclick="addToCard(<%=pro.getId()%>)"><i class="fa fa-shopping-cart"></i></a></li>
														<%} %>
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
														<span><%=pro.getPreview() %> Review(s)</span>
													</div>
												</div>
												<a href="single-product.html"><%=pro.getName() %></a>
												<div class="price-box">
													<span class="price"><%=pro.getPrice() %></span>
												</div>
											</div>
										</div>									
									</li>
									<%
									}}}
									%>
									<!-- SINGLE ITEM END -->								
								</ul>
							</div>
						</div>
						<!-- ALL GATEGORY-PRODUCT END -->
						<!-- PRODUCT-SHOOTING-RESULT START -->
						<div class="product-shooting-result product-shooting-result-border">
							<form action="#">
								<button class="btn compare-button">
									Compare (<strong class="compare-value">1</strong>)
									<i class="fa fa-chevron-right"></i>
								</button>
							</form>
							<div class="showing-item">
								<span>Showing 1 - 12 of 13 items</span>
							</div>
							<div class="showing-next-prev">
								<ul class="pagination-bar">
									<li class="disabled">
										<a href="#" ><i class="fa fa-chevron-left"></i>Previous</a>
									</li>
									<li class="active">
										<span><a class="pagi-num" href="#">1</a></span>
									</li>
									<li>
										<span><a class="pagi-num" href="#">2</a></span>
									</li>
									<li>
										<a href="#" >Next<i class="fa fa-chevron-right"></i></a>
									</li>
								</ul>
								<form action="#">
									<button class="btn showall-button">Show all</button>
								</form>
							</div>
						</div>	
						<!-- PRODUCT-SHOOTING-RESULT END -->
					</div>
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
		function addToCard(idPro){
			$.ajax({
				url: '<%=request.getContextPath()%>/index',
				type: 'POST',
				data: {aidPro: idPro},
				success: function(data){
					alert("Đã thêm vào giỏ hàng!");
					$("#size-cart").text(data);
				},
				error: function (){
					alert('Có lỗi xảy ra');
				}
			})
		}
		</script>
    </body>

</html>