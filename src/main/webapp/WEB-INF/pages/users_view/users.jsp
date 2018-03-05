<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="from" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Users list</title>
        <style type="text/css">
            .tg {
                border-collapse: collapse;
                border-spacing: 0;
                border-color: #ccc;
            }
            .tg td {
                font-family: Arial, sans-serif;
                font-size: 14px;
                padding: 10px 5 px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
                border-color: #ccc;
                color: #333;
                background-color: #fff;
            }
            .tg th {
                font-family: Arial, sans-serif;
                font-size: 14px;
                font-weight: normal;
                padding: 10px 5 px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
                border-color: #ccc;
                color: #333;
                background-color: #f0f0f0;
            }
        </style>
    </head>
    <body>
        <h3>Users list presents</h3>
        <br/>
        <a href="../../hotel">Back to main menu</a>
        <br/>
        <h1>Users list</h1>
        <c:if test="${!empty usersList}">
            <table class="tg">
                <tr>
                    <th width="20">ID</th>
                    <th width="50">FIRST_NAME</th>
                    <th width="50">LAST_NAME</th>
                    <th width="50">EMAIL</th>
                    <th width="50">PASSWORD</th>
                    <th width="80">PASSWORD_CONFIRMATION</th>
                    <th width="30">EDIT</th>
                    <th width="30">DELETE</th>
                    <th width="30">SHOW</th>
                </tr>
                <c:forEach items="${usersList}" var="user">
                    <tr>
                        <td><c:out value="${user.id}"/></td>
                        <td><c:out value="${user.first_name}"/></td>
                        <td><c:out value="${user.last_name}"/></td>
                        <td><c:out value="${user.email}"/></td>
                        <td><c:out value="${user.password}"/></td>
                        <td><c:out value="${user.password_confirmation}"/></td>
                        <td><a href="<c:url value='/users/${user.id}/edit'/>">Edit</a></td>
                        <td><a href="<c:url value='/users/${user.id}/remove'/>">Delete</a></td>
                        <td><a href="<c:url value='/users/${user.id}'/>">Show</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <br/>
            <a href="<c:url value='/users/create'/>">Click here to create a new user</a>
        <br/>
    </body>
</html>