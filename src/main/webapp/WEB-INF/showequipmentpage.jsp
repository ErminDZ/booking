<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Employee Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Her er en liste med alt udstyr
        <table class="table table-striped">
        <c:forEach var="item" items="${requestScope.equipmentlist}">
            <tr>
                <td>${item.itemid}</td>
                <td>${item.itemname}</td>
                <td>${item.description}</td>
                <td>${item.roomnumber}</td>
                <td>${item.type}</td>
            </tr>

        </c:forEach>

    </jsp:body>
</t:genericpage>
