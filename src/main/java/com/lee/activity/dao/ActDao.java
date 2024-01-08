package com.lee.activity.dao;

import com.lee.activity.model.ActVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 使用JPA完成資料庫增刪改查
 * JpaRepository<T, ID>
 * T:表格VO
 * ID:對應主鍵的類型
 * */
@Repository
public interface ActDao extends JpaRepository<ActVO, Integer> {

    List<ActVO> findTop10ByOrderByActCrTimeDesc();

}
