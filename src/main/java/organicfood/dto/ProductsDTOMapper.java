package organicfood.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class ProductsDTOMapper implements RowMapper<ProductsDTO> {

	@Override
	public ProductsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDTO products = new ProductsDTO();
		products.setId_product(rs.getString("id_product"));
		products.setId_category(rs.getString("id_category"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getFloat("price"));
		products.setImage(rs.getString("image"));
		return products;
	}
	
	
}
