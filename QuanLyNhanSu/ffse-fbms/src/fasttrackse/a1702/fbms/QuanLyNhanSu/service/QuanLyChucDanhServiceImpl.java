package fasttrackse.a1702.fbms.QuanLyNhanSu.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuanLyChucDanhDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;

@Service
public class QuanLyChucDanhServiceImpl implements QuanLyChucDanhService {
	
	@Autowired
	private QuanLyChucDanhDAO quanlychucdanhDAO;
	
	@Override
	@Transactional
	public List<ChucDanh> listChucDanh() {
		return this.quanlychucdanhDAO.listChucDanh();
	}
}
