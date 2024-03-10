package com.se.forumservice.domain.db.read;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.se.forumservice.domain.entity.Forum;

@Mapper
public interface RForumMapper {

	List<Forum> getAllForumParent();

	List<Forum> findById(@Param("forumId") Integer forumId);
}
