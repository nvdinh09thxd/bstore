package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
	private int id;
	private Products pro;
	private int number;
	private Orders order;

	public Cart(int id, Products pro, int number) {
		super();
		this.id = id;
		this.pro = pro;
		this.number = number;
	}

}
