package namdv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import namdv.model.dao.SinhVienDAO;
import namdv.model.entities.SinhVien;

@Service
public class SinhVienServiceImpl implements SinhVienService {

	@Autowired
	private SinhVienDAO sinhVienDAO;

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
	public List<SinhVien> getAllSinhVien(Integer offset, Integer step) {
		return this.sinhVienDAO.getAllSinhVien(offset, step);
	}

	@Override
	@Transactional
	public Long count() {
		return this.sinhVienDAO.count();
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
