<%@page import="models.Member"%>
<%@page import="models.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 pull-right shopingcartarea">
	<div class="shopping-cart-out pull-right" id=sizecart>
		<%
			@SuppressWarnings("unchecked")
			List<Cart> listCarts = (List<Cart>) session.getAttribute("listCarts");
		%>
		<div class="shopping-cart">
			<a class="shop-link" href="<%=request.getContextPath() %>/cart" title="View my shopping cart">
				<i class="fa fa-shopping-cart cart-icon"></i>
				<b>My Cart</b>
				<span class="ajax-cart-quantity" id="size-cart"><%if(listCarts==null) out.print("0"); else out.print(listCarts.size()); %></span>
			</a>
		</div>
	</div>
</div>