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
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body>
<table class="table">
    <thead>
    <tr>

        <th scope="col">id</th>
        <th scope="col">last name</th>
        <th scope="col">first name </th>
        <th scope="col">is active</th>
        <th scope="col">date of birth </th>
        <th scope="col">actions</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${Employee}">
        <tr>

            <td>${it.employee_id}</td>
            <td>${it.last_name}</td>
            <td>${it.first_name}</td>
            <td>${it.is_active}</td>
            <td>${it.date_of_birth}</td>
            <td><g:link controller="employee" action="delete" id="${it.employee_id}">
                <button type="button" class="btn btn-danger">delete</button>
            </g:link> </td>

        </tr>
    </g:each>
    <form>
        <div class="form-group">
            <label for="exampleInputEmail1">last name</label>
            <input type="text" name="lastName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter last name">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">first name</label>
            <input type="text" name="firstName" class="form-control" id="exampleInputPassword1" placeholder="enter first name">
        </div>
        <div class="form-check">
            <input type="checkbox" name="isActive" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">is active</label>
            <div class="form-group">
                <label for="exampleInputPassword1">date of birth</label>
                <input type="date" name="dateOFBirth" class="form-control" id="exampleInputPassword1" placeholder="enter date of birth">
            </div>

            <g:actionSubmit value="SUBMIT" action="insertE" />
    </form>

    </tbody>
</table>
</body>
</html>