package fasttrackse1702a.fbms.quanlyduan.dao;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;

public interface DoiTacDao {
	public void save(DoiTac doiTac);
	public DoiTac getById(String maDoiTac);
	public List<DoiTac> getAll();
	public void update(DoiTac doiTac);
	public void delete(String maDoiTac);
}
