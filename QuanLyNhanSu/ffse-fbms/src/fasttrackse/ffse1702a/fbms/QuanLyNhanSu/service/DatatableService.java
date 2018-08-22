package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;

public interface DatatableService {

	public String getSearchQuery(HttpServletRequest request, String[] columnNames, String custom);

	public String getSortQuery(HttpServletRequest request, String[] columnNames);

	public String getSqlQuery(String tableName, HttpServletRequest request, String[] columnNames, String custom);

	public String getJson(String recordsTotal, String recordsFiltered, List<HoSoNhanVien> list);
}
