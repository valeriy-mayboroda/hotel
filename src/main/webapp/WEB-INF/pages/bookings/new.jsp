<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Create new booking</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../bookings">Back to main menu</a>
        <br/>
            <f:form commandName="booking" method="POST" action="../bookings">
                <table>
                    <tr>
                        <td>
                            <spring:message text="User_id"/>
                        </td>
                        <td>
                            <f:input path="user_id"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <spring:message text="Room_id"/>
                        </td>
                        <td>
                            <f:input path="room_id"/>
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
                              <input type="submit" value="<spring:message text="Create new booking"/>"/>
                         </td>
                    </tr>
                </table>
            </f:form>
    </body>
</html>