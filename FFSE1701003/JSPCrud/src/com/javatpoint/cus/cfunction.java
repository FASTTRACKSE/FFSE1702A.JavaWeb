package com.javatpoint.cus;
import java.awt.List;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.LinkedHashMap;
import java.util.Map;

public class cfunction {
	
	public static Map<String, String> splitQuery(URL url) throws UnsupportedEncodingException {
	    Map<String, String> query_pairs = new LinkedHashMap<String, String>();
	    String query = url.getQuery();
	    String[] pairs = query.split("&");
	    for (String pair : pairs) {
	        int idx = pair.indexOf("=");
	        query_pairs.put(URLDecoder.decode(pair.substring(0, idx), "UTF-8"), URLDecoder.decode(pair.substring(idx + 1), "UTF-8"));
	    }
	    return query_pairs;
	}
	
//	public String __link(int page, String link_full) {
//		String replaceString = link_full.replace("{page}", page);
//		return replaceString;
//		return "";
//	}
	
//	public function conver_to_par($par){
//		$str="?";
//		$key=array_keys($par);
//		for($i=0;$i<count($par);$i++){
//			$str=$str.$key[$i].'='.$par[$key[$i]]."&";
//		}
//		$str=substr($str,0,strlen($str)-1);
//		return $str;
//	}

	public String paging(int total_rows, int max_rows, int cur_page, String link_full){
		double pages = total_rows/max_rows;
		int max_pages = (int) Math.ceil(pages);
		int start = cur_page - 5; if(start < 1) start = 1;
		int end = cur_page + 5;   if(end > max_pages) end = max_pages;
		String paging;
		paging="<div class=\"paging\">";
		paging+="<nav>";
		paging+="<ul class=\"pagination\">";
		paging+="<input type=\"hidden\" name=\"txtCurnpage\" id=\"txtCurnpage\" value=\""+ cur_page +"\" />";
			if(cur_page>1)
				paging+="<li><a href=\""+ __link(cur_page-1, link_full) +"\" aria-label=\"Next\">"
						+ "<span aria-hidden=\"true\">Pre</span></a></li>";
			if(max_pages>1){
				for(int i = start; i <= end; i++){
					if(i != cur_page)
						paging+="<li><a href=\""+ __link(i, link_full) +"\" aria-label=\"Next\">"
								+ "<span aria-hidden=\"true\">"+ i +"</span></a></li>";
					else
						paging+="<li class=\"active\"><a href=\""+ __link(cur_page, link_full)+ "\" aria-label=\"Next\">"
								+ "<span aria-hidden=\"true\">"+ cur_page +"</span></a></li>";
				}
			}
			if(cur_page <max_pages)
				paging+="<li><a href=\""+ __link(cur_page+1,link_full) +"\" aria-label=\"Next\">"
						+ "<span aria-hidden=\"true\">Next</span></a></li>";
			paging+="</ul>";
			paging+="</nav>";
			paging+="</div>";
		return paging;
	}
}
