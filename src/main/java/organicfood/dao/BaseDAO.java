package organicfood.dao;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDAO {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	LocalDateTime now = LocalDateTime.now();
}
