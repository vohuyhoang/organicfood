package organicfood.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import organicfood.controller.BaseController;
import organicfood.service.user.HomeServiceImpl;

@Controller
public class ProductController extends BaseController {
	
	@Autowired
	HomeServiceImpl _homeService;

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView Index() {
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}

}