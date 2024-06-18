package com.se1.chatservice.model;

import com.se1.chatservice.model.Chat;
import lombok.Data;

import java.util.Date;

@Data
public class ChatDTO {

    private Long id;
    private String topicId;
    private String content;
    private Date createAt;
    private Long userId;
    private boolean isFile;

    public ChatDTO(Chat chat) {
        this.id = chat.getId();
        this.topicId = chat.getTopicId();
        this.content = chat.getContent();
        this.createAt = chat.getCreateAt();
        this.userId = chat.getUserId();
        this.isFile = chat.getIsFile();
    }
}
