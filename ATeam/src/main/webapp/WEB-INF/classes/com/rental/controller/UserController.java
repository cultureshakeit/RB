package com.rental.controller;

import java.io.File;
import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.rental.domain.ApplyVO;
import com.rental.domain.Criteria;
import com.rental.domain.PageDTO;
import com.rental.domain.ProductVO;
import com.rental.domain.ResTableVO;
import com.rental.service.ApplyService;
import com.rental.service.ChartService;
import com.rental.service.ProductService;
import com.rental.service.ReplyService;
import com.rental.service.ResTableService;
import com.rental.service.UserLogService;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping(value = "/users/*", method = { RequestMethod.GET, RequestMethod.POST })
public class UserController {

	@Setter(onMethod_ = { @Autowired })
	private UserLogService logser;

	@Setter(onMethod_ = { @Autowired })
	private ReplyService rs;

	@Setter(onMethod_ = { @Autowired })
	private ChartService chart;

	@Setter(onMethod_ = { @Autowired })
	private ResTableService rst;

	@Setter(onMethod_ = { @Autowired })
	private ProductService ps;

	@Setter(onMethod_ = { @Autowired })
	private ApplyService service;

	@GetMapping("/index")
	public void index(@RequestParam("userid") String userid, Model model, Criteria cri) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userid", userid);

		Gson gson = new Gson();
		String DataToJson = gson.toJson(chart.Jdata(userid));
		System.out.println(DataToJson);
		model.addAttribute("count", rst.count(userid));
		model.addAttribute("JsonData", DataToJson);
		model.addAttribute("userid", userid);
		model.addAttribute("loginfo", logser.UserLogInfo(userid));
		model.addAttribute("reply", rs.UserReply(userid));
		model.addAttribute("list", rst.List(map));
	}

	@GetMapping("/profile")
	public void profile(String userid, Model model) {
		model.addAttribute("user", logser.users(userid));
		model.addAttribute("userid", userid);

	}

	@GetMapping("/Reservation")
	public void Reservation(String userid, Model model, Criteria cri) {
		if (ps.AllList() != null) {
			for (ProductVO pvo : ps.AllList()) {
				if (pvo.getMany() == 0 && pvo.getStatus() == 1) {
					ps.statusminus(pvo.getNum());
				}
			}
		}
		// 다중 파라미터를 mybatis로 보낼떄
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("userid", userid);
		map.put("pageNum", cri.getPageNum());
		map.put("amount", cri.getAmount());
		try {
			log.info("카운트  : {}",rst.count(userid).getCount());
			model.addAttribute("count", rst.count(userid));
			model.addAttribute("res", rst.pageList(map));
			model.addAttribute("userid", userid);
			model.addAttribute("pageMaker", new PageDTO(cri, rst.count(userid).getCount()));
		} catch (NullPointerException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getClass().getMethods());
		}

	}
	@GetMapping("/searchDate")
	public String Reservation(@RequestParam("userid") String userid, ResTableVO rvo,Model model, Criteria cri) {
		for (ProductVO pvo : ps.AllList()) {
			if (pvo.getMany() == 0 && pvo.getStatus() == 1) {
				ps.statusminus(pvo.getNum());
			}
		}
		//날짜 검색
		String monthN;
		if(rvo.getMonth().equals("January")) {
			monthN="01";
		}else if(rvo.getMonth().equals("February")) {
			monthN="02";
		}else if(rvo.getMonth().equals("March")) {
			monthN="03";
		}else if(rvo.getMonth().equals("April")) {
			monthN="04";
		}else if(rvo.getMonth().equals("May")) {
			monthN="05";
		}else if(rvo.getMonth().equals("June")) {
			monthN="06";
		}else if(rvo.getMonth().equals("July")) {
			monthN="07";
		}else if(rvo.getMonth().equals("Auguset")) {
			monthN="08";
		}else if(rvo.getMonth().equals("September")) {
			monthN="09";
		}else if(rvo.getMonth().equals("October")) {
			monthN="10";
		}else if(rvo.getMonth().equals("Nobvember")) {
			monthN="11";
		}else {
			monthN="12";
		}
		String days = "";
		if(Integer.parseInt(rvo.getDay()) < 10) {
			days="0"+days + rvo.getDay();
		}
		String Fullday = "2020/"+monthN + "/" + rvo.getDay();
		System.out.println("날짜 입니다 한번 조십시오"+Fullday);
		// 다중 파라미터를 mybatis로 보낼떄
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("days", Fullday);

		map.put("userid", userid);
		map.put("pageNum", cri.getPageNum());
		map.put("amount", cri.getAmount());
		try {			
			model.addAttribute("count",rst.count(userid) );
			model.addAttribute("res", rst.searchList(map));
			model.addAttribute("userid", rvo.getUserid());
			model.addAttribute("pageMaker", new PageDTO(cri, rst.count(userid).getCount()));
		}catch(NullPointerException e) {
			e.getMessage();
		}
		return "users/Reservation";
	}
	@GetMapping("/Apply")
	public void Apply(Model model, String userid) {
		model.addAttribute("userid", userid);
		model.addAttribute("nickname", logser.users(userid).getNickname());
	}

	@PostMapping("/Apply/{userid}")
	public String applyid(@PathVariable("userid") String userid, RedirectAttributes rttr, ApplyVO avo) {
		System.out.println(userid);
		rttr.addAttribute("userid", userid);
		service.insert(avo);
		return "redirect:/users/index";
	}

	@PostMapping("/Apply/write")
	public String applywrite(ProductVO pvo, RedirectAttributes rttr) {
		MultipartFile multi = pvo.getGoodsfile();
		String path = "C:\\upload\\";
		log.info(pvo);
		String FileName = multi.getOriginalFilename().substring(multi.getOriginalFilename().lastIndexOf("\\") + 1);
		FileName = UUID.randomUUID().toString().substring(0, 20) + "_" + FileName;
		File file = new File(path, FileName);
		if (file.isFile()) {
			file.mkdirs();
		}
		try {
			multi.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		pvo.setGoodsphoto(FileName);
		ps.insert(pvo);
		rttr.addAttribute("userid", pvo.getUserid());
		return "redirect:/product/product";
	}
}
