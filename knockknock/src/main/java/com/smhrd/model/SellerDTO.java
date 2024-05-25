package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@Getter
@Setter

public class SellerDTO {
	private int seller_no;
	@NonNull private String seller_id;
	@NonNull private String seller_pw;
	@NonNull private String seller_nick;
	@NonNull private String seller_addr;
	@NonNull private String seller_url;
	@NonNull private String seller_email;
	@NonNull private String seller_phone;
	private String seller_grade;
	@NonNull private String seller_offline;
	private String seller_kits;
	private String seller_product;
	private String seller_service;
	private String seller_img;
	private String seller_portfolio;
	private String seller_introduce;
    @NonNull private String seller_regist_num;
    private String is_deleted;
}