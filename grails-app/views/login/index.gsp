<%--
  Created by IntelliJ IDEA.
  User: tolis overdriver
  Date: 23/6/2021
  Time: 8:59 μ.μ.
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

    </div>
</nav>
    <g:if test="${flash.error}">
        <div class="alert alert-danger" role="alert">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            ${flash.error}
        </div>
    </g:if>

<div class="container-fluid p-0">
    <section class="resume-section">
        <div class="resume-section-content">
            <form method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Όνομα χρήστη</label>
                    <input type="text" name="userName" class="form-control" id="exampleInputEmail1"
                           aria-describedby="emailHelp"
                           placeholder="Εισάγετε όνομα χρήστη" pattern="^[α-ωΑ-Ωά-ώa-zA-Z]+$" required>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Κωδικός</label>
                    <input type="password" name="pasword" class="form-control" id="exampleInputPassword1"
                           placeholder="Εισάγετε κωδικό" required>
                </div>
                <g:actionSubmit class="btn btn-primary btn-lg btn-block" value="Σύνδεση" contoller="login"
                                action="authentication"/>

            </form>

                <label for="exampleInputPassword1">Μήπως δεν έχετε εγγραφεί;</label>
            <g:link class="btn btn-primary btn-lg btn-block" controller="signUp" action="index">Εγγραφή</g:link>
        </div>
    </section>
</div>
</body>
</html>