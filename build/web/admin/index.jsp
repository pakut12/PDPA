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
        <div class="container">
            <div class="card mt-5 shadow col-sm-12 col-md-6 mx-auto border-primary">
                <div class="card-header bg-primary text-light">
                    Admin login 
                </div>
                <div class="card-body text-primary">
                    <div class="mb-3">
                        <label for="Username" class="form-label">Username : </label>
                        <input type="text" class="form-control form-control-sm" id="Username" placeholder="Username">
                    </div>
                    <div class="mb-3">
                        <label for="Password" class="form-label">Password : </label>
                        <input type="password" class="form-control form-control-sm" id="Password" placeholder="Password">
                    </div>
                    <div class="mb-3 text-center">
                        <button class="btn btn-sm btn-primary " type="button" id="login">Login</button>
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
                                
                                setTimeout(function(){
                                    window.location.replace(jsdecode.link);
                                }, 1000);
                            }else if(jsdecode.status == "false"){
                                Swal.fire({
                                    icon:"error",
                                    text:"Login Error",
                                    title:"Login"
                                })
                                setTimeout(function(){
                                    window.location.replace(jsdecode.link);
                                }, 1000);
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
