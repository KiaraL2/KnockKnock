package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
public class CustomerDTO {
	private int cust_no;
	@NonNull private String cust_id;
	@NonNull private String cust_pw;
	@NonNull private String cust_nick;
	@NonNull private String cust_addr;
	@NonNull private String cust_email;
	@NonNull private String cust_phone;
	@NonNull private String cust_gender;
	@NonNull private String cust_birthdate;
	private Date joined_at;
	private String is_deleted;
	private String cust_img;
	@Override
	public String toString() {
		return "CustomerDTO [cust_id=" + cust_id + ", cust_pw=" + cust_pw + ", cust_nick=" + cust_nick + ", cust_addr="
				+ cust_addr + ", cust_email=" + cust_email + ", cust_phone=" + cust_phone + ", cust_gender="
				+ cust_gender + ", cust_birthdate=" + cust_birthdate + "]";
	}
	
}
