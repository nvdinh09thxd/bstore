<%@page import="models.Revenue"%>
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
		List<Revenue> listRevenues = null;
		if(request.getAttribute("listRevenues")!=null){
			listRevenues = (List<Revenue>) request.getAttribute("listRevenues");
		}
     %>
<div style="margin-left: 300px">
	<h1>Báo cáo doanh thu</h1>
	<table id="grid"></table>
</div>
</body>
<script>
	    let myData  = [];
		<%if(listRevenues != null){for(Revenue objRe: listRevenues){%>
			myData.push({
				total: "<%=objRe.getTotal()%>",
				date: "<%=objRe.getDate()%>",
				user: "<%=objRe.getUser().getFullname()%>"
			});
		<%}}%>
		$("#grid").jqGrid({
			colModel: [
				{ name: "total", label: "Tổng tiền" },
				{ name: "date", label: "Ngày bán", align: "center", formatter: "date", formatoptions: { newformat: "d-M-Y" } },
				{ name: "user", label: "Nhân viên" },
			],
			data: myData,
			rownumbers: true,
	        toppager: true,
	        pager: true,
	        rowNum: 5,
	        viewrecords: true,
	        caption: "Danh sách doanh thu"
		}).jqGrid("filterToolbar");

	document.getElementById("revenue").classList.add('active');
</script>
</html>