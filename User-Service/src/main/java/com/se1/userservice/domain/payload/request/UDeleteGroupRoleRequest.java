package com.se1.userservice.domain.payload.request;

import java.util.List;

import lombok.Data;

@Data
public class UDeleteGroupRoleRequest {
	private Long id;
	String name;
	private List<String> roles;
}
