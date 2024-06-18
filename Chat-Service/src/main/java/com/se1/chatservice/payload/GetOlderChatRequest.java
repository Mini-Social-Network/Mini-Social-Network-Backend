package com.se1.chatservice.payload;

import lombok.Data;

@Data
public class GetOlderChatRequest {
    private String topicId;
    private String toDate;
}

