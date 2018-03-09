<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Room data</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../rooms">Back to main menu</a>
        <br/>
        <h1>Room details</h1>
        <c:if test="${!empty room}">
            <table class="tg">
                <tr>
                    <th width="30">ID</th>
                    <th width="60">NUMBER</th>
                    <th width="60">CATEGORY</th>
                    <th width="60">PRICE</th>
                </tr>
                <tr>
                    <td><c:out value="${room.id}"/></td>
                    <td><c:out value="${room.number}"/></td>
                    <td><c:out value="${room.category}"/></td>
                    <td><c:out value="${room.price}"/></td>
                </tr>
            </table>
        </c:if>
    </body>
</html>