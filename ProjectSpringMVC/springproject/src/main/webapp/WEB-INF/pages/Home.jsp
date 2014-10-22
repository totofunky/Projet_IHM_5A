<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Spring MVC Agenda</title>
<!-- <meta content="width=device-width, initial-scale=1.0"> -->
<link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />

<link type="text/css" rel="stylesheet"
	href="/stylesheets/bootstrap/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="/stylesheets/bootstrap/css/styles.css" />
<link type="text/css" rel="stylesheet"
	href="/stylesheets/datepicker/css/datepicker.css" />

<mvc:resources mapping="/stylesheets" location="/stylesheets" />
<script type="text/javascript">
	
</script>
</head>
<body>

	<div id="page" class="group">

		<div id="header" class="group">

			<div class="group inner">

				<!-- START LOGO -->
				<div id="titre" class="group">
					<img src="/stylesheets/images/logo.gif" class="images_petit" />
				</div>
				<!-- END LOGO -->

				<div id="sidebar-header" class="group">
					<h3>
						Contact manager: ESIEA Student project <br> <br> <small>Antoine
							THORIN, Dimitri MICHEL</small>
					</h3>
				</div>
			</div>

		</div>
		<hr />
		<div align="center">
			<form role="form" action="searchContact" method="post"
				class="form-horizontal">
				<div class="form-group">
					<!-- 				<label class="col-lg-2 control-label" for="ID">Search:</label> -->
					<div class="col-lg-10">
						<input type="text" id="ID" name="id" placeholder="Search contacts"
							value="${idContact}">
						<!-- Button trigger modal -->
						<button class="btn btn-default" type="submit">Search</button>
					</div>

				</div>
			</form>
		</div>

		<table class="table table-striped">
			<CAPTION>
				<h2>Contacts List</h2>
			</CAPTION>
			<TR class="info">
				<th>ID</th>
				<TH>Name</TH>
				<TH>Surname</TH>
				<th>Email</th>
				<th>Date de naissance</th>
				<th>Adresse</th>
				<th>Option</th>
			</TR>
			<c:forEach var="contact" items="${listeContact}">
				<TR>
					<td><c:out value="${contact.id}" /></td>
					<td><c:out value="${contact.nom}" /></td>
					<td><c:out value="${contact.prenom}" /></td>
					<td><c:out value="${contact.email}" /></td>
					<td><c:out value="${contact.dateNaissance}"></c:out></td>
					<td><c:out
							value="Home adress: ${contact.adresse.numero}, ${contact.adresse.rue}, ${contact.adresse.codePostal}, ${contact.adresse.ville}"></c:out><br>
						<c:out
							value="Delivery address: ${contact.adresseLivraison.numliv} ${contact.adresseLivraison.rliv} ${contact.adresseLivraison.codePostliv} ${contact.adresseLivraison.villiv}"></c:out></td>
					<td><a href="deleteContact?id=${contact.id}" data-confirm="Are sure you want to delete ${contact.nom} ${contact.prenom} of contact manager?">delete</a> <a
						href="modifyContact?id=${contact.id}">modify</a></td>
				</TR>
			</c:forEach>
		</table>

		<!-- Button trigger modal -->
		<button class="btn btn-default" data-toggle="modal"
			data-target="#contact">Add new contact</button>

		<!-- Modal ajout contact-->
		<div id="contact" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="addContact" method="post" class="form-horizontal">
						<div class="modal-header">
							<h3 id="lol">Add new contact</h3>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="contact-name" class="col-lg-2 control-label">Name:</label>
								<div class="col-lg-10">
									<input type="text" id="contact-name"
										style="text-transform: uppercase" name="nom"
										placeholder="Enter name" required>*
								</div>
							</div>
							<div class="form-group">
								<label for="contact-surname" class="col-lg-2 control-label">Surname:</label>
								<div class="col-lg-10">
									<input type="text" id="contact-surname" name="prenom"
										placeholder="Enter surname" required>*
								</div>
							</div>
							<div class="form-group">
								<label for="contact-email" class="col-lg-2 control-label">Email:</label>
								<div class="col-lg-10">
									<input type="email" id="contact-email" name="email"
										placeholder="Enter email" required>*
								</div>
							</div>
							<div class="form-group">
								<label for="contact-email" class="col-lg-2 control-label">Birthday:</label>
								<div class="col-lg-10">
									<div class="hero-unit">
										<input type="text" placeholder="click to show datepicker"
											id="contact-date" class="datepicker" name="dateNaissance"
											required>
									</div>
								</div>
							</div>

							<br>
							<h4>Adresse</h4>
							<div class="form-group">
								<label for="contact-numero" class="col-lg-2 control-label">Numero:</label>
								<div class="col-lg-10">
									<input type="number" id="contact-numero" name="numero"
										placeholder="Enter adress number">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-street" class="col-lg-2 control-label">Street:</label>
								<div class="col-lg-10">
									<input type="text" id="contact-street" name="rue"
										placeholder="Enter adress street">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-postal" class="col-lg-2 control-label">Postal
									Code:</label>
								<div class="col-lg-10">
									<input type="number" id="contact-postal" name="codePostal"
										placeholder="Enter adress postal">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-city" class="col-lg-2 control-label">City:</label>
								<div class="col-lg-10">
									<input type="text" id="contact-city" name="ville"
										placeholder="Enter city">
								</div>
							</div>

							<h4>Delivery address</h4>
							<div class="form-group">
								<label for="contact-numero1" class="col-lg-2 control-label">Numero:</label>
								<div class="col-lg-10">
									<input type="number" id="contact-numero1" name="numliv"
										placeholder="Enter adress number">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-street1" class="col-lg-2 control-label">Street:</label>
								<div class="col-lg-10">
									<input type="text" id="contact-street1" name="rliv"
										placeholder="Enter adress street">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-postal1" class="col-lg-2 control-label">Postal
									Code:</label>
								<div class="col-lg-10">
									<input type="number" id="contact-postal1" name="codePostliv"
										placeholder="Enter adress postal">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-city1" class="col-lg-2 control-label">City:</label>
								<div class="col-lg-10">
									<input type="text" id="contact-city1" name="villiv"
										placeholder="Enter city">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
							<button type="submit" class="btn btn-primary">Add
								contact</button>
						</div>
					</form>
				</div>
			</div>
		</div>


		<!-- Latest compiled and minified JavaScript -->
		<script src="/stylesheets/jQerry.js" type="text/javascript"></script>
		<script src="/stylesheets/datepicker/js/bootstrap-datepicker.js"
			type="text/javascript"></script>
		<script src="/stylesheets/bootstrap/js/bootstrap.min.js"
			type="text/javascript"></script>
		<script type="text/javascript">
			// When the document is ready
			$(document).ready(function() {

				$('#contact-date').datepicker({
					format : "dd/mm/yyyy"
				});

			});
			$(function() {
			    $('a[data-confirm]').click(function(ev) {
			        var href = $(this).attr('href');
			        
			        if (!$('#dataConfirmModal').length) {
			            $('body').append('<div id="dataConfirmModal" class="modal" role="dialog" aria-labelledby="dataConfirmLabel" aria-hidden="true"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="dataConfirmLabel">Confirmation</h3></div><div class="modal-body"></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">No</button><a class="btn btn-danger" id="dataConfirmOK">Yes</a></div></div></div></div>');
			        }
			        $('#dataConfirmModal').find('.modal-body').text($(this).attr('data-confirm'));
			        $('#dataConfirmOK').attr('href', href);
			        $('#dataConfirmModal').modal({show:true});
			        
			        return false;
			    });
			});
			$(document).on("click", ".alert", function(e) {
				bootbox.confirm("Are you sure?", function(result) {
					Example.show("Confirm result: " + result);
				});
			});
		</script>
	</div>
</body>
</html>