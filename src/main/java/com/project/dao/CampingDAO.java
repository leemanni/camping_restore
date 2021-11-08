package com.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.project.vo.CampingVO;

public interface CampingDAO {

	void insert(CampingVO campingVO);

	int selectCount(int campNumber);


	ArrayList<CampingVO> selectList(HashMap<String, Integer> hmap);

	void up(int idx);

	void down(int idx);

	int loginCheck(HashMap<String, String> hmap);
	
	void update(CampingVO campingVO);

	CampingVO selectByIdx(int idx);

}
