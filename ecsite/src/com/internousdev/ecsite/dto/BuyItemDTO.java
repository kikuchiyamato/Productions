package com.internousdev.ecsite.dto;

public class BuyItemDTO {
	public int id;
	public String itemName;
	public String itemPrice;
	public String result;

	public int getId() {
	return id;
	}
	public void setId(int id) {
	this.id = id;
	}
	public String getItemName() {
	return itemName;
	}
	public void setItemName(String itemName) {
	this.itemName = itemName;
	}
	public String getItemPrice() {
	return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
	this.itemPrice = itemPrice;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result=result;
	}

}
