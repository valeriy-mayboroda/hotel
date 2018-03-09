<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Rooms list</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
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
                    <th width="30">ID</th>
                    <th width="60">NUMBER</th>
                    <th width="60">CATEGORY</th>
                    <th width="60">PRICE</th>
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
                        <td>
                            <f:form commandName="room" method="delete" action="${pageContext.request.contextPath}/rooms/${room.id}">
                                <input type="submit" value="<spring:message text="Delete"/>"/>
                            </f:form>
                        </td>
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