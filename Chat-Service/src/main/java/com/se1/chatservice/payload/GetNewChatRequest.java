package com.se1.chatservice.payload;

import java.util.Date;

public class GetNewChatRequest {
    private String topicId;
    private Date fromDate;

    // Getters and setters
    public String getTopicId() {
        return topicId;
    }

    public void setTopicId(String topicId) {
        this.topicId = topicId;
    }

    public Date getFromDate() {
        return fromDate;
    }

    public void setFromDate(Date fromDate) {
        this.fromDate = fromDate;
    }
}
