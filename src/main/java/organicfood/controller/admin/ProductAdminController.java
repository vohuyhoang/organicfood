package organicfood.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import organicfood.service.admin.ProductServiceImpl;

@Controller
public class ProductAdminController {

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
    public String AddProduct() {
        return "redirect:/admin/product";
    }
}