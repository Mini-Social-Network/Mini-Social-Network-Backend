package com.se1.authservice.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class User {
	private Long id;
    private String name;
    private String email;
    private String imageUrl;
    private Boolean emailVerified;
    private String password;
    private AuthProvider provider;
    private String providerId;
    private String role;
    private int status;
    private Boolean isExpert;
    private String topicId;
	private Double rating;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastTime;
}
