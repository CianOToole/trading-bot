/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;


import com.google.gson.JsonElement;

/**
 *
 * @author Cian
 */
public class StandardResponce {

	private StatusResponse status;
	private String message;
	private JsonElement data;

	public StandardResponce(StatusResponse status) {
		this.status = status;
	}

	public StandardResponce(StatusResponse status, String message) {
		this.status = status;
		this.message = message;
	}

	public StandardResponce(StatusResponse status, JsonElement data) {
		this.status = status;
		this.data = data;
	}

	public StatusResponse getStatus() {
		return status;
	}

	public void setStatus(StatusResponse status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public JsonElement getData() {
		return data;
	}

	public void setData(JsonElement data) {
		this.data = data;
	}
}
