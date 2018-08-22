package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.QuanLyHoSoDAO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Service
public class QuanLyHoSoServiceImpl implements QuanLyHoSoService {

	@Autowired
	private QuanLyHoSoDAO quanLyHoSoDAO;

	@Override
	@Transactional
	public HoSoNhanVien getHoSoNhanVienById(int maNhanVien) {
		return this.quanLyHoSoDAO.getHoSoNhanVienById(maNhanVien);
	}

	@Override
	@Transactional
	public String getRecordsTotal(String maPhongBan) {
		return this.quanLyHoSoDAO.getRecordsTotal(maPhongBan);
	}

	@Override
	@Transactional
	public String getRecordsFiltered(String sql) {
		return this.quanLyHoSoDAO.getRecordsFiltered(sql);
	}

	@Override
	@Transactional
	public List<HoSoNhanVien> getAllHoSo() {
		return this.quanLyHoSoDAO.getAllHoSo();
	}

	@Override
	@Transactional
	public List<HoSoNhanVien> getAllHoSo(int iDisplayStart, int iDisplayLength, String sql) {
		return this.quanLyHoSoDAO.getAllHoSo(iDisplayStart, iDisplayLength, sql);
	}

	@Override
	@Transactional
	public List<HoSoNhanVien> getHoSoByPhongBan(String maPhongBan) {
		return this.quanLyHoSoDAO.getHoSoByPhongBan(maPhongBan);
	}

	@Override
	@Transactional
	public void addHoSoNhanVien(HoSoNhanVien hsnv) {
		this.quanLyHoSoDAO.addHoSoNhanVien(hsnv);
	}

	@Override
	@Transactional
	public void updateHoSoNhanVien(HoSoNhanVien hsnv) {
		this.quanLyHoSoDAO.updateHoSoNhanVien(hsnv);

	}

	@Override
	@Transactional
	public void deleteHoSoNhanVien(int maNhanVien) {
		this.quanLyHoSoDAO.deleteHoSoNhanVien(maNhanVien);
	}

	@Override
	@Transactional
	public String getAutoId() {
		return this.quanLyHoSoDAO.getAutoId();
	}

	@Override
	@Transactional
	public String toJson(HoSoNhanVien hsnv) {
		String maNhanVien = String.format("%05d", hsnv.getMaNhanVien());
		// String anhDaiDien = "<img width='75px' height='75px'
		// src='/ffse-fbms/resources/images/nhan-vien/" + hsnv.getAnhDaiDien() + "'>";
		String hoDem = hsnv.getHoDem();
		String ten = hsnv.getTen();
		String gioiTinh = hsnv.getGioiTinh() == 1 ? "Nam" : "Nữ";
		String phongBan = "<a href='/ffse-fbms/" + hsnv.getPhongBan().getMaPhongBan() + "/ho_so'>"
				+ hsnv.getPhongBan().getTenPhongBan() + "</a>";
		String chucDanh = hsnv.getChucDanh().getTenChucDanh();
		String trangThai = hsnv.getTrangThai() == 1 ? "Đang làm việc" : "Nghỉ việc";
		String action = "<a href='/ffse-fbms/ns/ho_so/xem_tat_ca/" + hsnv.getMaNhanVien()
				+ "'><i class='fa fa-eye'></i></a>" + "<a href='/ffse-fbms/ns/ho_so/edit/" + hsnv.getMaNhanVien()
				+ "'><i class='fa fa-pencil'></i></a>"
				+ "<a href='javascript:void(0);' data-toggle='modal' data-target='#confirm-delete' data-href='/ffse-fbms/ns/ho_so/delete/"
				+ hsnv.getMaNhanVien() + "'><i class='fa fa-trash'></i></a>";

		return "[\"" + maNhanVien + "\",\"" + hoDem + "\",\"" + ten + "\",\"" + gioiTinh + "\",\"" + phongBan + "\",\""
				+ chucDanh + "\",\"" + trangThai + "\",\"" + action + "\"]";
	}
}
