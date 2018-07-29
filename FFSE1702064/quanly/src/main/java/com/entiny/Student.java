package com.entiny;

import java.util.List;

public class Student {
int studentID;
String firstName;
String lastName;
int namSinh;
String gioiTinh;
String email;
int dienThoai;
String diaChi;
String maLop;
private List<Student> studentList;
public Student() {

}
public Student(int studentID, String firstName, String lastName, int namSinh, String gioiTinh, String email,
		int dienThoai, String diaChi, String maLop) {
	super();
	this.studentID = studentID;
	this.firstName = firstName;
	this.lastName = lastName;
	this.namSinh = namSinh;
	this.gioiTinh = gioiTinh;
	this.email = email;
	this.dienThoai = dienThoai;
	this.diaChi = diaChi;
	this.maLop = maLop;
}
public Student(String firstName, String lastName, int namSinh, String gioiTinh, String email, int dienThoai,
		String diaChi, String maLop) {
	super();
	this.firstName = firstName;
	this.lastName = lastName;
	this.namSinh = namSinh;
	this.gioiTinh = gioiTinh;
	this.email = email;
	this.dienThoai = dienThoai;
	this.diaChi = diaChi;
	this.maLop = maLop;
}
public int getStudentID() {
	return studentID;
}
public void setStudentID(int studentID) {
	this.studentID = studentID;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public int getNamSinh() {
	return namSinh;
}
public void setNamSinh(int namSinh) {
	this.namSinh = namSinh;
}
public String getGioiTinh() {
	return gioiTinh;
}
public void setGioiTinh(String gioiTinh) {
	this.gioiTinh = gioiTinh;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getDienThoai() {
	return dienThoai;
}
public void setDienThoai(int dienThoai) {
	this.dienThoai = dienThoai;
}
public String getDiaChi() {
	return diaChi;
}
public void setDiaChi(String diaChi) {
	this.diaChi = diaChi;
}
public String getMaLop() {
	return maLop;
}
public void setMaLop(String maLop) {
	this.maLop = maLop;
}
}
