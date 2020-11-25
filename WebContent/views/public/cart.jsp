<%@page import="models.Cart"%>
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
							<span><i class="fa fa-caret-right	"></i></span>
							<span>Your shopping cart</span>
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- SHOPPING-CART SUMMARY START -->
						<h2 class="page-title">Shopping-cart summary <span class="shop-pro-item">Your shopping cart contains: 2 products</span></h2>
						<!-- SHOPPING-CART SUMMARY END -->
					</div>	
					
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- SHOPING-CART-MENU START -->
						<div class="shoping-cart-menu">
							<ul class="step">
								<li class="step-current first">
									<span>01. Summary</span>
								</li>
								<li class="step-todo second">
									<span>02. Sign in</span>
								</li>
								<li class="step-todo third">
									<span>03. Address</span>
								</li>
								<li class="step-todo four">
									<span>04. Shipping</span>
								</li>
								<li class="step-todo last" id="step_end">
									<span>05. Payment</span>
								</li>
							</ul>									
						</div>
						<!-- SHOPING-CART-MENU END -->
						<!-- CART TABLE_BLOCK START -->
						<div class="table-responsive">
							<!-- TABLE START -->
							<table class="table table-bordered" id="cart-summary">
								<!-- TABLE HEADER START -->
								<thead>
									<tr>
										<th class="cart-product">Picture</th>
										<th class="cart-description">Name</th>
										<th class="cart-avail text-center">Availability</th>
										<th class="cart-unit text-right">Unit price</th>
										<th class="cart_quantity text-center">Qty</th>
										<th class="cart-delete">&nbsp;</th>
										<th class="cart-total text-right">Total</th>
									</tr>
								</thead>
								<!-- TABLE HEADER END -->
								<!-- TABLE BODY START -->
								<tbody>	
									<!-- SINGLE CART_ITEM START -->
									<%
									float totalProduct = 0.0f;
									if(request.getAttribute("listCarts")!=null){
										List<Cart> listCarts = (List<Cart>) request.getAttribute("listCarts");
										if(listCarts.size()>0){
											for(Cart objCart: listCarts){
									%>
									<tr>
										<td class="cart-product">
											<a href="<%=request.getContextPath() %>/detail?id=<%=objCart.getPro().getId()%>"><img alt="Blouse" src="<%=request.getContextPath() %>/uploads/images/<%=objCart.getPro().getPicture()%>"></a>
										</td>
										<td class="cart-description">
											<p class="product-name"><a href="#"><%=objCart.getPro().getName() %></a></p>
											<small>SKU : demo_1</small>
											<small><a href="#">Size : S, Color : Orange</a></small>
										</td>
										<td class="cart-avail"><span class="label label-success">In stock</span></td>
										<td class="cart-unit">
											<ul class="price text-right">
												<li class="price"><%=objCart.getPro().getPrice() %></li>
											</ul>
										</td>
										<td class="cart_quantity text-center">
											<div class="cart1-plus-minus-button">
												<button onclick="changeNumber(<%=objCart.getPro().getPrice() %>, <%=objCart.getPro().getId()%>, <%=userLogin.getId()%>, 1)">+</button>
												<input class="cart-plus-minus" type="text" name="qtybutton" id="counter_<%=objCart.getPro().getId()%>" value="<%=objCart.getCounter()%>">
												<button onclick="changeNumber(<%=objCart.getPro().getPrice() %>, <%=objCart.getPro().getId()%>, <%=userLogin.getId()%>, 0)">-</button>
											</div>
										</td>
										<td class="cart-delete text-center">
											<span>
												<a href="javascript:void(0)" class="cart_quantity_delete" title="Delete" onclick="deleteCart(<%=objCart.getId()%>)"><i class="fa fa-trash-o"></i></a>
											</span>
										</td>
										<%
										float price = objCart.getPro().getPrice()*objCart.getCounter();
										totalProduct+=price;
										%>
										<td class="cart-total">
											<span class="price" id="price_<%=objCart.getPro().getId()%>"><%=String.format("%.0f", price) %></span>
										</td>
									</tr>
									<%
											}}}
									%>
									<!-- SINGLE CART_ITEM END -->
								</tbody>
								<!-- TABLE BODY END -->
								<!-- TABLE FOOTER START -->
								<tfoot>										
									<tr class="cart-total-price">
										<td class="cart_voucher" colspan="3" rowspan="4"></td>
										<td class="text-right" colspan="3">Total products (tax excl.)</td>
										<td id="total_product" class="price" colspan="1"><%=totalProduct %></td>
									</tr>
									<tr>
										<td class="text-right" colspan="3">Total shipping</td>
										<td id="total_shipping" class="price" colspan="1">$5.00</td>
									</tr>
									<tr>
										<td class="text-right" colspan="3">Total vouchers (tax excl.)</td>
										<td class="price" colspan="1">$0.00</td>
									</tr>
									<tr>
										<td class="total-price-container text-right" colspan="3">
											<span>Total</span>
										</td>
										<td id="total-price-container" class="price" colspan="1">
											<span id="total-price">$76.46</span>
										</td>
									</tr>
								</tfoot>		
								<!-- TABLE FOOTER END -->									
							</table>
							<!-- TABLE END -->
						</div>
						<!-- CART TABLE_BLOCK END -->
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="first_item primari-box mycartaddress-info">
							<!-- SINGLE ADDRESS START -->
							<ul class="address">
								<li>
									<h3 class="page-subheading box-subheading">
										Delivery address (BootExperts Office)
									</h3>
								</li>
								<li><span class="address_name">BootExperts</span></li>
								<li><span class="address_company">Web development Company</span></li>
								<li><span class="address_address1">Bonossri</span></li>
								<li><span class="address_address2">D-Block</span></li>
								<li><span class="">Rampura</span></li>
								<li><span class="">Dhaka</span></li>
								<li><span class="address_phone">+880 1735161598</span></li>
								<li><span class="address_phone_mobile">+880 1975161598</span></li>
							</ul>	
							<!-- SINGLE ADDRESS END -->
						</div>						
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="second_item primari-box mycartaddress-info">
							<!-- SINGLE ADDRESS START -->
							<ul class="address">
								<li>
									<h3 class="page-subheading box-subheading">
										Invoice address (BootExperts Home)
									</h3>
								</li>
								<li><span class="address_name">BootExperts</span></li>
								<li><span class="address_company">Web development Company</span></li>
								<li><span class="address_address1">Dhaka</span></li>
								<li><span class="address_address2">Bonossri</span></li>
								<li><span class="">Dhaka-1205</span></li>
								<li><span class="">Rampura</span></li>
								<li><span class="address_phone">+880 1735161598</span></li>
								<li><span class="address_phone_mobile">+880 1975161598</span></li>
							</ul>	
							<!-- SINGLE ADDRESS END -->
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- RETURNE-CONTINUE-SHOP START -->
						<div class="returne-continue-shop">
							<a href="index.html" class="continueshoping"><i class="fa fa-chevron-left"></i>Continue shopping</a>
							<a href="checkout-signin.html" class="procedtocheckout">Proceed to checkout<i class="fa fa-chevron-right"></i></a>
						</div>	
						<!-- RETURNE-CONTINUE-SHOP END -->						
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
		<script type="text/javascript">
			function changeNumber(price, idPro, idUser, num){
				$.ajax({
					url: '<%=request.getContextPath()%>/cart',
					type: 'POST',
					data: {
						aidPro: idPro, 
						aidUser: idUser, 
						anum: num
					},
					success: function(data){
						$("#counter_"+idPro).val(data);
						$("#price_"+idPro).text(price*data);
					},
					error: function (){
						alert('Có lỗi xảy ra');
					}
				})
			}
			function deleteCart(id){
				var check = confirm("Bạn có chắc chắn muốn xóa không?");
				if(check){
					$.ajax({
						url: '<%=request.getContextPath()%>/cart',
						type: 'GET',
						data: {aid: id},
						success: function(data){
							$('body').html(data);
						},
						error: function (){
							alert('Có lỗi xảy ra');
						}
					})
				}
			}
		</script>
<%@ include file="/templates/public/inc/footer.jsp" %>
    </body>
</html>