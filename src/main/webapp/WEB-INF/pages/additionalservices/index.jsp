<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Additional services list</title>
        <style>
            <%@include file="/WEB-INF/pages/stl/style.css"%>
        </style>
    </head>
    <body>
        <h3>Additional services list presents</h3>
        <br/>
        <a href="../../hotel">Back to main menu</a>
        <br/>
        <h1>Additional services list</h1>
        <c:if test="${!empty additionalservicesList}">
            <table class="tg">
                <tr>
                    <th width="30">ID</th>
                    <th width="60">NAME</th>
                    <th width="60">PRICE</th>
                    <th width="30">EDIT</th>
                    <th width="30">DELETE</th>
                    <th width="30">SHOW</th>
                </tr>
                <c:forEach items="${additionalservicesList}" var="additionalservice">
                    <tr>
                        <td><c:out value="${additionalservice.id}"/></td>
                        <td><c:out value="${additionalservice.name}"/></td>
                        <td><c:out value="${additionalservice.price}"/></td>
                        <td><a href="<c:url value='/additionalservices/${additionalservice.id}/edit'/>">Edit</a></td>
                        <td>
                            <f:form commandName="additionalservice" method="delete" action="${pageContext.request.contextPath}/additionalservices/${additionalservice.id}">
                                <input type="submit" value="<spring:message text="Delete"/>"/>
                            </f:form>
                        </td>
                        <td><a href="<c:url value='/additionalservices/${additionalservice.id}'/>">Show</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <br/>
            <a href="<c:url value='/additionalservices/create'/>">Click here to create a new additional service</a>
        <br/>
    </body>
</html>