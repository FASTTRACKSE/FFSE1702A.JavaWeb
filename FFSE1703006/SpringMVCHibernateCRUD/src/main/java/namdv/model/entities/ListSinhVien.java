package namdv.model.entities;

import java.util.List;

import javax.validation.Valid;

public class ListSinhVien {
	@Valid
	private List<SinhVien> listSinhVien;

	public List<SinhVien> getListSinhVien() {
		return listSinhVien;
	}

	public void setListSinhVien(List<SinhVien> listSinhVien) {
		this.listSinhVien = listSinhVien;
	}
}
