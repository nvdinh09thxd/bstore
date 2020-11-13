<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mua hoa</title>
		<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/views/admin/images/icon.jpg"/>
		<link href="<%=request.getContextPath() %>/views/admin/css/reset.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/views/admin/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="header">
			<div id="header-status">
				<div class="container_12">
					<div class="grid_4">
						<ul class="user-pro">
						
						</ul>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
	
			<div id="header-main">
				<div class="container_12">
					<div class="grid_12">
						<div id="logo">
							<ul id="nav">
								<li><a href="<%=request.getContextPath() %>/index">Trang chủ</a></li>
								<li><a href="<%=request.getContextPath() %>/them-hoa">Mua hoa</a></li>
								<li><a href="<%=request.getContextPath() %>/them-loai-hoa">Thêm danh mục</a></li>
								<li><a href="<%=request.getContextPath() %>/xem-hoa">Xem danh sách</a></li>
							</ul>
						</div>
					</div>
					<div style="clear: both;"></div>
				</div>
			</div>
			
			<div style="clear: both;"></div>
			
			<div id="subnav">
				<div class="container_12">
					<div class="grid_12">
						<ul>
							<li><a href="list.html">sản phẩm</a></li>
							<li><a href="list.html">Danh mục sản phẩm</a></li>
							<li><a href="add.html">Giới thiệu</a></li>
							<li><a href="list.html">Đơn hàng</a></li>
							<li><a href="list.html">Liên hệ</a></li>
						</ul>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>