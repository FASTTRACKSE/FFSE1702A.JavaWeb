package fasttrackse1702a.fbms.quanlyduan.dao;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;

public interface NhiemVuDao {
	public void save(NhiemVu nhiemVu);
	public void update(NhiemVu nhiemVu);
	public List<NhiemVu> getAll(int maDuAn);
	public List<NhiemVu> getById(int maDuAn,int maNhanVien);
	public NhiemVu getDetailNhiemVu(int maDuAn,int maNhanVien,String maVaiTro);
	public void delete(NhiemVu nhiemvu);
}
