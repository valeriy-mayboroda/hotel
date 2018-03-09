<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Additional service data</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <br/>
            <a href="../additionalservices">Back to main menu</a>
        <br/>
        <h1>Additional service details</h1>
        <c:if test="${!empty additionalservice}">
            <table class="tg">
                <tr>
                    <th width="30">ID</th>
                    <th width="60">NAME</th>
                    <th width="60">PRICE</th>
                </tr>
                <tr>
                    <td><c:out value="${additionalservice.id}"/></td>
                    <td><c:out value="${additionalservice.name}"/></td>
                    <td><c:out value="${additionalservice.price}"/></td>
                </tr>
            </table>
        </c:if>
    </body>
</html>