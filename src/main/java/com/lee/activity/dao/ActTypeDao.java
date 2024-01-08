package com.lee.activity.dao;

import com.lee.activity.model.ActTypeVO;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ActTypeDao extends JpaRepository<ActTypeVO, Integer> {
}
