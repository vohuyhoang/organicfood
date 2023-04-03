package organicfood.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeAdminController {
	
	@RequestMapping(value = "/admin")
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");
		return mv;
	}
}