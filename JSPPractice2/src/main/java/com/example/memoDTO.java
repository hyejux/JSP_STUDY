package com.example;

public class memoDTO {
	
    private String memo;
    private int pw;
    
    
    // 기본 생성자
    public memoDTO() {}
    
    public memoDTO(String memo, int pw) {
    	this.memo = memo;
    	this.pw = pw;
    }
    
    
    //, getter/setter
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getPw() {
		return pw;
	}
	public void setPw(int pw) {
		this.pw = pw;
	}
	
	
	//toString
	@Override
	public String toString() {
		return "memoDTO [memo=" + memo + ", pw=" + pw + "]";
	}
    
 
    
	

}
