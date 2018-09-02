package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.DatatableService;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao.ChucDanhDao;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucDanh;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.ChucDanhService;

@Service
public class ChucDanhServiceImpl implements ChucDanhService {

	@Autowired
	private ChucDanhDao chucDanhDao;
	@Autowired
	private DatatableService datatableService;

	@Override
	public List<ChucDanh> findAll() {
		return chucDanhDao.findAll();
	}

	@Override
	public void addNew(ChucDanh cd) {
		chucDanhDao.addNew(cd);
	}

	@Override
	public void update(ChucDanh cd) {
		chucDanhDao.update(cd);
	}

	@Override
	public void delete(String maChucDanh) {
		chucDanhDao.delete(maChucDanh);
	}

//	@Override
//	public List<ChucDanh> findAllForPaging(int startPosition, int maxResult) {
//		return chucDanhDao.findAllForPaging(startPosition, maxResult);
//	}

	@Override
	public ChucDanh findByMaChucDanh(String maChucDanh) {
		return chucDanhDao.findByMaChucDanh(maChucDanh);
	}

	@Override
	public List<ChucDanh> findAll(int iDisplayStart, int iDisplayLength, String sql) {
		return chucDanhDao.findAll(iDisplayStart, iDisplayLength, sql);
	}

	@Override
	public String getRecordsTotal() {
		return chucDanhDao.getRecordsTotal();
	}

	@Override
	public String getRecordsFiltered(String sql) {
		return chucDanhDao.getRecordsFiltered(sql);
	}
	
	@Override
	public String getSQL(HttpServletRequest request) {
		String selectQuery = "select cd from ChucDanh cd ";
		String[] columnNames = { "cd.maChucDanh", "cd.tenChucDanh" };
		String customCondition = "";

		String sql = datatableService.getSqlQuery(selectQuery, request, columnNames, customCondition);

		return sql;
	}

	@Override
	public String toJson(ChucDanh cd) {
		String maChucDanh = cd.getMaChucDanh();
		String tenChucDanh = cd.getTenChucDanh();
		
		String action = "<a href='/ffse-fbms/quanlyphanquyen/quan-ly-chuc-danh/edit/"
				+ maChucDanh + "'><i class='fa fa-pencil'></i></a>"
				+ "<a href='javascript:void(0);' data-toggle='modal' data-target='#confirm-delete' data-href='/ffse-fbms/quanlyphanquyen/quan-ly-chuc-danh/delete/"
				+maChucDanh + "'><i class='fa fa-trash'></i></a>";

		return "[\"" + maChucDanh + "\",\"" + tenChucDanh + "\",\"" + action + "\"]";
	}

}
