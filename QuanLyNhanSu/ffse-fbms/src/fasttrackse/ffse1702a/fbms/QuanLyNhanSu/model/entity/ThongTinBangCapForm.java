package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity;

import java.util.List;

public class ThongTinBangCapForm {
	private List<ThongTinBangCap> listThongTinBangCap;

	public ThongTinBangCapForm(List<ThongTinBangCap> listThongTinBangCap) {
		super();
		this.listThongTinBangCap = listThongTinBangCap;
	}

	public List<ThongTinBangCap> getListThongTinBangCap() {
		return listThongTinBangCap;
	}

	public void setListThongTinBangCap(List<ThongTinBangCap> listThongTinBangCap) {
		this.listThongTinBangCap = listThongTinBangCap;
	}

}
