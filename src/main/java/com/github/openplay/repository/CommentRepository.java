package com.github.openplay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.github.openplay.model.CommentInterface;
import com.github.openplay.model.impl.Comment;

@Repository("commentRepository")
public interface CommentRepository extends JpaRepository<Comment, Long> {

	
}

