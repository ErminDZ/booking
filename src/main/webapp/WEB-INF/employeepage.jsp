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

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="${pageContext.request.contextPath}/fc/showstudents" type="button" class="btn btn-primary btn-lg ms-5">Vis alle studerende</a>
        </div>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="${pageContext.request.contextPath}/fc/addnewstudentpage" type="button" class="btn btn-primary btn-lg ms-5">tilføj ny elev</a>
        </div>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="${pageContext.request.contextPath}/fc/showequipments" type="button" class="btn btn-primary btn-lg ms-5">se alle udstyr</a>
        </div>

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="${pageContext.request.contextPath}/fc/bookeditemslist" type="button" class="btn btn-primary btn-lg ms-5">se alle booked udstyr</a>
        </div>

    </jsp:body>
</t:genericpage>
