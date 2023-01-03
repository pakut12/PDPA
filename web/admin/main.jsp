<%-- 
    Document   : index
    Created on : 3 ม.ค. 2566, 11:56:43
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
        <%@ include file = "share/navbar.jsp" %>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 col-sm-12">
                    <div class="card text-white bg-primary mb-3">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <%@ include file = "share/footer.jsp" %>
        </footer>
        <script>
            $(document).ready(function(){
                function login(){
                    $.ajax({
                        type:"post",
                        url:"../Admin",
                        data:{
                            type:"login",
                            user:$("#Username").val(),
                            pass:$("#Password").val()
                        },
                        success:function(msg){
                            var jsdecode = JSON.parse(msg);
                            if(jsdecode.status == "true"){
                                Swal.fire({
                                    icon:"success",
                                    text:"Login Success",
                                    title:"Login"
                                })
                            }else if(jsdecode.status == "false"){
                                Swal.fire({
                                    icon:"error",
                                    text:"Login Error",
                                    title:"Login"
                                })
                            }
                        }
                    });
                }
                $("#login").click(function(){
                    login();
                });
            });
        </script>
    </body>
</html>
