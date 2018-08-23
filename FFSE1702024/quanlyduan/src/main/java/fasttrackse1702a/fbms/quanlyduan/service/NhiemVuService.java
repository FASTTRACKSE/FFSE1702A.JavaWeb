package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;


public interface NhiemVuService {
	public void save(NhiemVu nhiemVu);
	public void update(NhiemVu nhiemVu);
	public List<NhiemVu> getAll(int maDuAn);
	public List<NhiemVu> getById(int maDuAn,int maNhanVien);
	public NhiemVu getDetailNhiemVu(int maDuAn,int maNhanVien,String maVaiTro);
	public void delete(NhiemVu nhiemvu);
}
