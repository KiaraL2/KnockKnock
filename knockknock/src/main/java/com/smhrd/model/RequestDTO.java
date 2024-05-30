package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RequestDTO {
	private int req_no;
	private String req_title;
	private String req_content;
	private String req_file;
	private String created_at;
	private int cust_no;
	private String req_price;
	private String req_cate;
	private String is_canceled;
	private String is_completed;
	private String expired_at;
	private int proposal_count;
	
	public RequestDTO(int cust_no, String req_title, String req_file, String req_cate, String req_content, String req_price) {
		this.cust_no = cust_no;
		this.req_title = req_title;
		this.req_file = req_file;
		this.req_cate = req_cate;
		this.req_content = req_content;
		this.req_price = req_price;
	}
}
