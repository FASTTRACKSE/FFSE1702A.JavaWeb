package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="co_so_du_lieu")
public class Database {
	@Id
	@Column(name="ma_database")
	@NotEmpty
	private String maDatabase;
	@Column(name="ten_database")
	@NotEmpty
	private String tenDatabase;
	public String getMaDatabase() {
		return maDatabase;
	}
	public void setMaDatabase(String maDatabase) {
		this.maDatabase = maDatabase;
	}
	public String getTenDatabase() {
		return tenDatabase;
	}
	public void setTenDatabase(String tenDatabase) {
		this.tenDatabase = tenDatabase;
	}
}
