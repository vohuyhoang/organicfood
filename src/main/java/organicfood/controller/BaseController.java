package organicfood.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.servlet.ModelAndView;

import organicfood.service.admin.CategoryAdminServiceImpl;
import organicfood.service.user.HomeServiceImpl;

public class BaseController {
	
	public ModelAndView _mvShare = new ModelAndView();

	public static String generateCategoryId(String categoryName) {
		String categoryId = categoryName.replaceAll("\\p{InCombiningDiacriticalMarks}+", "").replaceAll("\\s+", "-")
				.replaceAll("[àáảãạâầấẩẫậăằắẳẵặ]", "a").replaceAll("[èéẻẽẹêềếểễệ]", "e").replaceAll("[ìíỉĩị]", "i")
				.replaceAll("[òóỏõọôồốổỗộơờớởỡợ]", "o").replaceAll("[ùúủũụưừứửữự]", "u").replaceAll("[ỳýỷỹỵ]", "y")
				.replaceAll("[đ]", "d").toLowerCase().replaceAll("[^a-z0-9-]", "");
		return categoryId;
	}

	public static String generateProductId(String productName) {

		String productNameFormatted = generateCategoryId(productName);

		int randomNumber = (int) (Math.random() * (9999 - 1000 + 1) + 1000);

		String productId = "sp" + randomNumber + "-" + productNameFormatted;
		return productId;
	}

}