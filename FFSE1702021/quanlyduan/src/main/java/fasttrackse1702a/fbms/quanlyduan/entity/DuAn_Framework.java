package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="framework_du_an")
public class DuAn_Framework implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="ma_du_an")
	private String maDuAn;
	@Id
	@Column(name="ma_framework")
	private String maFramework;
	
}
