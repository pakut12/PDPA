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
                    <div class="card border-primary mb-3 " >
                        <div class="card-header bg-primary text-light">Welcome</div>
                        <div class="card-body text-primary text-center">
                            <h5 class="card-title">Welcome To Admin</h5>  
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
                $("#homepage").addClass("active");
            });
        </script>
    </body>
</html>
