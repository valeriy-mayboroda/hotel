<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Bookings list</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <h3>Bookings list presents</h3>
        <br/>
        <a href="../../hotel">Back to main menu</a>
        <br/>
        <h1>Bookings list</h1>
        <c:if test="${!empty bookingsList}">
            <table class="tg">
                <tr>
                    <th width="30">ID</th>
                    <th width="60">USER_FIRST_NAME</th>
                    <th width="60">ROOM_NUMBER</th>
                    <th width="60">DATE_START</th>
                    <th width="60">DATE_END</th>
                    <th width="30">EDIT</th>
                    <th width="30">DELETE</th>
                    <th width="30">SHOW</th>
                </tr>
                <c:forEach items="${bookingsList}" var="booking">
                    <tr>
                        <td><c:out value="${booking.id}"/></td>
                        <td><c:out value="${booking.user.first_name}"/></td>
                        <td><c:out value="${booking.room.number}"/></td>
                        <td><c:out value="${booking.date_start}"/></td>
                        <td><c:out value="${booking.date_end}"/></td>
                        <td><a href="<c:url value='/bookings/${booking.id}/edit'/>">Edit</a></td>
                        <td>
                            <f:form commandName="booking" method="delete" action="${pageContext.request.contextPath}/bookings/${booking.id}">
                                <input type="submit" value="<spring:message text="Delete"/>"/>
                            </f:form>
                        </td>
                        <td><a href="<c:url value='/bookings/${booking.id}'/>">Show</a></td>
                    </tr>
                    <c:forEach items="${booking.additionalServices}" var="additionalService">
                        <tr>
                            <td><c:out value="${additionalService.name}"/></td>
                            <td><c:out value="${additionalService.price}"/></td>
                        </tr>
                    </c:forEach>
                </c:forEach>
            </table>
        </c:if>
        <br/>
            <a href="<c:url value='/bookings/create'/>">Click here to create a new booking</a>
        <br/>
    </body>
</html>