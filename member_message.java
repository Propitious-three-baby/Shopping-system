package tools;

public class member_message {
	private String id;
	private String nickname;
	private String name;
	private String sex;
	private String tel;
	private String bank_card;
	private String address;
	private String password;
	
//getXXX()方法
	public String getId() {
		return id;
	}
	public String getNickname() {
		return nickname;
	}
	public String getName() {
		return name;
	}	
	public String getSex() {
		return sex;
	}	
	public String getTel() {
		return tel;
	}	
	public String getBank_card() {
		return bank_card;
	}	
	public String getAddress() {
		return address;
	}	
	public String getPassword() {
		return password;
	}
	
//setXXX()方法
	public void setId(String id) {
		this.id=id;
	}
	public void setNickname(String nickname) {
		this.nickname=nickname;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setSex(String sex) {
		this.sex=sex;
	}
	public void setTel(String tel) {
		this.tel=tel;
	}
	public void setBank_card(String bank_card) {
		this.bank_card=bank_card;
	}
	public void setAddress(String address) {
		this.address=address;
	}
} 
