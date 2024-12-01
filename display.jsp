<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User List</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<body>
    <h1>Users</h1>
    <table border="1" class="table">
        <thead>
            <tr>
                <th>id</th>
                <th> Name</th>
                <th>Lastname</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Gender</th>
                <th>password</th>
                <th>Conpass</th>
                <th>Action<th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${oppo}">
                <tr>
                <td>${user.id}</td>
                    <td>${user.fname}</td>
                    <td>${user.lname}</td>
                    <td>${user.email}</td>
                    <td>${user.mobile}</td>
                    <td>${user.gender}</td>
                    <td>${user.password}</td>
                    <td>${user.conpass}</td>
                    <td>
                    
                    <a href="Editpage/${user.id}" class="btn btn-outline-success">Edit</a> |
                    <a href="deletepage/${user.id}" class="btn btn-outline-danger">Delete</a>
                    </td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>