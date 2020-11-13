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
	private int prevew;
	private int catId;
}
