<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card mt-3"
				style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fa fa-user-friends fa-3x"></i>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${succMsg }</div>
							<c:remove var="succMsg" />
						</c:if>

						<h5>Add Jobs</h5>
					</div>

					<form action="add_job" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" required="required"
								class="form-control" name="title">
						</div>

						<div class="form-row">

							<div class="form-group col-md-4 mt-3">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Baroda">Baroda</option>
									<option value="Chandigarh">Chandigarh</option>
									<option value="Coimbatore">Coimbatore</option>
									<option value="Chennai">Chennai</option>
									<option value="Delhi-NCR">Delhi</option>
									<option value="Dhule">Dhule</option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Pune">Pune</option>
									<option value="Shirpur">Shirpur</option>
									
								</select>
							</div>
							<div class="form-group col-md-4 mt-3">
								<label>Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="category">
									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>

							<div class="form-group col-md-4 mt-3">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group mt-3">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>

						<button class="btn btn-success mt-3">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>