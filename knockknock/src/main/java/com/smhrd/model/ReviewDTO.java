package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class ReviewDTO {
    
    @NonNull private String review_no;
    @NonNull private String proposal_no;
    @NonNull private String cust_no;
    @NonNull private String review_title;
    private String review_content;
    @NonNull private String review_ratings;
    @NonNull private String created_at;
    @NonNull private String pch_no;
}
