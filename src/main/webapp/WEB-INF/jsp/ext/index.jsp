<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../../layout/taglib.jsp"%>

<!-- START THE FEATURETTES -->

<div class="row featurette">
	<div class="col-md-7">
		<h2 class="featurette-heading">
			<spring:message code="index.message1.title" />
			<br /> <span class="text-muted"> <spring:message
					code="index.message1.subtitle" /></span>
		</h2>
		<p class="lead">
			<spring:message code="index.message1.content" />
		</p>
	</div>
	<div class="col-md-5">
		<img class="featurette-image img-responsive center-block"
			data-src="holder.js/200x200/auto" src="/resources/need.jpg"
			alt="Generic placeholder image">
	</div>
</div>

<div class="row featurette">
	<div>
		<h2 class="featurette-heading">
			<spring:message code="index.message2.title" />
			<br /> <span class="text-muted"> <spring:message
					code="index.message2.subtitle" /></span>
		</h2>
		<p class="lead">
			<spring:message code="index.message2.content" />
		</p>
	</div>
</div>

<hr class="featurette-divider">

<!-- /END THE FEATURETTES -->


