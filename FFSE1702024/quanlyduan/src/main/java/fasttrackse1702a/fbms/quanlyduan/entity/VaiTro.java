package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Id;

public class VaiTro {
	@Id
	@Column(name="ma_vai_tro")
	private String maNgonNgu;
	@Column(name="ten_vai_tro")
	private String tenNgonNgu;
}
