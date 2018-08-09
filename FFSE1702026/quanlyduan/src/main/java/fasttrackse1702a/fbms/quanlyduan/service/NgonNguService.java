package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;


public interface NgonNguService  {
	public void save(NgonNgu ngonNgu);
	public NgonNgu getById(String maNgonNgu);
	public List<NgonNgu> getAll();
	public void update(NgonNgu ngonNgu);
	public void delete(String maNgonNgu);
}
