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
                            <div class="container overflow-auto" style="height:70vh;">
                                <div class="h4 mt-3">1.ข้อมูลส่วนตัว</div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12 col-md-12">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">รหัสบัตรประชาชน</label>
                                            <input type="text" class="form-control form-control-sm" id="idcard"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">คำนำหน้า</label>
                                            <select class="form-select form-select-sm" required>
                                                <option value="นาย">นาย</option>
                                                <option value="นาง">นาง</option>
                                                <option value="นางสาว">นางสาว</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">ชื่อ</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">นามสกุล</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">วันเดือนปีเกิด</label>
                                            <input type="date" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">วันเดือนปีเกิด</label>
                                            <input type="date" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">อายุ</label>
                                            <input type="number" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">Email</label>
                                            <input type="email" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="h4 mt-3">2.ข้อมูลสถานที่ติดต่อ</div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">หมู่บ้าน</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">เลขที่</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">หมู่ที่</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">ซอย</label>
                                            <input type="text"  class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">ถนน</label>
                                            <input type="text" class="form-control form-control-sm" id="exampleFormControlInput1"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">ตำบล/เเขวง</label>
                                            <input type="text" id="district" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">อำเภอ/เขต</label>
                                            <input type="text" id="amphoe" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">จังหวัด</label>
                                            <input type="text" id="province" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">รหัสไปรษณีย์</label>
                                            <input type="text" id="zipcode" class="form-control form-control-sm" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">โทรศัพท์บ้าน</label>
                                            <input class="form-control form-control-sm" type="text"  placeholder="เบอร์ติดต่อ" id="txt_tel1" name="txt_tel1" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">โทรศัพท์มือถือ</label>
                                            <input type="tel" class="form-control form-control-sm" id="txt_tel2" name="txt_tel2"  required>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-3 text-center">
                    <button class="btn btn-primary btn-md  mb-3"  type="submit" id="confirm" name="confirm">ยืนยัน</button>
                    &nbsp;
                    <button class="btn btn-danger btn-md  mb-3"  type="reset" id="reset" name="reset">ล้างข้อมูล</button>
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
                    $zipcode: $('#zipcode')// input ของรหัสไปรษณีย์
                });
                
                $("#idcard").inputmask({"mask": "9-9999-99999-99-9"});
                $("#txt_tel1").inputmask({"mask": "999-999-9999"});
                $("#txt_tel2").inputmask({"mask": "999-999-9999"});
                $("#confirm").click(function(){
                    // alert($("#txt_tel").val().replace(/-/g, ''));
                    $("#myform").addClass("was-validated");
                })
            });
        </script>
    </body>
</html>
