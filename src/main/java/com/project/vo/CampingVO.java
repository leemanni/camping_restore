package com.project.vo;

import java.sql.Date;

/**
 * @author cjffy
 *	캠핑장별 댓글
 */
public class CampingVO {
	private int idx;
	private String name;
	private String content;
	private int hate;
	private String pw;
	private int up;
	private int down;
	private int campNumber;
	private Date writeDate;
	
	public CampingVO() {
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHate() {
		return hate;
	}

	public void setHate(int hate) {
		this.hate = hate;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getUp() {
		return up;
	}

	public void setUp(int up) {
		this.up = up;
	}

	public int getDown() {
		return down;
	}

	public void setDown(int down) {
		this.down = down;
	}

	public int getCampNumber() {
		return campNumber;
	}

	public void setCampNumber(int campNumber) {
		this.campNumber = campNumber;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "CampingVO [idx=" + idx + ", name=" + name + ", content=" + content + ", hate=" + hate + ", pw=" + pw
				+ ", up=" + up + ", down=" + down + ", campNumber=" + campNumber + ", writeDate=" + writeDate + "]";
	}
	
	
}
