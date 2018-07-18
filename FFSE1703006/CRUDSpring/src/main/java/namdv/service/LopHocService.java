package namdv.service;

import java.util.List;

import namdv.model.entities.LopHoc;

public interface LopHocService {

	public List<LopHoc> getAllLopHoc();

	public LopHoc getLopHocById(int id);
}
