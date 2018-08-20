package fasttrackse.a1702.fbms.chucnang.service;

import java.util.List;

import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;

public interface ChucNangService {
	public List<ChucNang> list();

	public void save(ChucNang cn);

	public void update(ChucNang cn);

	public void delete(String ma_chuc_nang);

	public void active(String ma_chuc_nang);

	public ChucNang getChucNangByCode(String ma_chuc_nang);

	public ChucNang findByMaChucNang(String ma_chuc_nang);

	public List<ChucNang> findAllForPaging(int startPosition, int maxResult);

	public List<ChucNang> findAll();
}
