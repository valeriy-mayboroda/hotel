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
                </tr>
                <c:forEach items="${roomsList}" var="room">
                    <tr>
                        <td><c:out value="${room.id}"/></td>
                        <td><c:out value="${room.number}"/></td>
                        <td><c:out value="${room.category}"/></td>
                        <td><c:out value="${room.price}"/></td>
                        <td><a href="<c:url value='/rooms/edit/${room.id}'/>">Edit</a></td>
                        <td><a href="<c:url value='/rooms/remove/${room.id}'/>">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <h1>Add or edit room</h1>
        <c:url var="addAction" value="/rooms/add"/>
            <form:form action="${addAction}" commandName="room"><%-- commandName room будет отправлен формой и получен в (@ModelAttribute("room") Room room) --%>
                <table>
                    <c:if test="${!empty room.category}">
                        <tr>
                            <td>
                                <form:label path="id">
                                    <spring:message text="ID"/>
                                </form:label>
                            </td>
                            <td>
                                <form:input path="id" readonly="true" size="8" disabled="true"/>
                                <form:hidden path="id"/>
                            </td>
                        </tr>
                    </c:if>
                    <tr>
                        <td>
                            <form:label path="number">
                                <spring:message text="Number"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="number"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="category">
                                <spring:message text="Category"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="category"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="price">
                                <spring:message text="Price"/>
                            </form:label>
                        </td>
                        <td>
                             <form:input path="price"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <c:if test="${!empty room.category}">
                                <input type="submit" value="<spring:message text="Edit room"/>"/>
                            </c:if>
                            <c:if test="${empty room.category}">
                                <input type="submit" value="<spring:message text="Add room"/>"/>
                            </c:if>
                        </td>
                    </tr>
                </table>
            </form:form>
    </body>
</html>