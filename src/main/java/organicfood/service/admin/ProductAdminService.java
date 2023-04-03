package organicfood.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.dto.ProductsDTO;
import organicfood.entity.Categorys;

@Service
public interface ProductAdminService {
	
	@Autowired
	public List<Categorys> GetDataCategorys();
	
	@Autowired
	public boolean saveOrUpdate(ProductsDTO productsDTO);
	
}
