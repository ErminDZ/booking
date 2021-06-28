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
        <h1>Hello ${sessionScope.email} </h1>
       Her er en liste med alle studerende
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Navn</th>
                <th scope="col">Point</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="student" items="${requestScope.studentlist}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.email}</td>
                    <td>${student.points}</td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </jsp:body>

</t:genericpage>

