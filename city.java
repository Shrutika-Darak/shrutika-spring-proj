package springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;


import javax.persistence.Id;

@Entity
public class city {

	@Id
	
	private int id;
	@Column(length = 50)
	private String cityname;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	
	@Override
	public String toString() {
		return "city [id=" + id + ", cityname=" + cityname +  "]";
	}

}
