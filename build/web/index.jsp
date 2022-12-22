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
            String status_error = (String) request.getAttribute("status_error");
            if (status_error != null) {
        %>
        <script>
            Swal.fire({
                icon:"error",
                title:"ผิดพลาด",
                text:"กรุณากดปุ่มตัวเลือกเเละกดปุ่มยืนยัน"
            })       
        </script>
        <%            }
        %>
        <div class="d-flex flex-column justify-content-center w-100 h-100">
            <div class="container mt-5">
                <div class="d-flex">
                    <div class="p-0 w-100 mt-3">
                        <a href="index.jsp" ><img src="img/PDPA.jpg" class="w-50 h-50"></a>
                    </div>
                    <div class="p-0 flex-shrink-1 text-end">
                        <img src="img/qrcode.jpg" class="w-50 h-50">
                    </div>
                </div>
                
                <form method="post" action="Confirm" id="myform">
                    <div class="card shadow-lg col-sm-12 col-md-12 mx-auto border-primary" id="mycard">
                        <div class="card-body " >
                            <div class="overflow-hidden" style="height:50vh">
                                <iframe src="https://drive.google.com/file/d/13bpe4Yibm_iDwME5r8ppTO_t0DMxZrGb/preview" style="width:100%; height:650px;" frameborder="0"></iframe>
                            </div>
                            <div class="d-flex justify-content-center mt-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="CheckPDPA" id="CheckPDPA1" value="true">
                                    <label class="form-check-label" for="inlineRadio1">ยอมรับ</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="CheckPDPA" id="CheckPDPA2" value="false">
                                    <label class="form-check-label" for="inlineRadio2">ไม่ยอมรับ</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-primary col-sm-12 col-md-1 mt-3" disabled type="submit" id="confirm" name="confirm">ยืนยัน</button>
                    </div>
                </form>
            </div>
        </div>
        
        <script>
            function hover(){
                $("#confirm").hover(function(){
                    $("#confirm").addClass("animate__animated animate__pulse")
                },function(){
                    $("#confirm").removeClass("animate__animated animate__pulse")
                })
            }
            function chack(){
                $("#CheckPDPA1").on('click', function() {
                    $("#confirm").attr("disabled",false);
                })
                $("#CheckPDPA2").on('click', function() {
                    $("#confirm").attr("disabled",true);
                })
            }
          
            $(document).ready(function(){
                chack();
                hover();
            })
        </script>
    </body>
</html>
