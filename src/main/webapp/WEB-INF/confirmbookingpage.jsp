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

        <h5>...</h5>
        <p>
                ${requestScope}
        </p>

        <h5>...</h5>
        <p>
                ${requestScope}
        </p>

        <h5>...</h5>
        <p>
                ${requestScope}
        </p>

    </jsp:body>

</t:genericpage>

