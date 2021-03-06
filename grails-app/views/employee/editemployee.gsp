<%--
  Created by IntelliJ IDEA.
  User: tolis overdriver
  Date: 18/6/2021
  Time: 10:26 μ.μ.
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
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>


<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <div class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top ml-4 text-white" style="width: 15rem">
            <div class="card-header">
                Συνδεθήκατε ως: ${session.user}
            </div>
        </div>
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
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/department/add">Εισαγωγή τμήματος</a>
                </li>
            </ul>
        </div>

        <div class="navbar navbar-expand-lg navbar-dark bg-primary ml-4 " style="width: 15rem">
            <div class="card-header">
                <g:link controller="login" action="logout"
                        class="nav-link js-scroll-trigger text-white">Αποσύνδεση</g:link>
            </div>
        </div>
    </nav>

    <div class="container-fluid p-0">
        <section class="resume-section">
            <div class="resume-section-content">
                <h3 class="resume-section-content">Φόρμα επεξεργασίας εργαζομένου</h3>

                <form method="post">
                    <g:if test="${flash.error}">
                        <div class="alert alert-danger" role="alert">
                            ${flash.error}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    </g:if>
                    <div class="form-group">
                        <label for="lastName">Επώνυμο</label>
                        <input type="text" name="lastName" class="form-control" id="lastName"
                               aria-describedby="emailHelp"
                               value=${employeeById.last_name}  pattern="^[α-ωΑ-Ωά-ώa-zA-Z]+$" required>
                    </div>

                    <div class="form-group">
                        <label for="firstName">Όνομα</label>
                        <input type="text" name="firstName" class="form-control" id="firstName"
                               value=${employeeById.first_name} pattern="^[α-ωΑ-Ωά-ώa-zA-Z]+$" required>
                    </div>

                    <div class="form-group">
                        <label for="datepicker">Ημερομηνία γέννησης</label>
                        <input id="datepicker" name="dateOFBirth" value="${employeeById.date_of_birth}" class="form-control" required/>
                        <script>
                            $('#datepicker').datepicker({
                                uiLibrary: 'bootstrap4'
                            });
                        </script>
                    </div>

                    <div class="input-group mb-3">
                        <label class="input-group-text" for="inputGroupSelect01">Τμήμα</label>
                        <select name="departmentId" class="form-select" id="inputGroupSelect01">
                            <option value=${employeeById.department_id} selected>
                                ${employeeById.department_name}
                            </option>
                            <g:each in="${department}">
                                <g:if test="${employeeById.department_id != it.department_id}">
                                    <option value= ${it.department_id}>
                                        ${it.department_name}
                                    </option>
                                </g:if>
                            </g:each>
                        </select>
                    </div>
                    <g:actionSubmit class="btn btn-primary btn-lg btn-block" value="Αποθήκευση" action="update"/>
                </form>
            </div>
        </section>
    </div>
</body>
</html>