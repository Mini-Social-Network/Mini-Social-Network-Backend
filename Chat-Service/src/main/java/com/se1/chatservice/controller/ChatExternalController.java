package com.se1.chatservice.controller;

import java.util.List;

import com.se1.chatservice.model.ChatDTO;
import com.se1.chatservice.payload.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.se1.chatservice.service.ChatService;

@RestController
@RequestMapping("/chat/external")
public class ChatExternalController {
	
	@Autowired
	private ChatService chatService;
	
	@Autowired
	private ApiResponseEntity apiResponseEntity;
	
	@Autowired
	private ObjectMapper mapper;
	
	@PostMapping("/getAllChat")
	public ResponseEntity<?> getAllChat(@RequestHeader("user_detail") String userDetailHeader, @RequestBody GetAllChatRequest request) throws JsonMappingException, JsonProcessingException{
		UserDetail userDetail = mapper.readValue(userDetailHeader, UserDetail.class);
		
		try {
			chatService.processGetAllChat(request, userDetail,apiResponseEntity);
		} catch (Exception e) {
			apiResponseEntity.setData(false);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok(apiResponseEntity);
	}

	@PostMapping("/getNewChat")
	public ResponseEntity<?> getNewChat(@RequestHeader("user_detail") String userDetailHeader, @RequestBody GetNewChatRequest request) throws JsonMappingException, JsonProcessingException {
		UserDetail userDetail = mapper.readValue(userDetailHeader, UserDetail.class);

		try {
			List<ChatDto> newMessages = chatService.processGetNewMessages2(request.getTopicId(), request.getFromDate());
			apiResponseEntity.setData(newMessages.get(0));
			apiResponseEntity.setStatus(1);
		} catch (Exception e) {
			apiResponseEntity.setData(false);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok(apiResponseEntity);
	}

	@PostMapping("/getOlderChat")
	public ResponseEntity<?> getOlderChat(@RequestHeader("user_detail") String userDetailHeader, @RequestBody GetOlderChatRequest request) throws JsonMappingException, JsonProcessingException {
		UserDetail userDetail = mapper.readValue(userDetailHeader, UserDetail.class);

		try {
			List<ChatDTO> olderMessages = chatService.processGetOlderMessages(request.getTopicId(), request.getToDate());
			apiResponseEntity.setData(olderMessages);
			apiResponseEntity.setStatus(1);
		} catch (Exception e) {
			apiResponseEntity.setData(false);
			apiResponseEntity.setErrorList(List.of(e.getMessage()));
			apiResponseEntity.setStatus(0);
		}
		return ResponseEntity.ok(apiResponseEntity);
	}
}
