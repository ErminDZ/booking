<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Customer Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <table class="table table-striped" var="showPoints" items="${requestScope.showPoints}">
        <thead>
        <tr>
            <th scope="col">points</th>

        </tr>
        </thead>
        <tbody>
            <tr>
                <td>${sessionScope.user.points}</td>
            </tr>

    </jsp:body>

</t:genericpage>

