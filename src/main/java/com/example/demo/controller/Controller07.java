package com.example.demo.controller;

import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

import jakarta.servlet.http.*;

@Controller
@RequestMapping("sub7")
public class Controller07 {

	@RequestMapping("link1")
	public void method1(HttpServletRequest req) {
		// 1.
		// 2.
		// 3. add attribute
		req.setAttribute("myName", "서태웅");
		
		// 4. /WEB-INF/views/sub7/link1.jsp 로 포워드
	}
	
	@RequestMapping("link2")
	public String method2(Model model) {
		
		// 3. add attribute
		model.addAttribute("myName", "채치수");
		
		return "/sub7/link1";
	}
	
	// 경로 : /sub7/link3
	// method3 작성
	// /WEB-INF/views/sub7/link3.jsp 로 포워드
	
	@RequestMapping("link3")
	public void method3(Model model) {
		
		model.addAttribute("address", "인천");
	}
	
	@RequestMapping("link4")
	public void method4(Model model) {
		model.addAttribute("list", List.of("java", "spring"));
	}
	
	// method5 작성
	
	@RequestMapping("link5")
	public void method5(Model model) {
		Map<String, Object> map = new HashMap<>();
		map.put("address", "인천");
		map.put("email", "구글");
		map.put("age", "33");
		
		model.addAttribute("myMap", map);
	}
	
	@RequestMapping("link6")
	public void method6(Model model) {
		model.addAttribute("name", "이한나");
		model.addAttribute("job", "매니저");
		model.addAttribute("hobby", List.of("영화", "독서", "TV"));

	}
	
	@RequestMapping("link7")
	public void method7(Model model) {
		model.addAttribute("age", 40);
		model.addAttribute("country", "한국");
		model.addAttribute("movieList", new String[] {"괴물", "기생충"});
	}
	
	@RequestMapping("link8")
	public void method8(Model model) {
		Dto01 o1 = new Dto01();
		o1.setName("박지성");
		o1.setAge(40);
		
		model.addAttribute("player", o1);
	}
	
	// method9 작성
	// Dto02 클래스 작성
	
	// 경로 : /sub7/link9로 요청오면
	// Dto02 객체 만들어서 model에 attribute로 추가
	// view : /sub7/link9로 포워드
	@RequestMapping("link9")
	public void method9(Model model) {
		Dto02 o2 = new Dto02();
		o2.setModel("k5");
		o2.setPrice(2000);
		o2.setCompany("kia");
		
		model.addAttribute("value", o2);
	}
	
	@RequestMapping("link10")
	public void method10(Model model) {
		Dto04 obj = new Dto04();
		obj.setName("송태섭");
		obj.setAge(20);
		
		model.addAttribute("val", obj);
	}
	
}




