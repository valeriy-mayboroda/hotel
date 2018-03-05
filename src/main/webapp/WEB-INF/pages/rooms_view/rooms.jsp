<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="from" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Rooms list</title>
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
        <h3>Rooms list presents</h3>
        <br/>
        <a href="../../hotel">Back to main menu</a>
        <br/>
        <h1>Rooms list</h1>
        <c:if test="${!empty roomsList}">
            <table class="tg">
                <tr>
                    <th width="50">ID</th>
                    <th width="50">NUMBER</th>
                    <th width="100">CATEGORY</th>
                    <th width="50">PRICE</th>
                    <th width="30">EDIT</th>
                    <th width="30">DELETE</th>
                    <th width="30">SHOW</th>
                </tr>
                <c:forEach items="${roomsList}" var="room">
                    <tr>
                        <td><c:out value="${room.id}"/></td>
                        <td><c:out value="${room.number}"/></td>
                        <td><c:out value="${room.category}"/></td>
                        <td><c:out value="${room.price}"/></td>
                        <td><a href="<c:url value='/rooms/${room.id}/edit'/>">Edit</a></td>
                        <td><a href="<c:url value='/rooms/${room.id}/remove'/>">Delete</a></td>
                        <td><a href="<c:url value='/rooms/${room.id}'/>">Show</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <br/>
            <a href="<c:url value='/rooms/create'/>">Click here to create a new room</a>
        <br/>
    </body>
</html>