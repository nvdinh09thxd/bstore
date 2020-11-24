package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProDetail {
	int id;
	Products pro;
	String moreDetail;
	String review;
}
