<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>User data</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../users">Back to main menu</a>
        <br/>
        <h1>User details</h1>
        <c:if test="${!empty user}">
            <table class="tg">
                <tr>
                    <th width="30">ID</th>
                    <th width="60">FIRST_NAME</th>
                    <th width="60">LAST_NAME</th>
                    <th width="80">EMAIL</th>
                    <th width="80">PASSWORD</th>
                    <th width="100">PASSWORD_CONFIRMATION</th>
                </tr>
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.first_name}"/></td>
                    <td><c:out value="${user.last_name}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.password}"/></td>
                    <td><c:out value="${user.password_confirmation}"/></td>
                </tr>
            </table>
        </c:if>
    </body>
</html>