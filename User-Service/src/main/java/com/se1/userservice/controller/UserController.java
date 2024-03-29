package com.se1.userservice.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.se1.userservice.model.AuthProvider;
import com.se1.userservice.model.User;
import com.se1.userservice.model.UserRole;
import com.se1.userservice.payload.ApiResponseEntity;
import com.se1.userservice.payload.FindRequest;
import com.se1.userservice.payload.UserDto;
import com.se1.userservice.payload.UserRequestDto;
import com.se1.userservice.payload.UserResponseDto;
import com.se1.userservice.repository.UserRepository;
import com.se1.userservice.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/user/internal")
@RequiredArgsConstructor
public class UserController {

	private final UserService service;

	private final UserRepository repository;

	private DateTimeFormatter localDateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

	private final ApiResponseEntity apiResponseEntity;

	private final ObjectMapper objectMapper;

	@PostMapping("/save")
	public ResponseEntity<?> save(@RequestBody UserRequestDto userRequestDto) {

		User user = convertUserRequestDtoToNewUserEntity(userRequestDto);

		User userSave = null;
		try {
			userSave = service.save(user);

			UserResponseDto userResponseDto = convertUserEntityToUserResponseEntity(userSave);
			return this.okResponse(userResponseDto, null);
		} catch (Exception e) {
			return this.badResponse(List.of(e.getMessage()));
		}
	}
	@PostMapping("/findByEmail")
	public ResponseEntity<?> findByEmail(@RequestParam("email") String email) throws Exception {

		try {
			service.processFindUserByEmail(email, apiResponseEntity);
		} catch (Exception e) {
			apiResponseEntity.setData(null);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok().body(apiResponseEntity);
	}

	@PostMapping("/findById")
	public ResponseEntity<?> findById(@RequestParam("id") Long id) throws Exception {

		try {
			service.processFindUserById(id, apiResponseEntity);
		} catch (Exception e) {
			apiResponseEntity.setData(null);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok().body(apiResponseEntity);
	}

	@PostMapping("/find")
	public ResponseEntity<?> find(@RequestBody FindRequest findRequest) {
		String findRequestStr;
		try {
			findRequestStr = objectMapper.writeValueAsString(findRequest);
			Map<String, Object> findRequestMap = objectMapper.readValue(findRequestStr, Map.class);
			service.processFindUser(findRequestMap, apiResponseEntity);
		} catch (JsonProcessingException e) {
			apiResponseEntity.setData(null);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok().body(apiResponseEntity);
	}

	@PostMapping("/findByName")
	public ResponseEntity<?> findByName(@RequestParam("name") String name) {
		try {
			service.processFindByName(name, apiResponseEntity);
		} catch (Exception e) {
			apiResponseEntity.setData(null);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok().body(apiResponseEntity);
	}

	@PostMapping("/existsByEmail")
	public ResponseEntity<?> existsByEmail(@RequestParam("email") String email) {

		Boolean existsByEmail = repository.existsByEmail(email);

		try {
			return this.okResponse(existsByEmail, null);
		} catch (Exception e) {
			return this.badResponse(List.of(e.getMessage()));
		}
	}

	private User convertUserRequestDtoToNewUserEntity(UserRequestDto userRequestDto) {
		User user = new User();
		user.setId(userRequestDto.getId() != null ? userRequestDto.getId() : null);
		user.setName(userRequestDto.getName());
		user.setEmail(userRequestDto.getEmail());
		user.setImageUrl(userRequestDto.getImageUrl());
		user.setBirthday(
				userRequestDto.getBirthday() != null ? LocalDate.parse(userRequestDto.getBirthday(), localDateFormatter)
						: null);
		user.setEmailVerified(false);
		user.setPassword(userRequestDto.getPassword());
		user.setProvider(AuthProvider.valueOf(userRequestDto.getProvider()));
		user.setProviderId(userRequestDto.getProviderId());
		user.setRole(UserRole.valueOf(userRequestDto.getRole()));
		user.setTopicId(UUID.randomUUID().toString());
		user.setIsExpert(false);
		user.setStatus(new Byte("2"));
		user.setDelFlg(false);
		user.setCreateAt(new Date());
		user.setUpdateAt(new Date());

		return user;
	}

	private UserResponseDto convertUserEntityToUserResponseEntity(User user) {
		UserResponseDto userResponseDto = null;
		if (user != null) {
			userResponseDto = new UserResponseDto();
			userResponseDto.setId(user.getId());
			userResponseDto.setEmail(user.getEmail());
			userResponseDto.setEmailVerified(user.getEmailVerified());
			userResponseDto.setImageUrl(user.getImageUrl());
			userResponseDto.setName(user.getName());
			userResponseDto.setPassword(user.getPassword());
			userResponseDto.setProvider(user.getProvider());
			userResponseDto.setProviderId(user.getProviderId());
			userResponseDto.setRole(user.getRole().name());
			userResponseDto.setStatus(user.getStatus());
		}

		return userResponseDto;
	}

	private ResponseEntity<?> badResponse(List<String> errorMessage) {
		apiResponseEntity.setData(null);
		apiResponseEntity.setErrorList(errorMessage);
		apiResponseEntity.setStatus(0);
		return ResponseEntity.badRequest().body(apiResponseEntity);
	}

	private ResponseEntity<?> okResponse(Object data, List<String> errorMessage) {
		apiResponseEntity.setData(data);
		apiResponseEntity.setErrorList(errorMessage);
		apiResponseEntity.setStatus(1);
		return ResponseEntity.ok().body(apiResponseEntity);
	}
}
