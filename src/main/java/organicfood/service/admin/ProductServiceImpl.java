package organicfood.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dao.CategorysDAO;
import organicfood.entity.Categorys;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private CategorysDAO categoryDAO;

	@Override
	public List<Categorys> GetDataCategorys() {
		return categoryDAO.GetDataCategorys();
	}

}
