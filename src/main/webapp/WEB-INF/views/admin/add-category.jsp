<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<body>
			<main role="main" class="main-content">
				<div class="container-fluid">
					<div class="row justify-content-center">
						<div class="col-12">
							<h2 class="page-title">Thêm mới danh mục</h2>
							<form method="post" action="add-category">

								<div class="row mb-4">
									<div class="col-md-12">
										<div class="card shadow mb-4">
											<div class="card-body">
												<div class="form-group mb-3">
													<label for="simpleinput">Tên *</label>
													<input type="text" name="name" class="form-control">
												</div>

												<div class="form-group mb-3">
													<label>Mô tả</label></p>
													<textarea class="form-control" name="description"
														rows="4"></textarea>
												</div>

												<button type="submit" class="btn mb-3 btn-primary"><span
														class="fe fe-plus fe-16 mr-2"></span>Thêm danh mục</button>
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