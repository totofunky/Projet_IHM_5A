<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />

<link type="text/css" rel="stylesheet"
	href="/stylesheets/bootstrap/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="/stylesheets/bootstrap/css/styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modify Contact</title>

</head>
<body>

	<div align="center">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="update" method="post" class="form-horizontal">
					<div class="modal-header">
						<h3 id="lol">Modify contact</h3>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="contact-id" class="col-lg-2 control-label">${contact.id}</label>
							<div class="col-lg-10">
								<input id="contact-id" type="hidden" name="id"
									value="${contact.id}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-name" class="col-lg-2 control-label">Name:</label>
							<div class="col-lg-10">
								<input type="text" id="contact-name"
									style="text-transform: uppercase" name="nom"
									value="${contact.nom}" required>*
							</div>
						</div>
						<div class="form-group">
							<label for="contact-surname" class="col-lg-2 control-label">Surname:</label>
							<div class="col-lg-10">
								<input type="text" id="contact-surname" name="prenom"
									value="${contact.prenom}" required>*
							</div>
						</div>
						<div class="form-group">
							<label for="contact-email" class="col-lg-2 control-label">Email:</label>
							<div class="col-lg-10">
								<input type="email" id="contact-email" name="email"
									value="${contact.email}" required>*
							</div>
						</div>
						<div class="form-group">
							<label for="contact-email" class="col-lg-2 control-label">Birthday:</label>
							<div class="col-lg-10">
								<div class="hero-unit">
									<input type="text" value="${contact.dateNaissance}"
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
									value="${contact.adresse.numero}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-street" class="col-lg-2 control-label">Street:</label>
							<div class="col-lg-10">
								<input type="text" id="contact-street" name="rue"
									value="${contact.adresse.rue}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-postal" class="col-lg-2 control-label">Postal
								Code:</label>
							<div class="col-lg-10">
								<input type="number" id="contact-postal" name="codePostal"
									value="${contact.adresse.codePostal}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-city" class="col-lg-2 control-label">City:</label>
							<div class="col-lg-10">
								<input type="text" id="contact-city" name="ville"
									value="${contact.adresse.ville}">
							</div>
						</div>
						<br>
						<h4>Delivery address</h4>

						<div class="form-group">
							<label for="contact-numero" class="col-lg-2 control-label">Numero:</label>
							<div class="col-lg-10">
								<input type="number" id="contact-numero" name="numliv"
									value="${contact.adresseLivraison.numliv}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-street" class="col-lg-2 control-label">Street:</label>
							<div class="col-lg-10">
								<input type="text" id="contact-street" name="rliv"
									value="${contact.adresseLivraison.rliv}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-postal" class="col-lg-2 control-label">Postal
								Code:</label>
							<div class="col-lg-10">
								<input type="number" id="contact-postal" name="codePostliv"
									value="${contact.adresseLivraison.codePostliv}">
							</div>
						</div>
						<div class="form-group">
							<label for="contact-city" class="col-lg-2 control-label">City:</label>
							<div class="col-lg-10">
								<input type="text" id="contact-city" name="villiv"
									value="${contact.adresseLivraison.villiv}">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Save Modify</button>
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
	</script>
</body>
</html>