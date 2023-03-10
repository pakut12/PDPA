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
            <div class="text-center h1 mb-3 text-primary"><b>PDPA</b></div>
            <form method="post" action="" id="myform">
                <div class="card shadow-lg col-sm-12 col-md-10 mx-auto border-primary "  id="mycard">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 mx-auto ">
                            <div class="container overflow-auto" style="height:70vh;">
                                <div class="h4 mt-3">1.ข้อมูลส่วนตัว</div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        
                                        <div class="mb-3">
                                            <label for="idcard" class="form-label">รหัสบัตรประชาชน</label>
                                            <input type="text" class="form-control form-control-sm " id="idcard" name="idcard" pattern="\d{1}-\d{4}-\d{5}-\d{2}-\d{1}" required>
                                            
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="prefix" class="form-label" >คำนำหน้า</label>
                                            <select class="form-select form-select-sm" id="prefix" name="prefix" required>
                                                <option selected disabled value="" >โปรดเลือก</option>
                                                <option value="นาย">นาย</option>
                                                <option value="นาง">นาง</option>
                                                <option value="นางสาว">นางสาว</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="firstname" class="form-label">ชื่อ</label>
                                            <input type="text" class="form-control form-control-sm" id="firstname" name="firstname"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <div class="mb-3">
                                            <label for="surname" class="form-label">นามสกุล</label>
                                            <input type="text" class="form-control form-control-sm" id="surname" name="surname" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="birthday" class="form-label">วันเดือนปีเกิด</label>
                                            <input type="date" class="form-control form-control-sm" id="birthday" name="birthday" required>
                                            <div id="birthdayHelp" class="form-text text-danger">* กรุณากรอกเป็น ค.ศ เช่น 19/10/1999</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="age" class="form-label">อายุ</label>
                                            <input type="number" class="form-control form-control-sm" id="age" name="age" readonly required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email</label>
                                            <input type="email" class="form-control form-control-sm" id="email" name="email"  required>
                                            <div id="villageHelp" class="form-text text-danger">* ถ้าไม่มีให้ใส่ - </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="h4 mt-3">2.ข้อมูลสถานที่ติดต่อ</div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="village" class="form-label">หมู่บ้าน</label>
                                            <input type="text" class="form-control form-control-sm" id="village" name="village" required>
                                            <div id="villageHelp" class="form-text text-danger">* ถ้าไม่มีให้ใส่ - </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="number" class="form-label">เลขที่</label>
                                            <input type="text" class="form-control form-control-sm" id="number" name="number" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <div class="mb-3">
                                            <label for="group" class="form-label">หมู่ที่</label>
                                            <input type="text" class="form-control form-control-sm" id="group" name="group"  required>
                                            <div id="villageHelp" class="form-text text-danger">* ถ้าไม่มีให้ใส่ - </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="alley" class="form-label">ซอย</label>
                                            <input type="text"  class="form-control form-control-sm" id="alley" name="alley"  required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="road" class="form-label">ถนน</label>
                                            <input type="text" class="form-control form-control-sm" id="road" name="road" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="district" class="form-label">ตำบล/เเขวง</label>
                                            <input type="text"  class="form-control form-control-sm" id="district" name="district" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="county" class="form-label">อำเภอ/เขต</label>
                                            <input type="text" class="form-control form-control-sm" name="amphoe" id="amphoe" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="province" class="form-label">จังหวัด</label>
                                            <input type="text" class="form-control form-control-sm"  id="province" name="province" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="postcode" class="form-label">รหัสไปรษณีย์</label>
                                            <input type="text" class="form-control form-control-sm" id="zipcode" name="zipcode" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="homephone" class="form-label">โทรศัพท์บ้าน</label>
                                            <input class="form-control form-control-sm" type="text"  id="homephone" name="homephone" pattern="\d{3}-\d{3}-\d{4}" required>
                                            <div class="form-check d-flex justify-content-end mt-2 ">
                                                <input class="form-check-input" type="checkbox" id="nohomephone" name="nohomephone"  >
                                                <label class="form-check-label mx-2" for="nohomephone">
                                                    ไม่มีโทรศัพท์บ้าน
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-12 col-md-6">
                                        <div class="mb-3">
                                            <label for="exampleFormControlInput1" class="form-label">โทรศัพท์มือถือ</label>
                                            <input type="tel" class="form-control form-control-sm" id="phonenumber" name="phonenumber" pattern="\d{3}-\d{3}-\d{4}" required>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" value="register" name="type" id="type">
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-3 text-center">
                    <button class="btn btn-primary btn-md  mb-3"  type="button" id="confirm" name="confirm">ยืนยัน</button>
                    &nbsp;
                    <button class="btn btn-danger btn-md  mb-3"  type="reset" id="reset" name="reset">ล้างข้อมูล</button>
                </div>
                <br>
            </form>
        </div>
        <footer>
            <%@ include file = "share/footer.jsp" %>
        </footer>
        <script>
            function nohomephone(){
                $("#nohomephone").change(function(){
                    if ($(this).is(':checked')) {
                        $('#homephone').val("");
                        $('#homephone').prop('readonly', true);
                    }else{
                        $('#homephone').prop('readonly', false);
                    } 
                })
            }
            function calcAge(date, month, year) {
                month = month - 1;
                year = year - 543;

                today = new Date();
                dateStr = today.getDate();
                monthStr = today.getMonth();
                yearStr = today.getFullYear();

                theYear = yearStr - year;
                theMonth = monthStr - month;
                theDate = dateStr - date;

                var days = "";
                if (monthStr == 0 || monthStr == 2 || monthStr == 4 || monthStr == 6 || monthStr == 7 || monthStr == 9 || monthStr == 11) days = 31;
                if (monthStr == 3 || monthStr == 5 || monthStr == 8 || monthStr == 10) days = 30;
                if (monthStr == 1) days = 28;

                inYears = theYear;

                if (month < monthStr && date > dateStr) {
                    inYears = parseInt(inYears) + 1;
                    inMonths = theMonth - 1;
                };
    
                if (month < monthStr && date <= dateStr) {
                    inMonths = theMonth;
                } else if (month == monthStr && (date < dateStr || date == dateStr)) {
                    inMonths = 0;
                } else if (month == monthStr && date > dateStr) {
                    inMonths = 11;
                } else if (month > monthStr && date <= dateStr) {
                    inYears = inYears - 1;
                    inMonths = ((12 - -(theMonth)) + 1);
                } else if (month > monthStr && date > dateStr) {
                    inMonths = ((12 - -(theMonth)));
                };
    
                if (date < dateStr) {
                    inDays = theDate;
                } else if (date == dateStr) {
                    inDays = 0;
                } else {
                    inYears = inYears - 1;
                    inDays = days - (-(theDate));
                };
    
                var result = ['day', 'month', 'year'];
                result.day = inDays;
                result.month = inMonths;
                result.year = inYears;
    
                return result;
            };
           
            function insertdata(){   
                $("#myform").addClass("was-validated");
                var data =  $("#myform").serializeArray();
                var arr = [];
                var status = 0;
                var a = 0;
                $.each(data,function(k,v){
                    if(k != 16){
                        if(v.value === ""){
                            a++;
                        }
                    }
                    console.log(data);
                    arr.push(v.value);
                })
                var statusall = a;
                var statusidcard = $("#idcard").val().replaceAll("-", "").replaceAll("_", "").length;
                var statushomephone = $("#homephone").val().replaceAll("-", "").replaceAll("_", "").length;
                var statusphonenumber = $("#phonenumber").val().replaceAll("-", "").replaceAll("_", "").length;
               
                if(statusall > 0){
                    Swal.fire({
                        text:"กรุณากรอกข้อมูลให้ถูกต้อง",
                        title:"ผิดพลาด",
                        icon:"error"
                    });
                    status = 1
                }else if(statusidcard < 13){
                    Swal.fire({
                        text:"กรุณากรอกข้อมูลให้ถูกต้อง",
                        title:"ผิดพลาด",
                        icon:"error"
                    });
                    status = 2
                }else if(!$("#nohomephone").is(':checked')){
                    if (statushomephone < 10) {
                        Swal.fire({
                            text:"กรุณากรอกข้อมูลให้ถูกต้อง",
                            title:"ผิดพลาด",
                            icon:"error"
                        });
                        status = 3
                    }
                }else if(statusphonenumber < 10){
                    Swal.fire({
                        text:"กรุณากรอกข้อมูลให้ถูกต้อง",
                        title:"ผิดพลาด",
                        icon:"error"
                    });
                    status = 4
                }
                
                if(status == 0){  
                    $.ajax({
                        url:"Register",
                        type:"post",
                        data:$("#myform").serialize(),
                        success:function(msg){
                            var jsdecode = JSON.parse(msg);
                            if(jsdecode.status == "true"){
                                Swal.fire({
                                    text:"บันทึกสำเร็จ",
                                    title:"บันทึก",
                                    icon:"success"
                                });
                            }else if(jsdecode.status == "false"){
                                Swal.fire({
                                    text:"บันทึกไม่สำเร็จ",
                                    title:"บันทึก",
                                    icon:"error"
                                });
                            }
                        },
                        error:function(){
                            Swal.fire({
                                text:"บันทึกไม่สำเร็จ",
                                title:"ผิดพลาด",
                                icon:"error"
                            });
                        }
                    })
                }
            }
            
            $( document ).ready(function() {
                $.Thailand({
                    $district: $('#district'), // input ของตำบล
                    $amphoe: $('#amphoe'), // input ของอำเภอ
                    $province: $('#province'), // input ของจังหวัด
                    $zipcode: $('#zipcode')// input ของรหัสไปรษณีย์
                });
                nohomephone();
                $("#idcard").inputmask({"mask": "9-9999-99999-99-9"});
                $("#homephone").inputmask({"mask": "999-999-9999"});
                $("#phonenumber").inputmask({"mask": "999-999-9999"});
                $("#confirm").click(function(){
                    insertdata();
                }) 
                $("#birthday").change(function(){
                    var age = calcAge(19, 10, 2542);
                    $("#age").val(age.year);
                })
                 
            });
            
        </script>
    </body>
</html>
