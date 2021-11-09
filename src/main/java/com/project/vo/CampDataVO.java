package com.project.vo;

public class CampDataVO {
	int idx;
	String name;
	String address;
	String latitude;
	String longitude;
	String url;
	String etc;
	String inTime;
	String outTime;
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getInTime() {
		return inTime;
	}
	public void setInTime(String inTime) {
		this.inTime = inTime;
	}
	public String getOutTime() {
		return outTime;
	}
	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}
	@Override
	public String toString() {
		return "CampDataVO [idx=" + idx + ", name=" + name + ", address=" + address + ", latitude=" + latitude
				+ ", longitude=" + longitude + ", url=" + url + ", etc=" + etc + ", inTime=" + inTime + ", outTime="
				+ outTime + "]";
	}
	
	
}
