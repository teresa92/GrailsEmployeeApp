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
        <div class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top ml-4 text-white" style="width: 15rem">
            <div class="card-header">
                Συνδεθήκατε ως: ${session.user}
            </div>
        </div>
        <span class="navbar-brand js-scroll-trigger"><g:img class="img-fluid img-profile rounded-circle mx-auto mb-2"
                                                            dir="images" file="knowledge.png"
                                                            alt="knowledge-icon"/></span>

        <div class="collapse navbar-collapse">
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
                <h3 class="resume-section-content">Πινακας τμημάτων</h3>
                <g:if test="${flash.error}">
                    <div class="alert alert-danger" role="alert">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        ${flash.error}
                    </div>
                </g:if>
                <table class="table">
                    <thead>
                    <tr>

                        <th scope="col">Όνομα</th>
                        <th scope="col">Ενέργειες</th>

                    </tr>
                    </thead>
                    <tbody>

                    <g:each in="${Department}">
                        <tr>
                            <td>${it.department_name}</td>
                            <td>
                                <g:link class="btn btn-success" controller="department" action="edit"
                                        id="${it.department_id}">
                                    Επεξεργασία
                                </g:link>
                                <g:link class="btn btn-danger" controller="department" action="delete"
                                        id="${it.department_id}"
                                        onclick="return confirm('Ειστε σίγουρος οτι θέλετε να διαγράψετε αυτό το τμημα?')">
                                    Διαγραφή
                                </g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>

                <div aria-label="Page navigation example">
                    <g:paginate controller="department" action="index" total="${pageDEpartment}"/>
                </div>
            </div>
            %{--            <nav aria-label="Page navigation example">--}%
            %{--                <ul class="pagination">--}%
            %{--                    <g:each in="${Department}">--}%
            %{--                    <li class="page-item">--}%
            %{--                        <a class="page-link" href="#" aria-label="Previous">--}%
            %{--                            <span aria-hidden="true">${pageDEpartment}</span>--}%
            %{--                            <span class="sr-only">Previous</span>--}%
            %{--                        </a>--}%
            %{--                    </li>--}%
            %{--                    </g:each>--}%
            %{--                </ul>--}%
            %{--            </nav>--}%
    </div>

</section>
</div>
</body>
</html>