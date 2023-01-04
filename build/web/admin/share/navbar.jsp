<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="main.jsp">Admin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="main.jsp" id="homepage"><i class="bi bi-house-door"></i> Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="managedatauser.jsp" id="managedatauser"><i class="bi bi-people"></i> ManageDataUser</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="manageadmin.jsp" id="manageadmin"><i class="bi bi-people"></i> ManageAdmin</a>
                </li>
            </ul>
            <div class="d-flex">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle active"
                           href="#"
                           id="navbarDropdown"
                           role="button"
                           data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <i class="bi bi-person-badge"></i>
                            K. <%=request.getSession().getAttribute("statusname")%>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end " aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item  text-center text-danger " href="../Admin?type=logout">
                                    <i class="bi bi-door-closed"></i> ออกจากระบบ
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                
            </div>
        </div>
    </div>
</nav>
<%
            String status = (String) request.getSession().getAttribute("statuslogin");
            if (status == null) {
                getServletContext().getRequestDispatcher("/admin/index.jsp").forward(request, response);
            }
%>
