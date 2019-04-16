<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.kipa.javabootcamp.javaservlet.common.Constanta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="./jsp/parts/meta.jsp" %>
    <title>${ not empty page ? page.title : Constanta._APP_NAME }</title>
    <%@ include file="./jsp/parts/header.jsp" %>
</head>
<body>
<div class="ui text container kipa">
    <%@ include file="./jsp/parts/topmenu.jsp" %>
    <div class="ui clearing basic nopadding segment">
        <jsp:include page="./jsp/parts/breadcrumbs.jsp">
            <jsp:param name="position" value="left floated"/>
        </jsp:include>
        <c:if test="${not empty sessionScope.user}">
            <jsp:include page="./jsp/parts/account.jsp">
                <jsp:param name="position" value="right floated"/>
            </jsp:include>
        </c:if>
    </div>
    <jsp:include page="./jsp/parts/messages.jsp"/>
    <c:choose>
        <c:when test="${not empty page}">
            <jsp:include page="./jsp/${page.path}.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="./jsp/components/404.jsp"/>
        </c:otherwise>
    </c:choose>
</div>
<%@ include file="./jsp/parts/footer.jsp" %>
</body>
</html>