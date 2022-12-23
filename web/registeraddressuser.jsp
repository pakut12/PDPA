<%-- 
    Document   : index
    Created on : 20 ธ.ค. 2565, 14:04:11
    Author     : pakutsing
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <%@ include file = "share/header.jsp" %>
        
    </head>
    <body>
        <%
            String status = (String) request.getAttribute("status_confirm");
            if (status == null) {
                request.setAttribute("status_error", "true");
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            }
        %>
        <div class="container mt-3">
            <div class="text-center h2 mb-3 text-primary"><b>PDPA</b></div>
            <form method="post" action="Confirm" id="myform">
                <div class="card shadow-lg col-sm-12 col-md-10 mx-auto border-primary "  id="mycard">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 mx-auto ">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-md-12">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">รหัสบัตรประชาชน</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">คำนำหน้า</label>
                                            <select class="form-select form-select-sm" required>
                                                <option value=""></option>
                                                <option value=""></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">ชื่อ</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">นามสกุล</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                     <div class="col-sm-12 col-md-3">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">วันเดือนปีเกิด</label>
                                            <input type="date" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">วันเดือนปีเกิด</label>
                                            <input type="date" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">อายุ</label>
                                            <input type="email" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">หมู่บ้าน</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">เลขที่</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">หมู่ที่</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">ซอย</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">ถนน</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">ตำบล/เเขวง</label>
                                            <input type="text" id="district" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">อำเภอ/เขต</label>
                                            <input type="text" id="amphoe" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">จังหวัด</label>
                                            <input type="text" id="province" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">รหัสไปรษณีย์</label>
                                            <input type="text" id="zipcode" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">โทรศัพท์บ้าน</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">โทรศัพท์มือถือ</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-12">
                                        <div class="mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">Email</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1" placeholder="name@example.com" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button class="btn btn-primary btn-sm w-100 mt-3"  type="submit" id="confirm" name="confirm">ยืนยัน</button>
                                    <button class="btn btn-danger btn-sm w-100 mt-3"  type="reset" id="reset" name="reset">ล้างข้อมูล</button>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </form>
        </div>
        <script>
            $( document ).ready(function() {
                $.Thailand({
                    $district: $('#district'), // input ของตำบล
                    $amphoe: $('#amphoe'), // input ของอำเภอ
                    $province: $('#province'), // input ของจังหวัด
                    $zipcode: $('#zipcode'), // input ของรหัสไปรษณีย์
                });
                
                $("#confirm").click(function(){
                    $("#myform").addClass("was-validated");
                })
            });
        </script>
    </body>
</html>
