package organicfood.dto;

import java.time.LocalDateTime;

public class ProductsDTO {

	private String id_product;
	private String name;
	private Float price;
	private Float price_old;
	private String description;
	private String image;
	private int sale;
	private int highlight;
	private int new_product;
	private LocalDateTime created_at;
	private LocalDateTime updated_at;
	private String id_category;

	public ProductsDTO() {
		super();
	}

	public String getId_product() {
		return id_product;
	}

	public void setId_product(String id_product) {
		this.id_product = id_product;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Float getPrice_old() {
		return price_old;
	}

	public void setPrice_old(Float price_old) {
		this.price_old = price_old;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public int getHighlight() {
		return highlight;
	}

	public void setHighlight(int highlight) {
		this.highlight = highlight;
	}

	public int getNew_product() {
		return new_product;
	}

	public void setNew_product(int new_product) {
		this.new_product = new_product;
	}

	public LocalDateTime getCreated_at() {
		return created_at;
	}

	public void setCreated_at(LocalDateTime created_at) {
		this.created_at = created_at;
	}

	public LocalDateTime getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(LocalDateTime updated_at) {
		this.updated_at = updated_at;
	}

	public String getId_category() {
		return id_category;
	}

	public void setId_category(String id_category) {
		this.id_category = id_category;
	}

}
