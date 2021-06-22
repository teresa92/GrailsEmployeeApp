<%--
  Created by IntelliJ IDEA.
  User: tolis overdriver
  Date: 19/6/2021
  Time: 6:34 μ.μ.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:javascript src="jquery-3.3.1.min.js"/>
    <asset:javascript src="popper.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="style.css"/>

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <span class="d-none d-lg-block navbar-brand js-scroll-trigger">
        <g:img class="img-fluid img-profile rounded-circle mx-auto mb-2" dir="images" file="knowledge.png"
               alt="knowledge-icon"/>
    </span>

    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/">Εργαζόμενοι</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/employee/add">Εισαγωγή εργαζομένου</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/department">Τμήματα</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/department/add">Εισαγωγή τμήματος</a></li>
        </ul>
    </div>
</nav>

<div class="container-fluid p-0">
    <section class="resume-section">
        <div class="resume-section-content">
            <h3 class="resume-section-content">Φόρμα επεξεργασίας τμήματος</h3>
            <g:if test= "${flash.error}" >
                <div class="alert alert-danger" role="alert">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    ${flash.error}
                </div>
            </g:if>
            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">Όνομα τμήματος</label>
                    <input type="text" name="DepartmentName" class="form-control" id="exampleInputEmail1"
                           aria-describedby="emailHelp" pattern="^[α-ωΑ-Ωά-ώa-zA-Z]+$"
                           value="${departmentById.department_name}" required>
                </div>
                <g:actionSubmit class="btn btn-primary btn-lg btn-block" value="Αποθήκευση" controller="department" action="update"/>
            </form>
        </div>
    </section>
</div>
</body>
</html>