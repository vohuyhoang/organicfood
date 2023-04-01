package organicfood.dao;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDAO {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	LocalDateTime now = LocalDateTime.now();
}
