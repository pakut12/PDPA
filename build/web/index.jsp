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
        <div class="container mt-5">
            <div class="text-center h2 mb-3 text-primary"><b>PDPA</b></div>
            <form method="post" action="Confirm" id="myform">
                <div class="card shadow-lg col-sm-12 col-md-12 mx-auto border-primary" id="mycard">
                    <div class="card-body overflow-auto " style="height:40vh">
                        <%
            for (int x = 0; x < 100; x++) {
                out.print("adasd");
                out.print("<br>");
            }
                        %>
                        <hr>
                        <div class="d-flex justify-content-center mt-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="true" id="CheckPDPA" name="CheckPDPA">
                                <label class="form-check-label" for="defaultCheck1">
                                    รับทราบ
                                </label>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="text-center">
                    <button class="btn btn-primary col-sm-12 col-md-1 mt-3" disabled type="submit" id="confirm" name="confirm">ยืนยัน</button>
                </div>
            </form>
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
                $("#CheckPDPA").on('change', function() {
                    if ($(this).is(':checked')) {
                        $("#confirm").attr("disabled",false);
                    } else {
                        $("#confirm").attr("disabled",true);
                    }
                })
            }
            function confirm(){
                if($('#CheckPDPA').is(':checked')){
                    Swal.fire({
                        title:"เรียบร้อย",
                        icon:"success",
                        text:"ยืนยันเรียบร้อย"
                    })
                }else{
                    Swal.fire({
                        title:"ผิดพลาด",
                        icon:"error",
                        text:"กรุณากดปุ่มยืนยัน"
                    })
                }
            }
            $(document).ready(function(){
                chack();
                hover();
                $("#confirm").click(function(){
                    confirm();
                });
            })
        </script>
    </body>
</html>
