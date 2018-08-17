package fasttrackse.ffse1702a.fbms.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ly_do_nghi")
public class LyDoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "ly_do")
	private String ly_do;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLy_do() {
		return ly_do;
	}

	public void setLy_do(String ly_do) {
		this.ly_do = ly_do;
	}

}
