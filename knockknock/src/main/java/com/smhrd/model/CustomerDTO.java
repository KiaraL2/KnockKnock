package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CustomerDTO {
	    // 구매자 식별자 
	    private int cust_no;

	    // 구매자 아이디 
	    private String cust_id;

	    // 구매자 비밀번호 
	    private String cust_pw;

	    // 구매자 별명 
	    private String cust_nick;

	    // 구매자 이메일 
	    private String cust_email;

	    // 구매자 전화번호 
	    private String cust_phone;

	    // 구매자 성별 
	    private String cust_gender;

	    // 구매자 생년월일 
	    private String cust_birthdate;

	    // 구매자 가입일자 
	    private String joined_at;

	    // 삭제 여부 
	    private String is_deleted;

	    // 구매자 이미지 
	    private String cust_img;
}
