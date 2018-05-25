package com.javatpoint.cus;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class Paging {

	public static String getCurrentUrl(HttpServletRequest request) {
		URL url = null;
		try {
			url = new URL(request.getRequestURL().toString());
		} catch (MalformedURLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String host = url.getHost();
		String userInfo = url.getUserInfo();
		String scheme = url.getProtocol();
		int port = url.getPort();
		String path = (String) request.getAttribute("javax.servlet.forward.request_uri");
		String query = (String) request.getAttribute("javax.servlet.forward.query_string");
		URI uri = null;
		try {
			uri = new URI(scheme, userInfo, host, port, path, query, null);
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return uri.toString();
	}

	public static Map<String, String> splitQuery(URL url) throws UnsupportedEncodingException {
		Map<String, String> query_pairs = new LinkedHashMap<String, String>();
		String query = url.getQuery();
		String[] pairs = query.split("&");
		for (String pair : pairs) {
			int idx = pair.indexOf("=");
			query_pairs.put(URLDecoder.decode(pair.substring(0, idx), "UTF-8"),
					URLDecoder.decode(pair.substring(idx + 1), "UTF-8"));
		}
		return query_pairs;
	}

	// Begin paging
	// Rebuild query string
	public static String generateQueryString(Map<String, String> par) {
		String parameter = "";
		for (Map.Entry<String, String> entry : par.entrySet()) {
			parameter += entry.getKey() + "=" + entry.getValue() + "&";
		}
		return parameter.substring(0, parameter.length()-1);
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
