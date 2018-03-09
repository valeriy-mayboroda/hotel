<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Booking data</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../bookings">Back to main menu</a>
        <br/>
        <h1>Booking details</h1>
        <c:if test="${!empty booking}">
            <table class="tg">
                <tr>
                    <th width="30">ID</th>
                    <th width="60">USER_ID</th>
                    <th width="60">ROOM_ID</th>
                    <th width="60">DATE_START</th>
                    <th width="60">DATE_END</th>
                </tr>
                <tr>
                    <td><c:out value="${booking.id}"/></td>
                    <td><c:out value="${booking.user_id}"/></td>
                    <td><c:out value="${booking.room_id}"/></td>
                    <td><c:out value="${booking.date_start}"/></td>
                    <td><c:out value="${booking.date_end}"/></td>
                </tr>
            </table>
        </c:if>
    </body>
</html>