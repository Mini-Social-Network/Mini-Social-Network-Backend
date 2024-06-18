package com.se1.chatservice.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.se1.chatservice.model.Chat;
import com.se1.chatservice.model.ChatDTO;


@Repository
public interface ChatRepository extends CrudRepository<Chat, Long>{

	boolean existsByTopicId(String topicId);

	@Query("Select c from Chat c where c.topicId = ?1 AND c.status = 0")
	List<Chat> findNewChat(String topicId);

	@Query("UPDATE Chat c Set c.status = 1 where c.id IN :chatIds")
	List<Integer> updateStatusChat(@Param("chatIds") List<Long> chatIds);

	List<Chat> findByTopicIdAndCreateAtAfter(String topicId, Date fromDate);

	@Query("SELECT new com.se1.chatservice.model.ChatDTO(c) FROM Chat c WHERE c.topicId = :topicId AND c.createAt < :toDate ORDER BY c.createAt DESC")
	List<ChatDTO> findOlderMessages(@Param("topicId") String topicId, @Param("toDate") Date toDate);
}
