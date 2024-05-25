package com.smhrd.model;

import lombok.Data;

@Data
public class RequestDTO {
	
	private int req_no;
	private String req_title;
	private String req_content;
	private String req_file;
	private String created_at;
	private String cust_no;
	private String req_price;
	private String req_cate;
	private String is_canceled;
	private String is_completed;
	private String expired_at;

}
