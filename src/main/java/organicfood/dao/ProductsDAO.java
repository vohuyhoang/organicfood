package organicfood.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import organicfood.dto.ProductsDTO;
import organicfood.dto.ProductsDTOMapper;

@Repository
public class ProductsDAO extends BaseDAO {

	public boolean checkProductIdExists(String id) {
		String sql = "SELECT COUNT(*) FROM products WHERE id=?";
		int count = _jdbcTemplate.queryForObject(sql, Integer.class, id);
		return count > 0;
	}

	public boolean saveOrUpdate(ProductsDTO product) {
		if (checkProductIdExists(product.getId_product()) == true) {
			// update
			String sql = "UPDATE products SET name=?, price=?, description=?, image=?, sale=?, highlight=?, new_product=?, created_at=?, updated_at=?, category_id=?"
					+ " WHERE id=?";

			product.setUpdated_at(now);

			int rowsInserted = _jdbcTemplate.update(sql, product.getName(), product.getPrice(),
					product.getDescription(), product.getImage(), product.getSale(), product.getHighlight(),
					product.getNew_product(), product.getCreated_at(), product.getUpdated_at(),
					product.getId_category(), product.getId_product());
			return rowsInserted > 0;
		} else {
			// insert
			String sql = "INSERT INTO products (id, name, price, description, image, sale, highlight, new_product, created_at, updated_at, category_id)"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			product.setCreated_at(now);

			int rowsInserted = _jdbcTemplate.update(sql, product.getId_product(), product.getName(), product.getPrice(),
					product.getDescription(), product.getImage(), product.getSale(), product.getHighlight(),
					product.getNew_product(), product.getCreated_at(), product.getUpdated_at(),
					product.getId_category());
			return rowsInserted > 0;
		}
	}
	
	public List<ProductsDTO> GetDataProducts() {
		String sql = "SELECT id as id_product, category_id as id_category, name, description, price, sale, highlight, new_product, image, created_at, updated_at FROM products";
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDTOMapper());
		return listProducts;
	}
}
