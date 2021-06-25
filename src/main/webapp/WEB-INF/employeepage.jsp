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

        <a href="${pageContext.request.contextPath}/fc/showstudents">Vis alle studerende</a>
        hej

        <div class="d-flex justify-content-center mt-5">
            <br>
            <a href="${pageContext.request.contextPath}/fc/addnewstudentpage" type="button" class="btn btn-primary btn-lg ms-5">tilføj ny elev</a>
        </div>

    </jsp:body>
</t:genericpage>
