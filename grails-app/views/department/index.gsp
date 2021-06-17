<%--
  Created by IntelliJ IDEA.
  User: tolis overdriver
  Date: 17/6/2021
  Time: 12:41 π.μ.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body>table class="table">
<thead>
<tr>


    <th scope="col">name</th>

</tr>
</thead>
<tbody>
<g:each in="${Department}">
    <tr>

        <td>${it.department_name}</td>


    </tr>
</g:each>
<form>
    <div class="form-group">
        <label for="exampleInputEmail1">name</label>
        <input type="text" name="DepartmentName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
               placeholder="Enter name">
    </div>



        <g:actionSubmit value="SUBMIT" action="getAllDepartment"/>
</form>

</body>
</html>