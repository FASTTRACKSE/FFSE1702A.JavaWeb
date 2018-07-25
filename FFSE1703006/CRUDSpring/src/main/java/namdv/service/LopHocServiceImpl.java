package namdv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import namdv.model.dao.LopHocDAO;
import namdv.model.entities.LopHoc;

@Service
public class LopHocServiceImpl implements LopHocService {

	@Autowired
	private LopHocDAO lopHocDAO;

	@Override
	@Transactional
	public List<LopHoc> getAllLopHoc() {
		return this.lopHocDAO.getAllLopHoc();
	}

	@Override
	@Transactional
	public LopHoc getLopHocById(int id) {
		return this.lopHocDAO.getLopHocById(id);
	}

}
