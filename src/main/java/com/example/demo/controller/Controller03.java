package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("sub3")
public class Controller03 {
	
	@RequestMapping("link1")
	public void method3() {
		System.out.println("method3 실행");
	}
	
	@RequestMapping("link2")
	public void method4() {
		System.out.println("method4 실행");
	}
}
