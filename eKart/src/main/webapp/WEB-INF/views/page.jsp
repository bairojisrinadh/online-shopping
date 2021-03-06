<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="imagess" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>eKart - ${title}</title>
<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!-- Navigation -->
		<%-- <%@include file="./shared/navbar.jsp"%> --%>
		<c:import url="./shared/navbar.jsp"/>
		<!-- Page Content -->
		<div class="content">
			<!-- Loading Home Page -->
			<c:if test="${userClickHome == true}">
			<%-- <%@include file="home.jsp"%> --%>
			<c:import url="home.jsp"/>
			</c:if>

			<!-- Loading About Page -->
			<c:if test="${userClickAbout == true}">
			<%-- <%@include file="about.jsp"%> --%>
			<c:import url="about.jsp"/>
			</c:if>

			<!-- Loading Contact Page -->
			<c:if test="${userClickContact == true}">
				<%-- <%@include file="contact.jsp"%> --%>
				<c:import url="contact.jsp"/>
			</c:if>
			
			<!-- Loading Contact Page -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%-- <%@include file="contact.jsp"%> --%>
				<c:import url="listProducts.jsp"/>
			</c:if>
		</div>

		<!-- Footer -->
		<%-- <%@include file="./shared/footer.jsp"%> --%>
		<c:import url="./shared/footer.jsp"/>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/popper.min.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<!-- self coded Java Script -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>
