<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Room data</title>
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
            <a href="../rooms">Back to main menu</a>
        <br/>
        <h1>Room details</h1>
        <c:if test="${!empty room}">
            <table class="tg">
                <tr>
                    <th width="50">ID</th>
                    <th width="50">NUMBER</th>
                    <th width="100">CATEGORY</th>
                    <th width="50">PRICE</th>
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