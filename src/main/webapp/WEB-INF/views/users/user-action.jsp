<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>${titlePage}</h1>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 ">
				<div class="x_panel">

					<div class="x_content">
						<br />
						<form:form modelAttribute="modelForm"
							cssClass="form-horizontal form-label-left"
							servletRelativeAction="/user/save" method="POST"
							enctype="multipart/form-data">
							<form:hidden path="id" />
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="cateId">Role <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 ">
									<form:select path="roleID" cssClass="form-control"
										disabled="${viewOnly}">
										<form:options items="${mapRole}" />
									</form:select>
									<div class="has-error">
										<form:errors path="roleID" cssClass="help-block"></form:errors>
									</div>
									<%-- <c:otherwise>
											<form:input path="category.name" disabled="true" cssClass="form-control col-md-7 col-xs-12"/>
										</c:otherwise> --%>
								</div>
							</div>

							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="name">Full Name <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 ">
									<form:input path="name"
										cssClass="form-control"
										disabled="${viewOnly}" />
									<div class="has-error">
										<form:errors path="name" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div>
							<div class="item form-group">
								<label for="description"
									class="col-form-label col-md-3 col-sm-3 label-align">Email</label>
								<div class="col-md-6 col-sm-6 ">
									<form:input path="email"
										cssClass="form-control"
										disabled="${viewOnly}" />
									<div class="has-error">
										<form:errors path="email" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div>
							<div class="item form-group">
								<label for="code"
									class="col-form-label col-md-3 col-sm-3 label-align">UserName</label>
								<div class="col-md-6 col-sm-6 ">
									<form:input path="userName"
										cssClass="form-control"
										disabled="${viewOnly}" />
									<div class="has-error">
										<form:errors path="userName" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div>
							<c:if test="${editMode==null}">
								<div class="item form-group">
									<label for="name"
										class="col-form-label col-md-3 col-sm-3 label-align">Password
									</label>
									<div class="col-md-6 col-sm-6 ">
										<form:input path="password" cssClass="form-control "
											type="password" />
										<div class="has-error text-danger">
											<form:errors path="password" cssClass="help-block"></form:errors>
										</div>
									</div>
								</div>
							</c:if>
							<div class="ln_solid"></div>
							<div class="item form-group">
								<div class="col-md-6 col-sm-6 offset-md-3">
									<button class="btn btn-primary" type="button"
										onclick="cancel();">Cancel</button>
									<c:if test="${!viewOnly}">
										<button class="btn btn-primary" type="reset">Reset</button>
										<button type="submit" class="btn btn-success">Submit</button>
									</c:if>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#userlistId').addClass('current-page').siblings()
						.removeClass('current-page');
				var parent = $('#userlistId').parents('li');
				parent.addClass('active').siblings().removeClass('active');
				$('#userlistId').parents().show();
			});
	function cancel() {
		window.location.href = '<c:url value="/user/list"/>'
	}
</script>