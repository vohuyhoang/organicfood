package organicfood.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dao.CategorysDAO;
import organicfood.dao.ProductsDAO;
import organicfood.dto.ProductsDTO;
import organicfood.entity.Categorys;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private CategorysDAO categoryDAO;

	@Autowired
	private ProductsDAO productsDAO;

	@Override
	public List<Categorys> GetDataCategorys() {
		return categoryDAO.GetDataCategorys();
	}

	@Override
	public boolean saveOrUpdate(ProductsDTO productsDTO) {
		return productsDAO.saveOrUpdate(productsDTO);
	}
	
	@Override
	public List<ProductsDTO> GetDataProducts() {
		List<ProductsDTO> listProducts = productsDAO.GetDataProducts();
		return listProducts;
	}

}
