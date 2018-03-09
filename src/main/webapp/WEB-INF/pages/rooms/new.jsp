<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Create new room</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../rooms">Back to main menu</a>
        <br/>
            <f:form commandName="room" method="POST" action="../rooms">
                <table>
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
                              <input type="submit" value="<spring:message text="Create new room"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>