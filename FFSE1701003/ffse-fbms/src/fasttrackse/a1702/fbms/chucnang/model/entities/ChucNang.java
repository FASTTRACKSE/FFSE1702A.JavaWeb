package fasttrackse.a1702.fbms.chucnang.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
/*import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;*/
import javax.persistence.Table;

/*@NamedQueries(  
	    {  
	        @NamedQuery(  
	        name = "findChucNangByCode",  
	        query = "FROM ChucNang e WHERE e.ma_chuc_nang = :name"  
	        )  
	    }  
	)  */

@Entity
@Table(name = "chuc_nang")

/*@NamedNativeQueries({ @NamedNativeQuery(name = "@SQL_GET_ALL_ADDRESS", 
query = "select emp_id, address_line1, city, zipcode from Address") })*/

public class ChucNang{

	@Id
	@Column(name = "ma_chuc_nang")
	private String ma_chuc_nang;

	private String ten_chuc_nang;

	private int trang_thai;

	public String getMa_chuc_nang() {
		return ma_chuc_nang;
	}

	public void setMa_chuc_nang(String ma_chuc_nang) {
		this.ma_chuc_nang = ma_chuc_nang;
	}

	public String getTen_chuc_nang() {
		return ten_chuc_nang;
	}

	public void setTen_chuc_nang(String ten_chuc_nang) {
		this.ten_chuc_nang = ten_chuc_nang;
	}

	public int getTrang_thai() {
		return trang_thai;
	}

	public void setTrang_thai(int trang_thai) {
		this.trang_thai = trang_thai;
	}

	public ChucNang(String ma_chuc_nang, String ten_chuc_nang, int trang_thai) {
		super();
		this.ma_chuc_nang = ma_chuc_nang;
		this.ten_chuc_nang = ten_chuc_nang;
		this.trang_thai = trang_thai;
	}

	public ChucNang() {
		super();
	}

	@Override
	public String toString() {
		return "ChucNang [ma_chuc_nang=" + ma_chuc_nang + ", ten_chuc_nang=" + ten_chuc_nang + ", trang_thai="
				+ trang_thai + "]";
	}

}
