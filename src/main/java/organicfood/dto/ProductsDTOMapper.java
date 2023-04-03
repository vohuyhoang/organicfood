package organicfood.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDTOMapper implements RowMapper<ProductsDTO> {

	@Override
	public ProductsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDTO products = new ProductsDTO();
		products.setId_product(rs.getString("id_product"));
		products.setId_category(rs.getString("id_category"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getFloat("price"));
		products.setPrice_old(rs.getFloat("price_old"));
		products.setImage(rs.getString("image"));
		products.setDescription(rs.getString("description"));
		products.setSale(rs.getInt("sale"));
		products.setHighlight(rs.getInt("highlight"));
		products.setNew_product(rs.getInt("new_product"));
		Timestamp createdAtTimestamp = rs.getTimestamp("created_at");
		if (createdAtTimestamp != null) {
			products.setCreated_at(createdAtTimestamp.toLocalDateTime());
		}
		Timestamp updatedAtTimestamp = rs.getTimestamp("updated_at");
		if (updatedAtTimestamp != null) {
			products.setUpdated_at(updatedAtTimestamp.toLocalDateTime());
		}
		return products;
	}

}
