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
													<label for="simpleinput">Tên *</label>
													<input type="text" name="name" class="form-control">
												</div>

												<div class="form-group md-3">
													<label for="simple-select2">Danh mục *</label>
													<select class="form-control select2" id="simple-select2" name="id_category">
														<c:forEach var="item" items="${ categorys }">
															<option value="${ item.id }">${ item.name }</option>
														</c:forEach>
													</select>
												</div>

												<label for="basic-url">Giá tiền *</label>
												<div class="input-group mb-3">
													<input type="text" class="form-control" id="basic-url" name="price"
														aria-describedby="basic-addon2">
													<div class="input-group-prepend">
														<span class="input-group-text" id="basic-addon2">₫</span>
													</div>
												</div>

												<div class="form-group mb-3">
													<label for="example-fileinput">Hình ảnh *</label> <input type="file"
														name="image" class="form-control-file">
												</div>
											</div>
										</div>

										<div class="card shadow mb-4">
											<div class="card-body">
											<p class="mb-3"><strong>Loại sản phẩm</strong></p>
												<div class="custom-control custom-switch mb-2">
													<input type="checkbox" class="custom-control-input"
														id="customSwitch1" name="new_product">
													<label class="custom-control-label" for="customSwitch1">Mới</label>
												</div>
												<div class="custom-control custom-switch mb-2">
													<input type="checkbox" class="custom-control-input"
														id="customSwitch2" name="highlight">
													<label class="custom-control-label" for="customSwitch2">Nổi bật</label>
												</div>
												<div class="custom-control custom-switch mb-2">
													<input type="checkbox" class="custom-control-input"
														id="customSwitch3" name="sale">
													<label class="custom-control-label" for="customSwitch3">Giảm giá</label>
												</div>
											</div>
										</div>

										<div class="card shadow mb-4">
											<div class="card-body">
												<div class="form-group mb-3">
													<strong>Mô tả</strong></p>
													<textarea class="form-control" name="description"
														rows="4"></textarea>
												</div>

												<button type="submit" class="btn mb-3 btn-primary"><span class="fe fe-plus fe-16 mr-2"></span>Thêm sản phẩm</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</main>
		</body>