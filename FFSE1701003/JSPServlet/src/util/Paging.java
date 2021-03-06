package util;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class Paging {
	// Rebuild query string
	public static String generateQueryString(Map<String, String> par) {
		String parameter = "";
		for (Map.Entry<String, String> entry : par.entrySet()) {
			parameter += entry.getKey() + "=" + entry.getValue() + "&";
		}
		return parameter.substring(0, parameter.length() - 1);
	}

	// Split query string add to Map
	public static Map<String, String> getQueryMap(String query) throws UnsupportedEncodingException {
		String[] params = query.split("&");
		Map<String, String> map = new HashMap<String, String>();
		for (String param : params) {
			String name = param.split("=")[0];
			String value = param.split("=")[1];
			map.put(name, value);
		}
		return map;
	}

	// Replace {page} in link
	public static String __link(int page, String link_full) {
		String reLink = "";
		if (!link_full.equals("")) {
			String strPage = Integer.toString(page);
			reLink = "?" + link_full.replace("{page}", strPage);
		}
		return reLink;
	}

	// Generate paging
	public static String generatePaging(int total_rows, int max_rows, int cur_page, String linkFull) {
		int nextPage = 0;
		int prePage = 0;
		double pages = total_rows / max_rows;
		int max_pages = (int) Math.ceil(pages);
		int start = cur_page - 5;
		if (start < 1)
			start = 1;
		int end = cur_page + 5;
		if (end > max_pages)
			end = max_pages;

		String strPaging = "";
		strPaging += "<div class=\"paging\">";
		strPaging += "<nav>";
		strPaging += "<ul class=\"pagination\">";
		strPaging += "<input type=\"hidden\" name=\"txtCurnpage\" id=\"txtCurnpage\" value=\"" + cur_page + "\" />";

		if (cur_page > 1) {
			prePage = cur_page - 1;
			strPaging += "<li>" + "<a href=\"" + __link(prePage, linkFull) + "\" aria-label=\"Next\">"
					+ "<span aria-hidden=\"true\">Pre</span>" + "</a>" + "</li>";
		}

		if (max_pages > 1) {
			for (int i = start; i <= end; i++) {
				if (i != cur_page)
					strPaging += "<li><a href=\"" + __link(i, linkFull) + "\" aria-label=\"Next\">"
							+ "<span aria-hidden=\"true\">" + i + "</span></a></li>";
				else
					strPaging += "<li class=\"active\"><a href=\"" + __link(cur_page, linkFull)
							+ "\" aria-label=\"Next\">" + "<span aria-hidden=\"true\">" + cur_page + "</span></a></li>";
			}
		}

		if (cur_page < max_pages) {
			nextPage = cur_page + 1;
			strPaging += "<li><a href=\"" + __link(nextPage, linkFull) + "\" aria-label=\"Next\">"
					+ "<span aria-hidden=\"true\">Next</span></a></li>";
		}
		strPaging += "</ul>";
		strPaging += "</nav>";
		strPaging += "</div>";

		return strPaging;
	}
	// End paging
}
