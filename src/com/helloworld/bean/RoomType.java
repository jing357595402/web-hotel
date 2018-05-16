package com.helloworld.bean;

public class RoomType {
	private int pk;
	private int id;
	private String roomType;
	private int bed;
	private float price;
	private float foregift;
	private String cl_room;
	private float cl_price;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getBed() {
		return bed;
	}
	public void setBed(int bed) {
		this.bed = bed;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getForegift() {
		return foregift;
	}
	public void setForegift(float foregift) {
		this.foregift = foregift;
	}
	public String getCl_room() {
		return cl_room;
	}
	public void setCl_room(String cl_room) {
		this.cl_room = cl_room;
	}
	public float getCl_price() {
		return cl_price;
	}
	public void setCl_price(float cl_price) {
		this.cl_price = cl_price;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public RoomType(int pk, int id, String roomType, int bed, float price,
			float foregift, String cl_room, float cl_price, String remark) {
		super();
		this.pk = pk;
		this.id = id;
		this.roomType = roomType;
		this.bed = bed;
		this.price = price;
		this.foregift = foregift;
		this.cl_room = cl_room;
		this.cl_price = cl_price;
		this.remark = remark;
	}
	public RoomType(int id, String roomType, int bed, float price,
			float foregift, String cl_room, float cl_price, String remark) {
		super();
		this.id = id;
		this.roomType = roomType;
		this.bed = bed;
		this.price = price;
		this.foregift = foregift;
		this.cl_room = cl_room;
		this.cl_price = cl_price;
		this.remark = remark;
	}
	public RoomType() {
		super();
	}
	
	
}
