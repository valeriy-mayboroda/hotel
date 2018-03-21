<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Edit booking</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../../bookings">Back to main menu</a>
        <br/>
            <f:form commandName="booking" method="put" action="../../bookings/${booking.id}">
                <table>
                    <tr>
                        <td>
                            <f:label path="id">
                                <spring:message text="Id"/>
                            </f:label>
                        </td>
                        <td>
                             <f:input path="id" readonly="true" size="8" disabled="true"/>
                             <f:hidden path="id"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <spring:message text="User_id"/>
                        </td>
                        <td>
                            <f:select path="user_id">
                                <f:options items="${usersList}" itemValue="id" itemLabel="first_name"/>
                            </f:select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <spring:message text="Room_id"/>
                        </td>
                        <td>
                            <f:select path="room_id">
                                <f:options items="${roomsList}" itemValue="id" itemLabel="number"/>
                            </f:select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <spring:message text="Date_start"/>
                        </td>
                        <td>
                             <f:input path="date_start"/>
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <spring:message text="Date_end"/>
                         </td>
                         <td>
                            <f:input path="date_end"/>
                         </td>
                    </tr>
                    <tr>
                         <td colspan="2">
                              <input type="submit" value="<spring:message text="Update booking"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>