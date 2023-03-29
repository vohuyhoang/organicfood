package organicfood.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import organicfood.entity.Categorys;
import organicfood.entity.CategorysMapper;


@Repository
public class CategorysDAO extends BaseDAO{
	
	public List<Categorys> GetDataCategorys(){
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new CategorysMapper());
		return list;
	} 
}
