package com.se1.systemservice.domain.rabbitMQ;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.se1.systemservice.config.MqConfig;
import com.se1.systemservice.config.SCMConstant;
import com.se1.systemservice.domain.payload.dto.ContactDto;
import com.se1.systemservice.domain.payload.dto.NotifyDto;
import com.se1.systemservice.domain.rabbitMQ.dto.ChatDto;
import com.se1.systemservice.domain.rabbitMQ.dto.RabbitRequest;
import com.se1.systemservice.domain.service.SystemListenerService;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class SystemListener {

	@Autowired
	private ObjectMapper objectMapper;
	
	@Autowired
	private SystemListenerService systemListenerService;
	
	@RabbitListener(queues = MqConfig.SYSTEM_QUEUE)
	public void listener(RabbitRequest rabbitRequest) throws JsonProcessingException {
		log.info("SYSTEM_QUEUE listener message:  {}", objectMapper.writeValueAsString(rabbitRequest));
		
		String action = rabbitRequest.getAction();
		switch (action) {
		case SCMConstant.SYSTEM_CONTACT:
			ContactDto contactDto = new ContactDto();
			contactDto = objectMapper.readValue(objectMapper.writeValueAsString(rabbitRequest.getData()), ContactDto.class);
			systemListenerService.processActionSystemContact(contactDto);
			break;

		case SCMConstant.SYSTEM_NOTIFY:
			NotifyDto notifyDto = new NotifyDto();
			notifyDto = objectMapper.readValue(objectMapper.writeValueAsString(rabbitRequest.getData()), NotifyDto.class);
			systemListenerService.processActionSystemNotify(notifyDto);
			break;
		
		case SCMConstant.SYSTEM_CHAT:
			ChatDto chatDto = new ChatDto();
			chatDto = objectMapper.readValue(objectMapper.writeValueAsString(rabbitRequest.getData()), ChatDto.class);
			systemListenerService.processActionSystemChat(chatDto);
			break;
		case SCMConstant.SYSTEM_CHAT_STATUS:
			break;
		default:
			break;
		}
	}
}