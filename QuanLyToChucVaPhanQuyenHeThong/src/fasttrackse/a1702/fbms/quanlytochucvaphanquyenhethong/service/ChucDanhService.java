package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucDanh;

@Service
public interface ChucDanhService {
	public List<ChucDanh> findAll();

	public void addNew(ChucDanh cd);

	public void update(ChucDanh cd);

	public void delete(String maChucDanh);

	public List<ChucDanh> findAllForPaging(int startPosition, int maxResult);

	public ChucDanh findByMaChucDanh(String maChucDanh);
}
