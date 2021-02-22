<%@page import="models.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Report Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/css/ui.jqgrid.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/jquery.jqgrid.min.js"></script>
</head>
<%@ include file="/templates/admin/inc/header.jsp" %>
<%@ include file="/templates/admin/inc/left-bar.jsp" %>
<body>
	<%
		List<Products> listProducts = null;
		if(request.getAttribute("listProducts")!=null){
			listProducts = (List<Products>) request.getAttribute("listProducts");
		}
     %>
<div style="margin-left: 300px">
	<h1>Báo cáo sản phẩm</h1>
	<table id="grid"></table>
</div>
</body>
<script>
	    let myData  = [];
		<%if(listProducts != null){for(Products objPro: listProducts){%>
			myData.push({
				name: "<%=objPro.getName()%>",
				cat: "<%=objPro.getCat().getName()%>",
				number: "<%=objPro.getNumber()%>",
				price: "<%=objPro.getPrice()%>"
			});
		<%}}%>
		$("#grid").jqGrid({
			colModel: [
				{ name: "name", label: "Tên sản phẩm" },
				{ name: "cat", label: "Danh mục" },
				{ name: "number", label: "Số lượng", template: "integer" },
				{ name: "price", label: "Giá" },
			],
			data: myData,
			rownumbers: true,
			sortname: "number",
	        sortorder: "asc",
	        toppager: true,
	        pager: true,
	        rowNum: 5,
	        viewrecords: true,
	        caption: "Danh sách sản phẩm hiện có trong kho"
		}).jqGrid("filterToolbar");

		document.getElementById("report").classList.add('active');
</script>
</html>