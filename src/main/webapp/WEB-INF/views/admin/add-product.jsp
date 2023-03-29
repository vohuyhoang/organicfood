<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<main role="main" class="main-content">
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-12">
					<h2 class="page-title">Thêm mới sản phẩm</h2>
					<div class="card shadow mb-4">
						<div class="card-header">
							<strong class="card-title">Thông tin sản phẩm</strong>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group mb-6">
										<label for="simpleinput">Tên</label> <input type="text"
											id="simpleinput" class="form-control">
									</div>
									<div class="form-group mb-6">
										<label for="simpleinput">Giá</label> <input type="text"
											id="simpleinput" class="form-control">
									</div>
									<div class="form-group mb-6">
										<label for="example-select">Danh mục</label> <select
											class="form-control" id="example-select">
											<c:forEach var="item" items="${ categorys }">
												<option>${ item.name }</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group mb-6">
										<label for="example-textarea">Mô tả</label>
										<textarea class="form-control" id="example-textarea" rows="4"></textarea>
									</div>
									<div class="form-group mb-6">
										<label for="example-fileinput">Hình ảnh</label>
										<div id="image-input-container">
											<input type="file" name="images[]" class="form-control-file">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .col-12 -->
			</div>
			<!-- .row -->
		</div>
		<!-- .container-fluid -->
		<div class="modal fade modal-notif modal-slide" tabindex="-1"
			role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="list-group list-group-flush my-n3">
							<div class="list-group-item bg-transparent">
								<div class="row align-items-center">
									<div class="col-auto">
										<span class="fe fe-box fe-24"></span>
									</div>
									<div class="col">
										<small><strong>Package has uploaded
												successfull</strong></small>
										<div class="my-0 text-muted small">Package is zipped and
											uploaded</div>
										<small class="badge badge-pill badge-light text-muted">1m
											ago</small>
									</div>
								</div>
							</div>
							<div class="list-group-item bg-transparent">
								<div class="row align-items-center">
									<div class="col-auto">
										<span class="fe fe-download fe-24"></span>
									</div>
									<div class="col">
										<small><strong>Widgets are updated
												successfull</strong></small>
										<div class="my-0 text-muted small">Just create new
											layout Index, form, table</div>
										<small class="badge badge-pill badge-light text-muted">2m
											ago</small>
									</div>
								</div>
							</div>
							<div class="list-group-item bg-transparent">
								<div class="row align-items-center">
									<div class="col-auto">
										<span class="fe fe-inbox fe-24"></span>
									</div>
									<div class="col">
										<small><strong>Notifications have been sent</strong></small>
										<div class="my-0 text-muted small">Fusce dapibus, tellus
											ac cursus commodo</div>
										<small class="badge badge-pill badge-light text-muted">30m
											ago</small>
									</div>
								</div>
								<!-- / .row -->
							</div>
							<div class="list-group-item bg-transparent">
								<div class="row align-items-center">
									<div class="col-auto">
										<span class="fe fe-link fe-24"></span>
									</div>
									<div class="col">
										<small><strong>Link was attached to menu</strong></small>
										<div class="my-0 text-muted small">New layout has been
											attached to the menu</div>
										<small class="badge badge-pill badge-light text-muted">1h
											ago</small>
									</div>
								</div>
							</div>
							<!-- / .row -->
						</div>
						<!-- / .list-group -->
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary btn-block"
							data-dismiss="modal">Clear All</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade modal-shortcut modal-slide" tabindex="-1"
			role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="defaultModalLabel">Shortcuts</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body px-5">
						<div class="row align-items-center">
							<div class="col-6 text-center">
								<div class="squircle bg-success justify-content-center">
									<i class="fe fe-cpu fe-32 align-self-center text-white"></i>
								</div>
								<p>Control area</p>
							</div>
							<div class="col-6 text-center">
								<div class="squircle bg-primary justify-content-center">
									<i class="fe fe-activity fe-32 align-self-center text-white"></i>
								</div>
								<p>Activity</p>
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col-6 text-center">
								<div class="squircle bg-primary justify-content-center">
									<i class="fe fe-droplet fe-32 align-self-center text-white"></i>
								</div>
								<p>Droplet</p>
							</div>
							<div class="col-6 text-center">
								<div class="squircle bg-primary justify-content-center">
									<i
										class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
								</div>
								<p>Upload</p>
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col-6 text-center">
								<div class="squircle bg-primary justify-content-center">
									<i class="fe fe-users fe-32 align-self-center text-white"></i>
								</div>
								<p>Users</p>
							</div>
							<div class="col-6 text-center">
								<div class="squircle bg-primary justify-content-center">
									<i class="fe fe-settings fe-32 align-self-center text-white"></i>
								</div>
								<p>Settings</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script>
		var container = document.getElementById("image-input-container");

		function addImageInput() {
			var newInput = document.createElement("input");
			newInput.type = "file";
			newInput.name = "images[]";
			newInput.classList.add("form-control-file");
			container.appendChild(newInput);

			newInput.addEventListener("change", function(event) {
				if (event.target.value == "") {
					container.removeChild(newInput);
				} else {
					addImageInput();
				}
			});
		}

		var input = container.querySelector("input[type='file']");
		input.addEventListener("change", function(event) {
			addImageInput();
		});
	</script>
</body>