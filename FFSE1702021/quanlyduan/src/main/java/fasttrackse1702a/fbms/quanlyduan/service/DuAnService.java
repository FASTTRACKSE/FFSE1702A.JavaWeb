package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.DuAn;

public interface DuAnService {
	public void save(DuAn duAn);
	public DuAn getById(String maDuAn);
	public List<DuAn> getAll();
	public void update(DuAn duAn);
	public void delete(String maDuAn);
}
