package organicfood.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dto.ProductsDTO;
import organicfood.entity.Categorys;

@Service
public interface ProductService {
	
	@Autowired
	public List<Categorys> GetDataCategorys();
	
	 @Autowired
	 List<ProductsDTO> GetDataProducts();
	
	@Autowired
	public boolean saveOrUpdate(ProductsDTO productsDTO);
	
}
