package organicfood.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductAdminController {
	@RequestMapping(value = "/admin/product")
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/product");
		return mv;
	}

	@RequestMapping(value = "/admin/add-product")
	public ModelAndView AddProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/add-product");
		return mv;
	}
}