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
                </tr>
                <c:forEach items="${usersList}" var="user">
                    <tr>
                        <td><c:out value="${user.id}"/></td>
                        <td><c:out value="${user.first_name}"/></td>
                        <td><c:out value="${user.last_name}"/></td>
                        <td><c:out value="${user.email}"/></td>
                        <td><c:out value="${user.password}"/></td>
                        <td><c:out value="${user.password_confirmation}"/></td>
                        <td><a href="<c:url value='/users/edit/${user.id}'/>">Edit</a></td>
                        <td><a href="<c:url value='/users/remove/${user.id}'/>">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <h1>Add or edit user</h1>
        <c:url var="addAction" value="/users/add"/>
            <form:form action="${addAction}" commandName="user"><%-- commandName user будет отправлен формой и получен в (@ModelAttribute("user") User user) --%>
                <table>
                    <c:if test="${!empty user.first_name}">
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
                            <form:label path="first_name">
                                <spring:message text="First_name"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="first_name"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="last_name">
                                <spring:message text="Last_name"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="last_name"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="email">
                                <spring:message text="Email"/>
                            </form:label>
                        </td>
                        <td>
                             <form:input path="email"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">
                                <spring:message text="Password"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="password"/>
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <form:label path="password_confirmation">
                                <spring:message text="Password_confirmation"/>
                            </form:label>
                         </td>
                         <td>
                            <form:input path="password_confirmation"/>
                         </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <c:if test="${!empty user.first_name}">
                                <input type="submit" value="<spring:message text="Edit user"/>"/>
                            </c:if>
                            <c:if test="${empty user.first_name}">
                                <input type="submit" value="<spring:message text="Add user"/>"/>
                            </c:if>
                        </td>
                    </tr>
                </table>
            </form:form>
    </body>
</html>