<%@page import="models.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/templates/admin/inc/header.jsp" %>
<%@ include file="/templates/admin/inc/left-bar.jsp" %>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/admin/dist/js/jquery-2.1.1.min.js"></script>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Quản lý đơn hàng</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="row">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên KH</th>
                                        <th>Tổng tiền</th>
                                        <th>Ghi chú của khách</th>
                                        <th>Ngày mua</th>
                                        <th>Trạng thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <%
                                if(request.getAttribute("listOrders")!=null){
                                	@SuppressWarnings("unchecked")
                                	List<Orders> listOrders = (List<Orders>) request.getAttribute("listOrders");
                                	if(listOrders.size()>0){
                                		for(Orders order: listOrders){
                                %>
                                    <tr>
                                        <td><%=order.getId() %></td>
                                        <td class="center" onclick="detailOrder(<%=order.getId() %>)"><%=order.getMember().getFullName() %></td>
                                        <td class="center"><%=order.getTotal() %></td>
                                        <td class="center"><%=order.getNote() %></td>
                                        <td class="center"><%=order.getDate() %></td>
                                        <td class="center">
                                        	<a href="javascript:void(0)" title="">
                                            	<img width="50px" height="50px" alt="<%=order.getId() %>"
                                            	src="<%=request.getContextPath() %>/uploads/images/<%if(order.isStatus()) out.print("tick.png"); else out.print("cancel.png"); %>" />
                                            </a>
                                        </td>
                                    </tr>
								<%
                                }}}
								%>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <script>
		$("img").click(function(){
		    var image = $(this);
		    $.ajax({
				url: '<%=request.getContextPath()%>/admin/order/index',
				type : 'POST',
				cache : false,
				data : {
					aid: image.attr("alt"),
					asrc : image.attr("src"),
				},
				success : function(data) {
					image.attr("src", data)
				},
				error : function() {
					alert("Có lỗi xảy ra")
				}
			});
		});
		
		function detailOrder(id){
			window.location.href="<%=request.getContextPath()%>/admin/order/detail?id="+id;
		}
	</script>
  </div>
 <%@ include file="/templates/admin/inc/footer.jsp" %>