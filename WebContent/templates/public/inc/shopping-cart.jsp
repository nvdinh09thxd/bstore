<%@page import="models.Member"%>
<%@page import="models.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 pull-right shopingcartarea">
						<div class="shopping-cart-out pull-right">
									<%
										List<Cart> listCarts = (List<Cart>) session.getAttribute("listCarts");
										if(listCarts!=null && listCarts.size()>0){
									%>
							<div class="shopping-cart">
								<a class="shop-link" href="<%=request.getContextPath() %>/cart" title="View my shopping cart">
									<i class="fa fa-shopping-cart cart-icon"></i>
									<b>My Cart</b>
									<span class="ajax-cart-quantity" id="size-cart"><%=listCarts.size() %></span>
								</a>
								<div class="shipping-cart-overly">
									<%
									for(Cart objCart: listCarts){
									%>
									<div class="shipping-item">
										<span class="cross-icon"><i class="fa fa-times-circle"></i></span>
										<div class="shipping-item-image">
											<a href="#"><img src="<%=request.getContextPath() %>/uploads/images/<%=objCart.getPro().getArPicture().get(0) %>" alt="shopping image" /></a>
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
							<%} %>
						</div>
					</div>