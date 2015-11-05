<%--
  Created by IntelliJ IDEA.
  User: Sintelti
  Date: 03/11/2015
  Time: 06:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>busqueda</title>
</head>

<body>
<g:each in="${personas}" var="persona">
    <tr>
        <td>${persona.nombre}</td>
        <td>${persona.apellidoPaterno}</td>
        <td>${persona.apellidoMaterno}</td>
        <td>${persona.fechaDeNacimiento}</td>

    </tr>
</body>
</html>