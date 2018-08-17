package fasttrackse.ffse1702a.fbms.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Controller
public class Test {
	@Autowired
	private QuanLyHoSoService quanLyHoSoService;

	private String GLOBAL_SEARCH_TERM;
	private String[] COLUMN_NAME;
	private String[] DIRECTION;
	private int INITIAL;
	private int RECORD_SIZE;

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String testList(Model model) {
		return "QuanLyNhanSu/QuanLyHoSo/testform";
	}

	@RequestMapping(value = "/testDB", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String testDB(Model model, HttpServletRequest request) {

		String[] columnNames = { "ma_nhan_vien", "anh_dai_dien", "ho_dem", "ten", "gioi_tinh", "ma_phong_ban",
				"ma_chuc_danh", "trang_thai" };

		int listDisplayAmount = 10;
		int start = 0;
		int column = 0;
		String dir = "asc";
		String pageNo = request.getParameter("iDisplayStart");
		String pageSize = request.getParameter("iDisplayLength");

		if (pageNo != null) {
			start = Integer.parseInt(pageNo);
			if (start < 0) {
				start = 0;
			}
		}
		if (pageSize != null) {
			listDisplayAmount = Integer.parseInt(pageSize);
			if (listDisplayAmount < 10 || listDisplayAmount > 100) {
				listDisplayAmount = 10;
			}
		}

		int totalRecords = Integer.parseInt(quanLyHoSoService.getAutoId()) - 1;

		INITIAL = start;
		RECORD_SIZE = listDisplayAmount;
		GLOBAL_SEARCH_TERM = request.getParameter("sSearch");

		int colLength = columnNames.length;
		for (int i = 0; i < colLength; i++) {
			if (COLUMN_NAME[i] != "") {

				int colIndex = Integer.parseInt(request.getParameter("iSortCol_" + i));
				String sortDirection = request.getParameter("sSortDir_" + i);

				COLUMN_NAME[i] = columnNames[colIndex];
				DIRECTION[i] = sortDirection;
			} else {
				break;
			}
		}

		List<HoSoNhanVien> list = quanLyHoSoService.getAllHoSo(INITIAL, RECORD_SIZE);

		String sql = "from HoSoNhanVien ";
		String globeSearch = "";
		if (GLOBAL_SEARCH_TERM != "") {
			for (int i = 0; i < colLength; i++) {
				if (i == 0) {
					globeSearch += "where " + columnNames[i] + " like '%" + GLOBAL_SEARCH_TERM + "%' ";
				} else {
					globeSearch += "or " + columnNames[i] + " like '%" + GLOBAL_SEARCH_TERM + "%' ";
				}
			}
		}
		sql += globeSearch;
		sql += " order by " + COLUMN_NAME + " " + DIRECTION;
		sql += " limit " + INITIAL + ", " + RECORD_SIZE;
		System.out.println(sql);

		String json = "{\"iTotalRecords\":" + totalRecords + ",\"aaData\":[";
		int j = list.size();
		int i = 0;
		for (HoSoNhanVien hsnv : list) {
			i++;
			if (i == j) {
				json += hsnv.toJson();
			} else {
				json += hsnv.toJson() + ",";
			}
		}
		json += "],\"iTotalDisplayRecords\":" + totalRecords + "}";
		System.out.println(json);
		return json;
	}
}
