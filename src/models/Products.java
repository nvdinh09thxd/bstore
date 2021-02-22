package models;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Products {
	private int id;
	private String name;
	private ArrayList<String> arPicture;
	private int rating;
	private float oldPrice;
	private float price;
	private int number;
	private Categories cat;

	public Products(int id) {
		super();
		this.id = id;
	}

	public Products(int id, String name, ArrayList<String> arPicture, float price) {
		super();
		this.id = id;
		this.name = name;
		this.arPicture = arPicture;
		this.price = price;
	}

	public Products(String name, ArrayList<String> arPicture, float price) {
		super();
		this.name = name;
		this.arPicture = arPicture;
		this.price = price;
	}

	public Products(int id, int number) {
		super();
		this.id = id;
		this.number = number;
	}

}
