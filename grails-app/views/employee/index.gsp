<%--
  Created by IntelliJ IDEA.
  User: tolis overdriver
  Date: 15/6/2021
  Time: 11:49 μ.μ.
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
            <li class="nav-item"><g:link controller="employee" action="index" params="[offset: 0, max: 5]"
                                         class="nav-link js-scroll-trigger">Εργαζόμενοι</g:link></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/employee/add">Εισαγωγή εργαζομένου</a>
            </li>
            <li class="nav-item"><g:link controller="department" action="index" params="[offset: 0, max: 5]"
                                         class="nav-link js-scroll-trigger">Τμήματα</g:link></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/department/add">Εισαγωγή τμήματος</a></li>
        </ul>
    </div>
</nav>

<div class="container-fluid p-0">
    <section class="resume-section">
        <div class="resume-section-content">
            <h3 class="resume-section-content">Πινακας εργαζομένων</h3>
            <g:if test="${flash.error}">
                <div class="alert alert-danger" role="alert">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    ${flash.error}
                </div>
            </g:if>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Επώνυμο</th>
                    <th scope="col">Όνομα</th>
                    <th scope="col">Ημερομηνία γέννησης</th>
                    <th scope="col">Τμήμα</th>
                    <th scope="col">Ενέργειες</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${Employee}">
                    <tr>

                        <td>${it.last_name}</td>
                        <td>${it.first_name}</td>
                        <td>${it.date_of_birth}</td>
                        <td>${it.department_name}</td>
                        <td><g:link class="btn btn-success" controller="employee" action="editEmployee"
                                    id="${it.employee_id}">
                            Επεξεργασία
                        </g:link>
                        <g:link class="btn btn-danger" controller="employee" action="delete"
                                onclick="return confirm('Ειστε σίγουρος οτι θέλετε να διαγράψετε τον εργαζόμενο?')"
                                id="${it.employee_id}">
                            Διαγραφή
                        </g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div aria-label="Page navigation example">
                <g:paginate controller="employee" action="index" total="${pageEmployee}"/>
            </div>
        </div>
    </section>
</div>
</body>
</html>