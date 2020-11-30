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
	private int idUser;
	private float total;
	private String note;
	private Timestamp date;
	private boolean status;
}
