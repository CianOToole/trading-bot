/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.tradingbot;

/**
 *
 * @author Cian
 */
public class StatusResponse {
	enum Status {
	 SUCCESS,
	 ERROR
	}
	

    final private String status;

    StatusResponse(enum status) {
        this.status = status;
    }

    public enum getStatus() {
        return status;
    }
}
