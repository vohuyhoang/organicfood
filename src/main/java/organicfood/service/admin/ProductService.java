package organicfood.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.entity.Categorys;

@Service
public interface ProductService {
	@Autowired
	public List<Categorys> GetDataCategorys();
}