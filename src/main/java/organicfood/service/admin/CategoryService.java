package organicfood.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import organicfood.entity.Categorys;

@Service
public interface CategoryService {
	
	@Autowired
	public boolean saveOrUpdate(Categorys categorys);
}
