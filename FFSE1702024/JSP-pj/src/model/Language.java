package model;

import java.util.HashMap;
import java.util.Map;

public class Language {
     public Map<String, String> englishLanguage(){
    	 Map<String, String> map =new HashMap<>();
    	 map.put("List.Tittle", "List Student");
    	 map.put("List.Add", "ADD");
    	 map.put("List.ID", "ID");
    	 map.put("List.Name", "Name");
    	 map.put("List.Age", "Age");
    	 map.put("List.Class", "Class");
    	 map.put("List.Dress", "Dress");
    
    	 return map;
     }
     public Map<String, String> vietnameseLanguage(){
    	 Map<String, String> map =new HashMap<>();
    	 map.put("List.Tittle", "Danh Sách Sinh Viên");
    	 map.put("List.Add", "Thêm mới khách hàng");
    	 map.put("List.ID", "Mã Sinh Viên");
    	 map.put("List.Name", "Tên");
    	 map.put("List.Age", "Tuổi");
    	 map.put("List.Class", "Lớp");
    	 map.put("List.Dress", "Địa Chỉ");
    	 
    	 return map;
     }
}
