package com.goose.spring.aop;

import org.springframework.stereotype.Component;

@Component
public class Camera {
	
	public void snap() throws Exception{
		// joint point - anywhere in code where aspect can run some advice
		// in spring -> only one joint point : method execution
		
		System.out.println("SNAP");
		//throw new Exception("It's a lion. Get in the car!");
	}
	
	
	public void snap(int exposure) {
		System.out.println("SNAP. Exposure: " + exposure);
	}
	
	public String snap(String name) {
		System.out.println("SNAP. Name: " + name);
		return name;
	}
	
	public void snapNightTime() {
		System.out.println("SNAP. Night mode.");
	}
}
