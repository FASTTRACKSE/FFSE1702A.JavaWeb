package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;

public interface DoiTacService {
	public void save(DoiTac doiTac);
	public DoiTac getById(String maDoiTac);
	public List<DoiTac> getAll();
	public void update(DoiTac doiTac);
	public void delete(String maDoiTac);
}
