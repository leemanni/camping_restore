package com.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.project.vo.CampingVO;

public interface CampingDAO {

	void insert(CampingVO campingVO);

	int selectCount(int campNumber);


	ArrayList<CampingVO> selectList(HashMap<String, Integer> hmap);


}
