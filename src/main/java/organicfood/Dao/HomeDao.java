package organicfood.Dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import organicfood.Entity.MapperSlides;
import organicfood.Entity.Slides;

@Repository
public class HomeDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<Slides> GetDataSlide(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	} 
}
