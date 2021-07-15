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
        You are now logged in as a Admin of our wonderful site.
        <form action="${pageContext.request.contextPath}/fc/bookeditemslist" method="post">
        <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Antal dage</th>
            <th scope="col">Dato</th>
            <th scope="col">Status</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="booking" items="${requestScope.bookinglist}">
            <tr>
                <td>${booking.days}</td>
                <td>${booking.booking_date}</td>
                <td>${booking.booking_status}</td>
                <td><button type="submit" class="mt-3 btn btn-success align-items-center" name="booking" value="${booking.booking_status}">Change status</button></td>
            </tr>
        </c:forEach>

    </jsp:body>
</t:genericpage>
