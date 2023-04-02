package organicfood.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import organicfood.entity.Categorys;
import organicfood.entity.CategorysMapper;

@Repository
public class CategorysDAO extends BaseDAO {
	
	public boolean checkCategoryIdExists(String id) {
		String sql = "SELECT COUNT(*) FROM categorys WHERE id=?";
		int count = _jdbcTemplate.queryForObject(sql, Integer.class, id);
		return count > 0;
	}

	public List<Categorys> GetDataCategorys() {
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new CategorysMapper());
		return list;
	}

	public boolean saveOrUpdate(Categorys categorys) {
		if (checkCategoryIdExists(categorys.getId()) == true) {
			// update
			String sql = "UPDATE categorys SET name=?, description=?" + " WHERE id=?";
			int rowsInserted = _jdbcTemplate.update(sql, categorys.getName(), categorys.getDescription(), categorys.getId());
			return rowsInserted > 0;
		} else {
			// insert
			String sql = "INSERT INTO categorys (id, name, description)" + " VALUES (?, ?, ?)";
			int rowsInserted = _jdbcTemplate.update(sql, categorys.getId(), categorys.getName(), categorys.getDescription());
			return rowsInserted > 0;
		}
		
	}
}
