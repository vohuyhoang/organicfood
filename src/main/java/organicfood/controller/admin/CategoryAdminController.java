package organicfood.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import organicfood.controller.BaseController;
import organicfood.entity.Categorys;
import organicfood.service.admin.CategoryServiceImpl;

@Controller
public class CategoryAdminController extends BaseController {

	@Autowired
	CategoryServiceImpl _categoryService;

	@RequestMapping(value = "/admin/add-category", method = RequestMethod.GET)
	public ModelAndView ShowAddCategory() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/add-category");
		return mv;
	}

	@RequestMapping(value = "/admin/add-category", method = RequestMethod.POST)
	public String AddCategory(HttpServletRequest request) throws IOException, ServletException {

		String name = request.getParameter("name");
		String description = request.getParameter("description");

		Categorys categorys = new Categorys();
		categorys.setId(generateKey());
		categorys.setName(name);
		categorys.setDescription(description);

		if (_categoryService.saveCategory(categorys) == true) {
			return "redirect:/admin/";
		}
		return "redirect:/admin/";
	}
}
