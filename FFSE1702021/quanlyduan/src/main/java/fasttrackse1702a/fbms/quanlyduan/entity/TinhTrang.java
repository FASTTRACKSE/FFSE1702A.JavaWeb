package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tinh_trang")
public class TinhTrang implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="ma_tinh_trang")
	private String maTinhTrang;
	@Id
	@Column(name="ten_tinh_trang")
	private String tenTinhTrang;
}
