<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="pagetitle">
    <h1>Category</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/statisticsResult">Home</a></li>
            <li class="breadcrumb-item active">Overview</li>
            <li class="breadcrumb-item active">Category</li>
        </ol>
    </nav>
</div>
<!-- End Page Title -->

<section class="section dashboard">
    <div class="row">
        <!-- Left side columns -->
        <div class="col-lg-8">
            <div class="row">
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales overflow-auto">


                        <div class="card-body">
                            <h5 class="card-title">Category <span>| </span></h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                     <tbody>
                                     <c:forEach items="${listCategory}" var="loai">
                                         <tr>
                                             <td>${loai.name}</td>
                                             <td>${loai.status == 0 ? "Stocking" : "Out Of Stock"}</td>
                                             <td>
                                                 <a href="/category/delete/${loai.id}" class="btn btn-danger" onclick="return confirm('Bạn chắc chắn có muốn xóa??')" >Delete</a>
                                                 <a href="/category/detail/${loai.id}" class="btn btn-success" >Detail</a>
                                             </td>
                                         </tr>
                                     </c:forEach>
                                     </tbody>

                            </table>
                            <%--                            <form method="post" enctype="multipart/form-data" action="import">--%>
                            <%--                                Thêm từ file excel: <input class="form-control" name="file" type="file">--%>
                            <%--                                <button>Thêm</button>--%>
                            <%--                            </form>--%>
                        </div>

                    </div>


                </div><!-- End Recent Sales -->

            </div>

        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">

            <!-- Recent Activity -->
            <div class="card">

                <div class="card-body">
                    <h5 class="card-title">Sửa <span>| xx</span></h5>
                    <!-- Default Tabs -->
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                    data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                    aria-selected="true">Edit
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                    data-bs-target="#profile" type="button" role="tab" aria-controls="profile"
                                    aria-selected="false">Add new
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab"
                                    data-bs-target="#contact" type="button" role="tab" aria-controls="contact"
                                    aria-selected="false">Detail
                            </button>
                        </li>
                    </ul>

                    <%--update--%>
                    <div class="tab-content pt-2" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel"
                             aria-labelledby="home-tab">
                            <form method="post" action="/category/update/${loai.id}">

                                <div>
                                    Name :
                                    <input class="form-control" name="name" value="${loai.name}">
                                </div>
                                <div>
                                    Status :<br>
                                    <input  type="radio" name="status" value="0" ${ loai.status == "0" ? "checked" : "" }> Còn Hàng <br>
                                    <input   type="radio" name="status" value="1" ${ loai.status == "1" ? "checked" : "" }> Hết hàng
                                </div>
                                <input type="submit" class="btn btn-primary" value="Update"style="margin-top: 10px">
                            </form>
                        </div>

                        <%--create--%>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <form method="post" action="/category/add">
                                <div>
                                    Name :
                                    <input class="form-control" name="name" >
                                </div>
                                <div>
                                    Status :<br>
                                    <input  type="radio" name="status" value="0" > Còn Hàng <br>
                                    <input  type="radio" name="status" value="1"> Hết hàng
                                </div>
                                <input type="submit" class="btn btn-primary" value="Add"style="margin-top: 10px">
                            </form>
                        </div>
                        <%--detail--%>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                            <form class="row g-3" action="/category/detail/${loai.id}" method="get">
                                <div class="form-group">
                                    ID : ${loai.id}
                                </div>
                                <div class="form-group">
                                    Name : ${loai.name}
                                </div>

                            </form><!-- End Multi Columns Form -->
                        </div>
                    </div><!-- End Default Tabs -->


                </div>

            </div>
        </div><!-- End Recent Activity -->


    </div><!-- End Right side columns -->

    </div>
</section>



