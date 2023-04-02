package organicfood.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dao.ProductsDAO;
import organicfood.dto.ProductsDTO;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	ProductsDAO productsDAO;
	
	@Override
	public List<ProductsDTO> GetDataProducts() {
		List<ProductsDTO> listProducts = productsDAO.GetDataProducts();
		return listProducts;
	}

}
