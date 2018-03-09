<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Users list</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
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
                    <th width="30">ID</th>
                    <th width="60">FIRST_NAME</th>
                    <th width="60">LAST_NAME</th>
                    <th width="80">EMAIL</th>
                    <th width="80">PASSWORD</th>
                    <th width="100">PASSWORD_CONFIRMATION</th>
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
                        <td>
                            <f:form commandName="user" method="delete" action="${pageContext.request.contextPath}/users/${user.id}">
                                <input type="submit" value="<spring:message text="DELETE"/>"/>
                            </f:form>
                        </td>
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