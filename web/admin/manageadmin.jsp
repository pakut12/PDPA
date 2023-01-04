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
        <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">+ เพิ่มข้อมูล</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body text-center">
                        <div class="mb-3">
                            <label for="user" class="form-label">User</label>
                            <input type="text" class="form-control" id="user" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for="pass" class="form-label">Password</label>
                            <input type="pass" class="form-control" id="pass" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" placeholder="">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="save_admin">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 col-sm-12">
                    <div class="card border-primary mb-3" >
                        <div class="card-header bg-primary text-light">ManageAdmin</div>
                        <div class="card-body text-primary ">
                            <h3 class="text-center fw-bold">ManageAdmin</h3>
                            <div class="row">
                                <div class="text-end">
                                    <button class="btn btn-success btn-md" type="button" id="showmodal">+ เพิ่มข้อมูล</button>
                                </div>
                            </div>
                            
                            <div id="detailuser">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <%@ include file = "share/footer.jsp" %>
        </footer>
        <script>
            function addadmin(){
                $.ajax({
                    type:"post",
                    url:"../Admin",
                    data:{
                        type:"addadmin",
                        user:$("#user").val(),
                        pass:$("#pass").val(),
                        name:$("#name").val()
                    },
                    success:function(msg){
                        console.log(msg);
                        location.reload();
                    }
                });
            }
            function gettable(){
                $.ajax({
                    type:"post",
                    url:"../Admin",
                    data:{
                        type:"getdataadmin"
                    },
                    success:function(msg){
                        $("#detailuser").html(msg);
                        $("#mytable").DataTable({
                            scrollX: true,
                            dom: 'Bfrtip',
                            buttons: [
                                'excel', 'print'
                            ]
                        });
                    }
                });
            }
            function ModalAdd(){
                $('#myModal').modal('show');
            }
            
            $(document).ready(function(){
                $("#manageadmin").addClass("active");
                gettable();
                
                $("#showmodal").click(function(){
                    $('#myModal').modal('show');
                });
                $("#save_admin").click(function(){
                    addadmin();
                });
                
            });
        </script>
    </body>
</html>
