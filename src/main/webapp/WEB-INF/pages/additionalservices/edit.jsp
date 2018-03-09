<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Edit additional service</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../../additionalservices">Back to main menu</a>
        <br/>
            <f:form commandName="additionalservice" method="put" action="../../additionalservices/${additionalservice.id}">
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
                              <input type="submit" value="<spring:message text="Update additional service"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>