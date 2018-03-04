<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
    <head>
        <title>User data</title>
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
        <br/>
            <a href="../users">Back to main menu</a>
        <br/>
        <h1>User details</h1>
        <c:if test="${!empty user}">
            <table class="tg">
                <tr>
                    <th width="20">ID</th>
                    <th width="50">FIRST_NAME</th>
                    <th width="50">LAST_NAME</th>
                    <th width="50">EMAIL</th>
                    <th width="50">PASSWORD</th>
                    <th width="80">PASSWORD_CONFIRMATION</th>
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