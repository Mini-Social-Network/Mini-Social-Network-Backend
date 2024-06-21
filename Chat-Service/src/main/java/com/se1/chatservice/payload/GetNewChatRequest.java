package com.se1.chatservice.payload;

import lombok.Data;

import java.util.Date;

@Data
public class GetNewChatRequest {
    private String topicId;
    private Date fromDate;
}