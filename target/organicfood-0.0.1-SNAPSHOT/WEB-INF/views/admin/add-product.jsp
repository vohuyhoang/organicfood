<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<body>
			<main role="main" class="main-content">
				<div class="container-fluid">
					<div class="row justify-content-center">
						<div class="col-12">
							<h2 class="page-title">Thêm mới sản phẩm</h2>
							<form method="post" action="add-product" enctype="multipart/form-data">

								<div class="row mb-4">
									<div class="col-md-12">
										<div class="card shadow mb-4">
											<div class="card-body">
												<div class="form-group mb-3">
													<label for="simpleinput">Tên</label> <input type="text" name="name"
														class="form-control">
												</div>

												<div class="form-group md-3">
													<label for="simple-select2">Danh mục</label>
													<select class="form-control select2" id="simple-select2">
														<c:forEach var="item" items="${ categorys }">
															<option value="${ item.id }">${ item.name }</option>
														</c:forEach>
													</select>
												</div>

												<div class="input-group mb-3">
													<label for="simpleinput">Giá tiền</label>
													<input type="text" name="price" class="form-control" aria-describedby="basic-addon2">
													<div class="input-group-append">
														<span class="input-group-text"
															id="basic-addon2">₫</span>
													</div>
												</div>

												<label for="basic-url">Giá tiền</label>
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<span class="input-group-text"
															id="basic-addon2">₫</span>
													</div>
													<input type="text" class="form-control" id="basic-url"
														aria-describedby="basic-addon2">
												</div>
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<span class="input-group-text">$</span>
													</div>
													<input type="text" class="form-control"
														aria-label="Amount (to the nearest dollar)">
													<div class="input-group-append">
														<span class="input-group-text">.00</span>
													</div>
												</div>
												<div class="input-group mb-3">
													<input type="text" class="form-control" placeholder="Button addons"
														aria-label="Recipient's username"
														aria-describedby="button-addon2">
													<div class="input-group-append">
														<button class="btn btn-primary" type="button"
															id="button-addon2">Button</button>
													</div>
												</div>
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<button class="btn btn-secondary" type="button">Button</button>
													</div>
													<select class="custom-select" id="inputGroupSelect03"
														aria-label="Example select with button addon">
														<option selected>Choose...</option>
														<option value="1">One</option>
														<option value="2">Two</option>
														<option value="3">Three</option>
													</select>
												</div>
											</div>
										</div>
										<div class="card shadow mb-4">
											<div class="card-body">
												<p class="mb-3"><strong>Switches</strong></p>
												<div class="custom-control custom-switch">
													<input type="checkbox" class="custom-control-input"
														id="customSwitch1">
													<label class="custom-control-label" for="customSwitch1">Toggle this
														switch element</label>
												</div>
												<div class="custom-control custom-switch mb-2">
													<input type="checkbox" class="custom-control-input" disabled
														id="customSwitch2">
													<label class="custom-control-label" for="customSwitch2">Disabled
														switch element</label>
												</div>
											</div>
										</div>
										<div class="card shadow mb-4">
											<div class="card-body">
												<h5 class="card-title">Mô tả</h5>
												<div id="editor" style="min-height:100px;"></div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</main>

			<script>
				var editor = document.getElementById('editor');
				if (editor) {
					var toolbarOptions = [
						[
							{
								'font': []
							}],
						[
							{
								'header': [1, 2, 3, 4, 5, 6, false]
							}],
						['bold', 'italic', 'underline', 'strike'],
						['blockquote', 'code-block'],
						[
							{
								'header': 1
							},
							{
								'header': 2
							}],
						[
							{
								'list': 'ordered'
							},
							{
								'list': 'bullet'
							}],
						[
							{
								'script': 'sub'
							},
							{
								'script': 'super'
							}],
						[
							{
								'indent': '-1'
							},
							{
								'indent': '+1'
							}], // outdent/indent
						[
							{
								'direction': 'rtl'
							}], // text direction
						[
							{
								'color': []
							},
							{
								'background': []
							}], // dropdown with defaults from theme
						[
							{
								'align': []
							}],
						['clean'] // remove formatting button
					];
					var quill = new Quill(editor,
						{
							modules:
							{
								toolbar: toolbarOptions
							},
							theme: 'snow'
						});
				}
				// Example starter JavaScript for disabling form submissions if there are invalid fields
				(function () {
					'use strict';
					window.addEventListener('load', function () {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms, function (form) {
							form.addEventListener('submit', function (event) {
								if (form.checkValidity() === false) {
									event.preventDefault();
									event.stopPropagation();
								}
								form.classList.add('was-validated');
							}, false);
						});
					}, false);
				})();
			</script>

		</body>

		<!-- <div class="card shadow mb-4">

			<div class="card-header">
				<strong class="card-title">Thông tin sản phẩm</strong>
			</div>

			<div class="card-body">
				<div class="row">
					<div class="col-md-12">
						<div class="form-group mb-6">
							<label for="simpleinput">Tên</label> <input type="text" name="name" class="form-control">
						</div>
						<div class="form-group mb-6">
							<label for="simpleinput">Giá</label> <input type="text" name="price" class="form-control">
						</div>
						<div class="form-group mb-6">
							<label for="example-select">Danh mục</label> <select class="form-control"
								name="id_category">
								<c:forEach var="item" items="${ categorys }">
									<option value="${ item.id }">${ item.name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group mb-6">
							<label for="example-textarea">Mô tả</label>
							<textarea class="form-control" name="description" rows="4"></textarea>
						</div>
						<div class="form-group mb-6">
							<label for="example-fileinput">Hình ảnh sản phẩm</label> <input type="file" name="image"
								class="form-control-file">
						</div>
					</div>
					<div class="col-md-12">
						<div class="card shadow mb-6">
							<div class="card-header">
								<strong>Hình ảnh chi tiết sản phẩm</strong>
							</div>
							<div class="card-body">
								<div id="drag-drop-area"></div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<button type="submit" class="btn mb-2 btn-primary">Thêm sản phẩm</button>
					</div>
				</div>
			</div>
		</div> -->