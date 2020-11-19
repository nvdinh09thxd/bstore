package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Products {
	private int id;
	private String name;
	private String picture;
	private int rating;
	private float oldPrice;
	private float price;
	private int preview;
	private Categories cat;

	public Products(int id, String name, String picture, float price) {
		super();
		this.id = id;
		this.name = name;
		this.picture = picture;
		this.price = price;
	}

	public Products(int id) {
		super();
		this.id = id;
	}

}
