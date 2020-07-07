<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Register</title>
	<link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->

	<%@include file="/includes/header.jsp" %>

<!--================ End Header Menu Area =================-->


 <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
               <li class="breadcrumb-item"><a href="<c:url value="/index.jsp"/>" >Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Register</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  <!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>Already have an account?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="<c:url value="/login"/>" >Login Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner register_form_inner">
						<h3>Create an account</h3>
						<form class="row login_form" action="<c:url value="/register"/>" id="register_form" method="post" >
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Name'" required>
								<span class="erreur">${form.erreurs['name'] }</span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="firstName" name="firstName" placeholder="FirstName" onfocus="this.placeholder = ''" onblur="this.placeholder = 'FirstName'" required>
								<span class="erreur">${form.erreurs['firstName'] }</span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="street" name="street" placeholder="Street" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Street'" required>
								<span class="erreur">${form.erreurs['street'] }</span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="town" name="town" placeholder="Town" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Town'" required>
								<span class="erreur">${form.erreurs['town'] }</span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="postal" name="postal" placeholder="Postal Code" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Postal Code'" required>
								<span class="erreur">${form.erreurs['postal'] }</span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="num_tel" name="num_tel" placeholder="Phone Number " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'" required>
								<span class="erreur">${form.erreurs['num_tel'] }</span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" required>
								<span class="erreur">${form.erreurs['email'] }</span>
              				</div>
              				<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required>
								<span class="erreur">${form.erreurs['password'] }</span>
              				</div>
              				<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'" required>
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="button button-register w-100">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->


 <!--================ Start footer Area  =================-->	
		<%@include file="/includes/footer.jsp" %>
	<!--================ End footer Area  =================-->