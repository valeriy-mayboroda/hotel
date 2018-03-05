<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Edit room</title>
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
            <a href="../../rooms">Back to main menu</a>
        <br/>
            <f:form commandName="room" method="POST" action=""><%-- commandName room будет отправлен формой и получен в (@ModelAttribute("room") Room room) --%>
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
                            <spring:message text="Number"/>
                        </td>
                        <td>
                            <f:input path="number"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <spring:message text="Category"/>
                        </td>
                        <td>
                            <f:input path="category"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <spring:message text="Price"/>
                        </td>
                        <td>
                             <f:input path="price"/>
                        </td>
                    </tr>
                    <tr>
                         <td colspan="2">
                              <input type="submit" value="<spring:message text="Update room"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>