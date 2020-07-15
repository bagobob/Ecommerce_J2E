<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Admin</title>
  <link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->

	<%@include file="/header.jsp" %>

<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="blog">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Admin Dashboard</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Admin Dashboard</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->



  <!--================Blog Area =================-->
	<section class="blog_area single-post-area py-80px section-margin--small">
			<div class="container">
					<div class="row">
					
							<div class="col-lg-6 posts-list">
									<div class="single-post row">
											
											<div class="col-lg-3  col-md-3">
													<div class="blog_info text-right">
															<div class="post_tag">
																	<a href="#">Food,</a>
																	<a class="active" href="#">Technology,</a>
																	<a href="#">Politics,</a>
																	<a href="#">Lifestyle</a>
															</div>
													</div>
											</div>
											<div class="col-lg-9 col-md-9 blog_details">
													<h2>Astronomy Binoculars A Great Alternative</h2>
													<div class="col-lg-2 col-md-6 col-sm-6">
						
					</div>
									<div class="row">
														
						<c:forEach items="${ sessionScope.products }" var="mapProducts">
          
            <div class="card text-center card-product">
              <div class="card-product__img thumbnail">
              <%-- On ne construit et affiche un lien vers l'image que si elle existe. --%>
                        <c:if test="${ !empty mapProducts.value.linkPhotoAvant }"> 
                            <c:set var="image" value="${ mapProducts.value.linkPhotoAvant}" scope="session" />
                <img class="img-thumbnail" src="./img/product/${ image }" alt="" width="100" height="50" />
                </c:if>  
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p><c:out value="${ mapProducts.value.category }"/></p>
                <h4 class="card-product__title"><a href="single-product.html"><c:out value="${ mapProducts.value.name }"></c:out></a></h4>
                <p class="card-product__price">$<c:out value="${ mapProducts.value.price }"></c:out></p>
              </div>
            </div>
       
            </c:forEach>
						 </div>					</div>
											
									</div>
									
							</div>
							<div class="col-lg-6">
									<div class="blog_right_sidebar">
											<aside class="single_sidebar_widget search_widget">
													<div class="input-group">
															<input type="text" class="form-control" placeholder="Search Posts">
															<span class="input-group-btn">
																	<button class="btn btn-default" type="button">
																			<i class="lnr lnr-magnifier"></i>
																	</button>
															</span>
													</div>
													<!-- /input-group -->
													<div class="br"></div>
											</aside>
											<aside class="single_sidebar_widget author_widget">
													<img class="author_img rounded-circle" src="img/blog/author.png" alt="">
													<h4>Charlie Barber</h4>
													<p>Senior blog writer</p>
													<div class="social_icon">
                              <a href="#">
                                  <i class="fab fa-facebook-f"></i>
                              </a>
                              <a href="#">
                                  <i class="fab fa-twitter"></i>
                              </a>
                              <a href="#">
                                  <i class="fab fa-github"></i>
                              </a>
                              <a href="#">
                                <i class="fab fa-behance"></i>
                              </a>
                          </div>
													<p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should
															have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits
															detractors.
													</p>
													<div class="br"></div>
											</aside>
											
											<aside class="single_sidebar_widget post_category_widget">
														<div class="comment-form">
											<h4>Leave a Reply</h4>
											<form>
													<div class="form-group form-inline">
															<div class="form-group col-lg-6 col-md-6 name">
																	<input type="text" class="form-control" id="name" placeholder="Enter Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'">
															</div>
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<div class="form-group">
															<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
													</div>
													<a href="#" class="button button-postComment button--active">Post Comment</a>
											</form>
									</div>
											</aside>
											
									</div>
							</div>
					</div>
			</div>
	</section>
	<!--================Blog Area =================-->
  

 

 <!--================ Start footer Area  =================-->	
		<%@include file="/footer.jsp" %>
	<!--================ End footer Area  =================-->

