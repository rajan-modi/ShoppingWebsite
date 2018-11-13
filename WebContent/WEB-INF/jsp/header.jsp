<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!--  <div class="d-flex flex-row-reverse bd-highlight">
	<div class ="p-2 bd-highlight"> -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light ">
			<a class="navbar-brand" href='<c:url value="/" />'>Home</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownProductCategory" role="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Categories </a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownProductCategory">
							<a class="dropdown-item" href='<c:url value="/products?category=electronics"/>'>Electronics</a> <a
								class="dropdown-item" href='<c:url value="/products?category=footwear"/>'>Footwear</a> <a
								class="dropdown-item" href='<c:url value="/products?category=clothing" />'>Clothing</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownLink"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> User </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownLink">
							<a class="dropdown-item" href="#">Login</a> 
							<a class="dropdown-item" href='<c:url value="/registration"/>'>SignUp</a>
							<a class="dropdown-item" href="#">Admin</a>
						</div></li>
				</ul>
			</div>
		</nav>
	<!-- </div>
</div> -->
