package models;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {
	private int id;
	private Member member;
	private float total;
	private String note;
	private Timestamp date;
	private boolean status;

	public Orders(int id, float total, boolean status) {
		super();
		this.id = id;
		this.total = total;
		this.status = status;
	}

}
