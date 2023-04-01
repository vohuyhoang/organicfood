package organicfood.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import organicfood.controller.BaseController;
import organicfood.dto.ProductsDTO;
import organicfood.service.admin.ProductServiceImpl;

@Controller
public class ProductAdminController extends BaseController{

	public static int getFlagValue(String flag) {
		return (flag != null && flag.equals("on")) ? 1 : 0;
	}

	@Autowired
	ProductServiceImpl _productService;

	@RequestMapping(value = "/admin/product")
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/product");
		return mv;
	}

	@RequestMapping(value = "/admin/add-product", method = RequestMethod.GET)
	public ModelAndView ShowAddProduct() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("categorys", _productService.GetDataCategorys());
		mv.setViewName("admin/add-product");
		return mv;
	}

	@RequestMapping(value = "/admin/add-product", method = RequestMethod.POST)
	public String AddProduct(HttpServletRequest request) throws IOException, ServletException {

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

		String name = request.getParameter("name");
		String description = request.getParameter("description");
		float price = Float.parseFloat(request.getParameter("price"));
		String id_category = request.getParameter("id_category");
		MultipartFile file = multipartRequest.getFile("image");
		String sale = request.getParameter("sale");
		int saleFlag = getFlagValue(sale);
		String highlight = request.getParameter("highlight");
		int highlightFlag = getFlagValue(highlight);
		String newProduct = request.getParameter("new_product");
		int newProductFlag = getFlagValue(newProduct);

		System.out.println(sale);
		System.out.println(highlight);
		System.out.println(newProduct);

		String fileName = file.getOriginalFilename();
		String filePath = "C:/Users/huyho/eclipse-workspace/organicfood/src/main/webapp/assets/img_upload/" + fileName;
		File dest = new File(filePath);
		file.transferTo(dest);

		ProductsDTO productsDTO = new ProductsDTO();
		productsDTO.setId_product(generateKey());
		productsDTO.setName(name);
		productsDTO.setPrice(price);
		productsDTO.setDescription(description);
		productsDTO.setImage(fileName);
		productsDTO.setSale(saleFlag);
		productsDTO.setHighlight(highlightFlag);
		productsDTO.setNew_product(newProductFlag);
		productsDTO.setId_category(id_category);

		if (_productService.saveOrUpdate(productsDTO) == true) {
			return "redirect:/admin/product";
		}
		return "redirect:/admin/add-product";
	}

}