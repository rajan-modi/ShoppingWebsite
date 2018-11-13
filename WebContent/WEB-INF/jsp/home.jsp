<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>	

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Website</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- <link rel="stylesheet" href="/WEB-INF/resource/bootstrap/css/main.css">	 -->


</head>
<body>
	<div class="container-fluid">
		<div class="logo" align="center">
			<%@ include file="/WEB-INF/jsp/logo.jsp"%>
		</div>
		<div class="header">
			<%@ include file="/WEB-INF/jsp/header.jsp"%>
		</div>

		<div class="container" id="productTable" >
			<table class="table table-hover" id="productList" align="center" border="1">
				<thead>
					<tr>
						<th align="center">Product Id</th>
						<th align="center">Category</th>
						<th align="center">Product Name</th>
						<th align="center">Products Price</th>
						<th align="center">Description</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${productsList}" var="prod" varStatus="rowIndex">
						<td align="center">${prod.productId}</td>
						<td align="center">${prod.productCategory}</td>
						<td align="center">${prod.productName}</td>
						<td align="center">${prod.productPrice}</td>
						<td align="center" style="width: 180px">${prod.productDescription}</td>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>