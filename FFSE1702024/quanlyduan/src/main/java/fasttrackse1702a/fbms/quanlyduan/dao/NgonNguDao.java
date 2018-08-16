package fasttrackse1702a.fbms.quanlyduan.dao;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;


public interface NgonNguDao {
	public void save(NgonNgu ngonNgu);
	public NgonNgu getById(String maNgonNgu);
	public List<NgonNgu> getAll();
	public void update(NgonNgu ngonNgu);
	public void delete(String maNgonNgu);
}
