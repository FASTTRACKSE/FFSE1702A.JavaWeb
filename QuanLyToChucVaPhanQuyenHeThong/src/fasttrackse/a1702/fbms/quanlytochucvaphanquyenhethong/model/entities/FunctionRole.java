package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "Func_Role")

public class FunctionRole {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private int id;
	
	@Column(name = "PhongBan", unique = true, nullable = false)
	private String maPhongBan;

	@Column(name = "ChucDanh", nullable = false, length = 100)
	@NotEmpty
	private String maChucDanh;

	@Column(name = "RoleID", nullable = false, length = 100)
	@NotEmpty
	private String roleID;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaPhongBan() {
		return maPhongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
	}

	public String getMaChucDanh() {
		return maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getRoleID() {
		return roleID;
	}

	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}

	public FunctionRole(int id, String maPhongBan, @NotEmpty String maChucDanh, @NotEmpty String roleID) {
		super();
		this.id = id;
		this.maPhongBan = maPhongBan;
		this.maChucDanh = maChucDanh;
		this.roleID = roleID;
	}

	public FunctionRole() {
		super();
	}

}
