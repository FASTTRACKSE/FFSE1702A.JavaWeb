package fasttrackse.a1702.fbms.QuanLyNhanSu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.TinhTrangHonNhanDao;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.TinhTrangHonNhan;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.TinhTrangHonNhanService;

@Service
public class TinhTrangHonNhanServiceImpl implements TinhTrangHonNhanService {

	@Autowired
	private TinhTrangHonNhanDao tinhTrangHonNhanDao;

	@Override
	@Transactional
	public List<TinhTrangHonNhan> getAllTinhTrangHonNhan() {
		return this.tinhTrangHonNhanDao.getAllTinhTrangHonNhan();
	}

}
