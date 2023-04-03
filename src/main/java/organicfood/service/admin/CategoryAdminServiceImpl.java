package organicfood.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dao.CategorysDAO;
import organicfood.entity.Categorys;

@Service
public class CategoryAdminServiceImpl implements CategoryAdminService{

	@Autowired
	CategorysDAO categorysDAO;
	
	@Override
	public boolean saveOrUpdate(Categorys categorys) {
		return categorysDAO.saveOrUpdate(categorys);
	}

}
