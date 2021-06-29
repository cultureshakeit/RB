package com.rental.util;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BoardCookie {
	
	public void make_cookie(String cookie_name, ArrayList<String> ids, HttpServletResponse response) {
		
		Cookie cookie = new Cookie(cookie_name, "_");
		
		for(String id : ids) {
			
			cookie.setValue(cookie.getValue() + id + "_");
			
		}
		
		cookie.setMaxAge(1 * 24 * 60 * 60);
		
		response.addCookie(cookie);
		
	}
	
	public boolean check_cookie(String cookie_name, String id, HttpServletRequest request, HttpServletResponse response) {
		
		//result == false --> views++
		boolean result = false;
		
		boolean check = false;
		
		Cookie[] cookies = request.getCookies();
		
		log.info("start cookie check");
		
		for(Cookie cookie : cookies) {
			
			if(cookie.getName().equals(cookie_name)) {
				
				log.info("catch cookie");
				
				check = true;
				
				if(cookie.getValue().contains("_" + id + "_")) {

					log.info("id is already in cookie");
					
					result = true;
					
				} else {
					
					log.info("add id in cookie");
					
					cookie.setValue(cookie.getValue() + id + "_");
					
					response.addCookie(cookie);
					
				}
				
				break;
				
			}
			
		}
		
		if(!check) {
			
			log.info("make cookie");
			
			Cookie newCookie = new Cookie(cookie_name, "_" + id + "_");
			
			newCookie.setMaxAge(1 * 24 * 60 * 60);
			
			response.addCookie(newCookie);
			
		}
		
		return result;
		
	}

}
