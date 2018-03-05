<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Edit user</title>
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
            <a href="../../users">Back to main menu</a>
        <br/>
            <f:form commandName="user" method="POST" action=""><%-- commandName user будет отправлен формой и получен в (@ModelAttribute("user") User user) --%>
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