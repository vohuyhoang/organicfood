package organicfood.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CategorysMapper implements RowMapper<Categorys> {

	public Categorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categorys categorys = new Categorys();
		categorys.setId(rs.getString("id"));
		categorys.setName(rs.getString("name"));
		categorys.setDescription(rs.getString("description"));
		return categorys;
	}
}
