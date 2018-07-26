package namdv.model.dao;

import java.util.List;

import namdv.model.entities.LopHoc;

public interface LopHocDAO {

	public List<LopHoc> getAllLopHoc();

	public LopHoc getLopHocById(int id);
}
