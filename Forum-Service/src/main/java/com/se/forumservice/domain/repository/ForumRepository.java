package com.se.forumservice.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.se.forumservice.domain.entity.Forum;

@Repository
public interface ForumRepository extends JpaRepository<Forum, Integer>{

	
}
