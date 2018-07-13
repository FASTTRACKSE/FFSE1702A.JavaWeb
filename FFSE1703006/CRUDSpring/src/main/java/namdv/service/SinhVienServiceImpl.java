package namdv.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import namdv.model.dao.SinhVienDAO;
import namdv.model.entities.SinhVien;

@Service
public class SinhVienServiceImpl implements SinhVienService {
	private SinhVienDAO sinhVienDAO;

	public void setSinhVienDAO(SinhVienDAO sinhVienDAO) {
		this.sinhVienDAO = sinhVienDAO;
	}

	@Override
	@Transactional
	public void addSinhVien(SinhVien sv) {
		this.sinhVienDAO.addSinhVien(sv);
	}

	@Override
	@Transactional
	public void updateSinhVien(SinhVien sv) {
		this.sinhVienDAO.updateSinhVien(sv);
	}

	@Override
	@Transactional
	public List<SinhVien> listSinhVien() {
		return this.sinhVienDAO.listSinhVien();
	}

	@Override
	@Transactional
	public SinhVien getSinhVienById(int id) {
		return this.sinhVienDAO.getSinhVienById(id);
	}

	@Override
	@Transactional
	public void deleteSinhVien(int id) {
		this.sinhVienDAO.deleteSinhVien(id);
	}

}
