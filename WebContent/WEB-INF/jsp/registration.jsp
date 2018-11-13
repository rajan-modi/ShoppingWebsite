<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<div class="container ">
			<div class="row">
				<form:form commandName="user" action="register">
					<!--- For Name---->
					<div class="col-sm-12">
						<div class="row">
							<div class="col-xs-4">
								<label class="firstname">First Name :</label>
							</div>
							<div class="col-xs-8">
								<form:input path="userName" placeholder="Enter your User Name"
									class="form-control " />
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-xs-4">
								<label class="pass">Password :</label>
							</div>
							<div class="col-xs-8">
								<form:input path="userPassword"
									placeholder="Enter your Password" class="form-control" />
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-xs-4">
								<label class="lastname">Address :</label>
							</div>
							<div class="col-xs-8">
								<form:input path="userAddress" placeholder="Enter your Address"
									class="form-control last" />
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-xs-4">
								<label class="mail">Email :</label>
							</div>
							<div class="col-xs-8">
								<form:input path="userEmail" placeholder="Enter your email"
									class="form-control" />
							</div>
						</div>
					</div>
					<input type="submit" value="Submit" />
				</form:form>
			</div>
		</div>
	</div>
</body>