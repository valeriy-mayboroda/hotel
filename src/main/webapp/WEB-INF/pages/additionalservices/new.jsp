<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Create new additional service</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../additionalservices">Back to main menu</a>
        <br/>
            <f:form commandName="additionalservice" method="POST" action="../additionalservices">
                <table>
                    <tr>
                        <td>
                            <spring:message text="Name"/>
                        </td>
                        <td>
                            <f:input path="name"/>
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
                              <input type="submit" value="<spring:message text="Create new additional service"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>