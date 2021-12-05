
public class User {
private String fullname;
private String email;
private int phone;
private String department;
private String level;
private String password;
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getPhone() {
	return phone;
}
public void setPhone(int phone) {
	this.phone = phone;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getLevel() {
	return level;
}
public void setLevel(String level) {
	this.level = level;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public User() {
	super();
}
public User(String fullname, String email, int phone, String department, String level, String password) {
	super();
	this.fullname = fullname;
	this.email = email;
	this.phone = phone;
	this.department = department;
	this.level = level;
	this.password = password;
}
}
