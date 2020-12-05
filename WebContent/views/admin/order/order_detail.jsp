<%@page import="models.Cart"%>
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
            <h1 class="m-0">Chi tiết đơn hàng</h1>
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
                                        <th>Tên sản phẩm</th>
                                        <th>Hình ảnh</th>
                                        <th>Đơn giá</th>
                                        <th>Số lượng</th>
                                        <th>Thành tiền</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <%
                                if(request.getAttribute("listCart")!=null){
                                	@SuppressWarnings("unchecked")
                                	List<Cart> listCart = (List<Cart>) request.getAttribute("listCart");
                                	if(listCart.size()>0){
                                		for(Cart cart: listCart){
                                %>
                                    <tr>
                                        <td><%=cart.getId() %></td>
                                        <td class="center"><%=cart.getPro().getName() %></td>
                                        <td class="center">
                                        	<img width="100px" height="100px"
                                            	src="<%=request.getContextPath() %>/uploads/images/<%=cart.getPro().getArPicture().get(0)%>" />
                                        </td>
                                        <td class="center"><%=cart.getPro().getPrice() %></td>
                                        <td class="center"><%=cart.getCounter() %></td>
                                        <td class="center"><%=cart.getPro().getPrice()*cart.getCounter() %></td>
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
  </div>
 <%@ include file="/templates/admin/inc/footer.jsp" %>