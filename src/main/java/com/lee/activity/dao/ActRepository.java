package com.lee.activity.dao;

import com.lee.activity.model.ActVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActRepository extends JpaRepository<ActVO, Integer> {
    // Spring Data JPA 提供了許多內建的 CRUD 操作
}
