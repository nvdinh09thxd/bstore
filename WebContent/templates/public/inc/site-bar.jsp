<%@page import="daos.CatDao"%>
<%@page import="models.Categories"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 no-padding-right menuarea">
	<div class="mainmenu">
		<nav>
			<ul class="list-inline mega-menu">
				<li class="active"><a href="<%=request.getContextPath() %>/index">Home</a></li>
				<li>
					<a href="shop-gird.html">New</a>
					<!-- DRODOWN-MEGA-MENU START -->
					<div class="drodown-mega-menu">
						<div class="left-mega col-xs-6">
							<div class="mega-menu-list">
								<a class="mega-menu-title" href="shop-gird.html">TOPS</a>
								<ul>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">Delivery</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- DRODOWN-MEGA-MENU END -->
				</li>
				<li>
					<a href="shop-gird.html">Sale</a>
					<!-- DRODOWN-MEGA-MENU START -->
					<div class="drodown-mega-menu">
						<div class="left-mega col-xs-6">
							<div class="mega-menu-list">
								<ul>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">Delivery</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- DRODOWN-MEGA-MENU END -->
				</li>
				<li>
					<a href="<%=request.getContextPath() %>/cat">Danh mục</a>
					<!-- DRODOWN-MEGA-MENU START -->
					<div class="drodown-mega-menu">
						<div class="mega-menu-list">
							<a class="mega-menu-title" href="shop-gird.html">Sản phẩm mới</a>
							<%
							CatDao catDao = new CatDao();
							List<Categories> listCatNew = catDao.findNew();
							if(listCatNew!=null && listCatNew.size()>0){
							%>
							<ul>
							<%
							for(Categories cat : listCatNew){
							%>
								<li>
									<a href="<%=request.getContextPath() %>/cat?cid=<%=cat.getId()%>"><%=cat.getName() %></a>
								</li>
							<%
							}%>
							</ul>
							<%
							}
							%>
						</div>
						<div class="mega-menu-list">
							<a class="mega-menu-title" href="shop-gird.html">Sản phẩm bán chạy</a>
							<%
							List<Categories> listCatSale = catDao.findSale();
							if(listCatSale!=null && listCatSale.size()>0){
							%>
							<ul>
							<%
							for(Categories cat : listCatSale){
							%>
								<li>
									<a href="<%=request.getContextPath() %>/cat?cid=<%=cat.getId()%>"><%=cat.getName() %></a>
								</li>
							<%
							}%>
							</ul>
							<%
							}
							%>
						</div>
					</div>
					<!-- DRODOWN-MEGA-MENU END -->
				</li>
				<li>
					<a href="shop-gird.html">T-shirts</a>
					<!-- DRODOWN-MEGA-MENU START -->
					<div class="drodown-mega-menu">
						<div class="left-mega col-xs-6">
							<div class="mega-menu-list">
								<a class="mega-menu-title" href="shop-gird.html">TOPS</a>
								<ul>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">Delivery</a></li>
								</ul>
							</div>
							<div class="mega-menu-list">
								<a class="mega-menu-title" href="shop-gird.html">new product</a>
								<ul>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">Delivery</a></li>
								</ul>
							</div>
						</div>
						<div class="right-mega col-xs-6">
							<div class="mega-menu-list">
								<a class="mega-menu-title" href="shop-gird.html">Prodect</a>
								<ul>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">Watch</a></li>
									<li><a href="shop-gird.html">Delivery</a></li>
								</ul>
							</div>
							<div class="mega-menu-list">
								<a class="mega-menu-title" href="shop-gird.html">best sale month</a>
								<ul>
									<li><a href="shop-gird.html">T-shirts</a></li>
									<li><a href="shop-gird.html">clothing</a></li>
									<li><a href="shop-gird.html">Delivery</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- DRODOWN-MEGA-MENU END -->
				</li>
				<li><a href="<%=request.getContextPath() %>/about">About us</a></li>
			</ul>
		</nav>
	</div>
</div>