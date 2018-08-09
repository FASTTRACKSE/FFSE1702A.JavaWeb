package fasttrackse1702a.fbms.quanlyduan.dao;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.VaiTro;

public interface VaiTroDao {
	public void save(VaiTro vaitro);
	public VaiTro getById(String maVaiTro);
	public List<VaiTro> getAll();
	public void update(VaiTro vaitro);
	public void delete(String maVaiTro);
}
