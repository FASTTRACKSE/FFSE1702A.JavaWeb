package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.NghiepVu;

public interface NghiepVuService {
	public void save(NghiepVu nghiepVu);
	public NghiepVu getById(String maNghiepVu);
	public List<NghiepVu> getAll();
	public void update(NghiepVu nghiepVu);
	public void delete(String maNghiepVu);
}
