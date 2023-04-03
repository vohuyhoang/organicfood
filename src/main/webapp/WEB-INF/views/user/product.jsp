<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Sản phẩm | Organic Food</title>

<body>
	<div class="breadcrumb-area pt-35 pb-35 bg-gray-3">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li class="active">Shop</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="shop-area pt-95 pb-100">
		<div class="container">
			<div class="row flex-row-reverse">
				<div class="col-lg-12">
					<div class="shop-top-bar mb-35">
						<div class="select-shoing-wrap">
							<div class="shop-select">
								<select>
									<option value="">Sort by newness</option>
									<option value="">A to Z</option>
									<option value="">Z to A</option>
									<option value="">In stock</option>
								</select>
							</div>
							<p>Showing 1–12 of 20 result</p>
						</div>
						<div class="filter-active">
							<a href="#"><i class="fa fa-plus"></i> filter</a>
						</div>
					</div>
					<div class="product-filter-wrapper">
						<div class="row">
							<!-- Product Filter -->
							<div class="col-md-3 col-sm-6 col-xs-12 mb-30">
								<div class="product-filter">
									<h5>Sort by</h5>
									<ul class="sort-by">
										<li><a href="#">Default</a></li>
										<li><a href="#">Popularity</a></li>
										<li><a href="#">Average rating</a></li>
										<li><a href="#">Newness</a></li>
										<li><a href="#">Price: Low to High</a></li>
										<li><a href="#">Price: High to Low</a></li>
									</ul>
								</div>
							</div>
							<!-- Product Filter -->
							<div class="col-md-3 col-sm-6 col-xs-12 mb-30">
								<div class="product-filter">
									<h5>color filters</h5>
									<ul class="color-filter">
										<li><input type="checkbox" value=""> <a href="#">Black</a></li>
										<li><input type="checkbox" value=""> <a href="#">Brown</a></li>
										<li><input type="checkbox" value=""> <a href="#">Orange</a></li>
										<li><input type="checkbox" value=""> <a href="#">red</a></li>
										<li><input type="checkbox" value=""> <a href="#">Yellow</a></li>
										<li><input type="checkbox" value=""> <a href="#">purple</a></li>
									</ul>
								</div>
							</div>
							<!-- Product Filter -->
							<div class="col-md-3 col-sm-6 col-xs-12 mb-30">
								<div class="product-filter">
									<h5>product tags</h5>
									<div class="product-tags">
										<ul>
											<li><a href="#">New</a></li>
											<li><a href="#">brand</a></li>
											<li><a href="#">black</a></li>
											<li><a href="#">white</a></li>
											<li><a href="#">chire</a></li>
											<li><a href="#">table</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- Product Filter -->
							<div class="col-md-3 col-sm-6 col-xs-12 mb-30">
								<div class="product-filter">
									<h5>Filter by price</h5>
									<div class="price-filter mt-25">
										<div class="price-slider-amount">
											<input type="text" id="amount" name="price"
												placeholder="Add Your Price" />
										</div>
										<div id="slider-range"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="shop-bottom-area">
						<div class="row">
							<c:forEach var="item" items="${ products }">
								<div class="col-xl-4 col-md-6 col-lg-4 col-sm-6">
									<div class="product-wrap mb-25 scroll-zoom">
										<div class="product-img">
											<a href="#"> <img class="default-img"
												src="assets/img_upload/${ item.image }" alt="">
											</a>
											<c:choose>
											<c:when test="${item.price_old != null and item.price_old > 0}">
												<span class="pink">-${ Math.round(((item.price_old - item.price) / item.price_old) * 100) }%</span>
											</c:when>
											<c:otherwise>
												<c:if test="${item.new_product == 1 }">
													<span class="purple">Mới</span>
												</c:if>
											</c:otherwise>
											</c:choose>
											<div class="product-action">
												<div class="pro-same-action pro-wishlist">
													<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
												</div>
												<div class="pro-same-action pro-cart">
													<a title="Add To Cart" href="#"><i class="pe-7s-cart"></i>
														Add to cart</a>
												</div>
												<div class="pro-same-action pro-quickview">
													<a title="Quick View" href="#" data-toggle="modal"
														data-target="#exampleModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
										</div>
										<div class="product-content text-center">
											<h3>
												<a href="product-details.html">${ item.name }</a>
											</h3>
											<div class="product-rating">
												<i class="fa fa-star-o yellow"></i> <i
													class="fa fa-star-o yellow"></i> <i
													class="fa fa-star-o yellow"></i> <i class="fa fa-star-o"></i>
												<i class="fa fa-star-o"></i>
											</div>
											<div class="product-price">
												<span class="show-price">${item.price}</span>
												<c:if
													test="${item.price_old != null and item.price_old > 0}">
													<span class="old show-price">${item.price_old}</span>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="pro-pagination-style text-center mt-30">
							<ul>
								<li><a class="prev" href="#"><i
										class="fa fa-angle-double-left"></i></a></li>
								<li><a class="active" href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a class="next" href="#"><i
										class="fa fa-angle-double-right"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>