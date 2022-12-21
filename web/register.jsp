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
                      
                    </div>
                    
                </div>
                <div class="text-center">
                    <button class="btn btn-primary col-sm-12 col-md-1 mt-3" disabled type="submit" id="confirm" name="confirm">ยืนยัน</button>
                </div>
            </form>
        </div>
        <script>
           
            $(document).ready(function(){
               
            })
        </script>
    </body>
</html>
