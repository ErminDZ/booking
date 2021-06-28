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

        <form action="${pageContext.request.contextPath}/fc/confirmbookingpage" method="post">

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
                    <td> <select class="form-select mt-4" name="days">
                        <option>Antal dage</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select></td>
                    <td><button type="submit" class="mt-3 btn btn-success align-items-center">Book</button></td>
                </tr>
            </div>
        </div>
        </c:forEach>
        </tbody>
        </table>

        </form>


    </jsp:body>

</t:genericpage>
<!---
<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
    <label class="form-check-label" for="flexCheckDefault">
    </label></td>