<%@page import="models.Products"%>
<%@page import="models.Categories"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/templates/admin/inc/header.jsp" %>
<%@ include file="/templates/admin/inc/left-bar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Sửa sản phẩm</h1>
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
                <!-- Form Elements -->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                            <%
                            	if(request.getAttribute("itemPro")!=null){
                            		Products objProducts = (Products) request.getAttribute("itemPro");
                            
                            %>
                                <form role="form" method="post" enctype="multipart/form-data" id="form">
                                	<input type="hidden" value="<%=objProducts.getId() %>" name="id" />
                                    <div class="form-group">
                                        <label for="name">Tên sản phẩm</label>
                                        <input type="text" id="name" value="<%=objProducts.getName() %>" name="name" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="category">Danh mục</label>
                                        <select id="category" name="category" class="form-control">
                                        <%
                                       if(request.getAttribute("listCats")!=null){
                                        List<Categories> listCats = (List<Categories>) request.getAttribute("listCats");
                                        if(listCats.size()>0){
                                        	for(Categories cat: listCats){
                                        %>
	                                        <option <%if(cat.getId()==objProducts.getCat().getId()) out.print("selected"); %> value="<%=cat.getId()%>"><%=cat.getName()%></option>
										<%
                                       		}}}
										%>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="picture">Hình ảnh</label>
                                        <input name="file" type="file" multiple />
                                        <img width="200px" height="200px" alt="<%=objProducts.getArPicture().get(0)%>" src="<%=request.getContextPath() %>/uploads/images/<%=objProducts.getArPicture().get(0)%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="price">Giá bán</label>
                                        <input type="text" name="price" value="<%=objProducts.getPrice() %>" />
                                    </div>
                                    <button type="submit" name="submit" class="btn btn-success btn-md">Thêm</button>
                                </form>
                                
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Form Elements -->
            </div>
        </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@ include file="/templates/admin/inc/footer.jsp" %>