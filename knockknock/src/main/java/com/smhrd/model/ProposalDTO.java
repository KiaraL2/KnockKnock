package com.smhrd.model;

import java.sql.Date;

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
public class ProposalDTO {
	
	private int proposal_no;
	@NonNull private int seller_no;
	@NonNull private String proposal_name;
	@NonNull private int proposal_price;
	@NonNull private String proposal_products;
	@NonNull private String proposal_description;
	@NonNull private int req_no;
	private String is_chosen;
	private String created_at;
	private String is_paid;
	
//	public ProposalDTO(int seller_no, String proposal_name, String proposal_products, String proposal_description, int proposal_price) {
//        this.seller_no = seller_no;
//        this.proposal_name = proposal_name;
//        this.proposal_products = proposal_products;
//        this.proposal_description = proposal_description;
//        this.proposal_price = proposal_price;
//    }
	

    }

