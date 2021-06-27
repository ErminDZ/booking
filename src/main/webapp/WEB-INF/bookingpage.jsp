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

        <form action="${pageContext.request.contextPath}/fc/" method="post">

        <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">navn</th>
            <th scope="col">type</th>
            <th scope="col">beskrivelse</th>
            <th scope="col">rum nr.</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="item" items="${requestScope.equipmentlist}">
        <div class="d-flex align-items-center">
            <div class="flex-grow-3 ms-5 form">
                <tr>
                    <td>${item.itemname}</td>
                    <td>${item.type}</td>
                    <td>${item.description}</td>
                    <td>${item.roomnumber}</td>
                    <td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                        </label></td>
                </tr>
            </div>
        </div>
        </c:forEach>
        </tbody>
        </table>

        <select class="form-select mt-4" name="days">
            <option>Antal dage</option>
            <option text="1">1 dag</option>
            <option text="3">3 dag</option>
            <option text="7">1 uge</option>
            <option text="14">2 uger</option>
        </select>

        <button type="submit" class="mt-3 btn btn-success float-end">Bekræft</button>
        <br>

    </jsp:body>

</t:genericpage>
