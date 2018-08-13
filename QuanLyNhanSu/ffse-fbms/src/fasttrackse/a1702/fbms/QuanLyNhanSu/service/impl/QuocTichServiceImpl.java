package fasttrackse.a1702.fbms.QuanLyNhanSu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuocTichDao;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.QuocTich;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuocTichService;

@Service
public class QuocTichServiceImpl implements QuocTichService {

	@Autowired
	private QuocTichDao quocTichDao;

	@Override
	@Transactional
	public List<QuocTich> getAllQuocTich() {
		return this.quocTichDao.getAllQuocTich();
	}

}
