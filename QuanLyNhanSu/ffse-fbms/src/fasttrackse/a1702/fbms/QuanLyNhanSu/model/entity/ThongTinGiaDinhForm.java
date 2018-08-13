package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.util.List;

public class ThongTinGiaDinhForm {
	private List<ThongTinGiaDinh> listThongTinGiaDinh;

	public ThongTinGiaDinhForm(List<ThongTinGiaDinh> listThongTinGiaDinh) {
		super();
		this.listThongTinGiaDinh = listThongTinGiaDinh;
	}

	public List<ThongTinGiaDinh> getListThongTinGiaDinh() {
		return listThongTinGiaDinh;
	}

	public void setListThongTinGiaDinh(List<ThongTinGiaDinh> listThongTinGiaDinh) {
		this.listThongTinGiaDinh = listThongTinGiaDinh;
	}

}
