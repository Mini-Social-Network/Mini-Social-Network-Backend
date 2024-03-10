package com.se.forumservice.api.form;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class ForumUpdateDto {

	@NotNull
	private Integer forumId;
	
	@NotEmpty
	@NotBlank
	private String forumName;
	
	private Integer forumParent;

}
