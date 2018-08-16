package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;


public interface NhiemVuService {
	public void save(NhiemVu nhiemVu);
	public void update(NhiemVu nhiemVu);
	public List<NhiemVu> getAll();
	public NhiemVu getById(String maDuAn,String maNhanVien);
	public void delete(NhiemVu nhiemvu);
}
