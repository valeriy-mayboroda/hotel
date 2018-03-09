<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Edit user</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../../users">Back to main menu</a>
        <br/>
            <f:form commandName="user" method="put" action="../../users/${user.id}">
                <table>
                    <tr>
                        <td>
                            <f:label path="id">
                                <spring:message text="ID"/>
                            </f:label>
                        </td>
                        <td>
                             <f:input path="id" readonly="true" size="8" disabled="true"/>
                             <f:hidden path="id"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <spring:message text="First_name"/>
                        </td>
                        <td>
                            <f:input path="first_name"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <spring:message text="Last_name"/>
                        </td>
                        <td>
                            <f:input path="last_name"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <spring:message text="Email"/>
                        </td>
                        <td>
                             <f:input path="email"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <spring:message text="Password"/>
                        </td>
                        <td>
                             <f:input path="password"/>
                        </td>
                    </tr>
                    <tr>
                         <td>
                              <spring:message text="Password_confirmation"/>
                         </td>
                         <td>
                              <f:input path="password_confirmation"/>
                         </td>
                    </tr>
                    <tr>
                         <td colspan="2">
                              <input type="submit" value="<spring:message text="Update user"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>