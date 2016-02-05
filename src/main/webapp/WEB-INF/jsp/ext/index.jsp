<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/taglib.jsp"%>
<fmt:setBundle basename="messages" />
<style>
h2 {
color:green;
}
</style>
<div id="pre-div">
	<div id="loader"></div>
</div>
<!--/. PRELOADER END -->
<div id="home">
	<div class="overlay">
		<div class="container">
			<div class="row ">
				<div class="col-lg-9 col-md-9 head-text">
					<h1 id="divDisp" style="color:yellow;">
						<spring:message code="index.message.main" />
					</h1>
					<span> <i class="fa fa-lightbulb-o "></i> <spring:message
							code="index.message1" />
					</span> <span> <i class="fa fa-lightbulb-o"></i><spring:message
							code="index.message2" />
					</span> <span> <i class="fa fa-lightbulb-o"></i><spring:message
							code="index.message3" />
					</span> <span> <i class="fa fa-lightbulb-o"></i><spring:message
							code="index.message4" />
					</span> <span> <i class="fa fa-lightbulb-o"></i><spring:message
							code="index.message5" />
					</span>
				</div>
				<div class="col-lg-3 col-md-3">
					<div class="div-trans text-center">
						<h3>GET IN</h3>
						<h2>
							<span style="color: green;">MMMINR</span>
						</h2>
						<div class="col-lg-12 col-md-12 col-sm-12">
							<security:authorize access="! isAuthenticated()">

								<form action="<spring:url value="/j_spring_security_check" />"
									method="POST">
									<div class="form-group">
										<input type="text" name="j_username" class="form-control"
											required="required" placeholder="Username">
									</div>
									<div class="form-group">
										<input type="password" name="j_password" class="form-control"
											required="required" placeholder="Password">
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-success btn-block btn-lg">SIGN
											IN</button>
									</div>
								</form>
							</security:authorize>

							<security:authorize access="isAuthenticated()">
								<div class="form-group">
									<a href='<spring:url value="/register.html"/>'
										class="btn btn-success btn-block btn-lg">REGISTER A USER</a>
								</div>
							</security:authorize>
						</div>

					</div>
				</div>
			</div>

		</div>

	</div>


</div>
<!--./ HOME SECTION END -->
<div id="help">
	<div class="overlay">
		<div class="container">
			<div class="row text-center">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
					<h2 data-wow-delay="0.5s" class="wow rollIn animated">
						<strong><spring:message code="index.para1.heading" /></strong>
					</h2>
					<p class="sub-head"><spring:message code="index.para1" /></p>
				</div>
			</div>
			<div class="row ">

				<div class="col-lg-6 col-lg-offset-1  col-md-6 col-md-offset-1">

					<iframe width="492" height="277"
						src='<spring:message code="index.youtube.link" />' frameborder="0"
						allowfullscreen></iframe>
				</div>

				<div class="col-lg-4 col-md-4" style="padding-top: 50px;">

					<div class="media wow rotateIn animated" data-wow-delay="0.6s">
						<div class="pull-left">
							<i class="fa fa-star-o fa-4x  "></i>
						</div>
						<div class="media-body">
							<h3 class="media-heading"><spring:message code="index.para2.heading"/></h3>
							<p><spring:message code="index.para2"/></p>

						</div>
					</div>


				</div>
			</div>


		</div>
	</div>

</div>
<!--./ HELP SECTION END -->