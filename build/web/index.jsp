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
        <style>
            .box {
                width: 120px;
                height: 140px;
                background-color: antiquewhite;
                border: solid 4px darkcyan;
            }
        </style>
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
        <div class="container mt-3" >
            <div class="d-flex justify-content-between mb-5">
                <div class=""><a href="index.jsp" ><img src="img/PDPA.jpg" class="img-fluid " style="height:15vh"></a></div>
                <div class=""><img src="img/qrcode1.jpg" class="img-fluid text-end" style="height:15vh"></div>
            </div>
            <form method="post" action="Confirm" id="myform">
                <div class="position-relative">
                    
                    <div class="card shadow-lg col-sm-12 col-md-12 mx-auto border-primary" id="mycard">
                        <div class="card-body">
                            <div class="overflow-hidden" style="height:43vh">
                                <iframe src="https://drive.google.com/file/d/13bpe4Yibm_iDwME5r8ppTO_t0DMxZrGb/preview" style="width:100%; height:650px;" frameborder="1"></iframe>
                            </div>
                            <div class="d-flex justify-content-center mt-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="CheckPDPA" id="CheckPDPA1" value="true">
                                    <label class="form-check-label" for="CheckPDPA1">ยอมรับ</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="CheckPDPA" id="CheckPDPA2" value="false">
                                    <label class="form-check-label" for="CheckPDPA2">ไม่ยอมรับ</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-primary  mt-3" disabled type="submit" id="confirm" name="confirm">ยืนยัน</button>
                    </div>
                </div>
                <br>
            </form>
        </div>
        <script>
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
            })
        </script>
    </body>
    <footer>
        <%@ include file = "share/footer.jsp" %>
    </footer>
</html>
