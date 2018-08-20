package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.DatatableService;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Service
public class DatatableServiceImpl implements DatatableService {

	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	@Override
	public String getSearchQuery(HttpServletRequest request, String[] columnNames, String custom) {

		int colLength = columnNames.length;
		String sSearch = request.getParameter("sSearch");
		String globeSearch = "where " + custom;

		if (!sSearch.isEmpty()) {
			for (int i = 0; i < colLength; i++) {
				if (columnNames[i].equals("anh_dai_dien")) {
					continue;
				}
				if (i == 0) {
					if (!custom.isEmpty()) {
						globeSearch += " and ";
					}
					globeSearch += columnNames[i] + " like '%" + sSearch + "%' ";
				} else {
					globeSearch += "or " + columnNames[i] + " like '%" + sSearch + "%' ";
				}
			}
			sSearch = globeSearch;
		}

		return custom.isEmpty() ? sSearch : globeSearch;
	}

	@Override
	public String getSortQuery(HttpServletRequest request, String[] columnNames) {

		int colLength = columnNames.length;
		List<String> sortNames = new ArrayList<String>();
		List<String> sortDirections = new ArrayList<String>();

		for (int i = 0; i < colLength; i++) {
			String colIndex = request.getParameter("iSortCol_" + i);
			if (colIndex != null) {
				String sortName = columnNames[Integer.parseInt(colIndex)];
				String sortDirection = request.getParameter("sSortDir_" + i);

				sortNames.add(sortName);
				sortDirections.add(sortDirection);
			} else {
				break;
			}
		}

		int sortLength = sortNames.size();
		String sort = " order by ";
		for (int i = 0; i < sortLength; i++) {
			sort += sortNames.get(i) + " " + sortDirections.get(i);
			if (i != sortLength - 1) {
				sort += ", ";
			}
		}

		if (sortLength != 0) {
			return sort;
		}

		return null;
	}

	@Override
	@Transactional
	public String getSqlQuery(String tableName, HttpServletRequest request, String[] columnNames, String custom) {

		String sql = "from " + tableName + " ";
		return sql + getSearchQuery(request, columnNames, custom) + getSortQuery(request, columnNames);
	}

	@Override
	@Transactional
	public String getJson(String recordsTotal, String recordsFiltered, List<HoSoNhanVien> list) {

		String json = "{\"recordsTotal\":" + recordsTotal + ",\"recordsFiltered\":" + recordsFiltered + ",\"aaData\":[";
		int j = list.size();
		int i = 0;
		for (HoSoNhanVien hsnv : list) {
			i++;
			if (i == j) {
				json += this.quanLyHoSoService.toJson(hsnv);
			} else {
				json += this.quanLyHoSoService.toJson(hsnv) + ",";
			}
		}
		json += "]}";

		return json;
	}

}
