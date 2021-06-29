package com.rental.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.transaction.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonParser;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;
import com.rental.domain.ConTactVO;
import com.rental.domain.CourseVO;
import com.rental.domain.Criteria;
import com.rental.domain.Criteria_c;
import com.rental.domain.MemberVO;
import com.rental.domain.NoticeVO;
import com.rental.domain.PageDTO;
import com.rental.domain.PageDTO_c;
import com.rental.domain.QnAVO;
import com.rental.domain.ReplyVO;
import com.rental.domain.ReviewVO;
import com.rental.domain.TouristVO;
import com.rental.service.ConTactService;
import com.rental.service.MemberService;
import com.rental.service.NoticeService;
import com.rental.service.ProductService;
import com.rental.service.QNAService;
import com.rental.service.ReplyService;
import com.rental.service.ReviewService;
import com.rental.service.TouristService;
import com.rental.util.BoardCookie;
import com.rental.util.Utility;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.minidev.json.JSONArray;

@Controller
@Log4j
@RequestMapping("/*")
public class CommonController {

	protected Transaction trans;

	@Setter(onMethod_ = { @Autowired })
	private MemberService service;

	@Setter(onMethod_ = { @Autowired })
	private ReplyService rs;

	@Setter(onMethod_ = { @Autowired })
	private QNAService qs;

	@Setter(onMethod_ = { @Autowired })
	private ReviewService rw;

	@Setter(onMethod_ = { @Autowired })
	private ConTactService cs;
	@Setter(onMethod_ = { @Autowired })
	private ProductService ps;

	
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		if (error != null) {
			model.addAttribute("error", "ID또는 PASSWORD가 잘못되었습니다.");
		}
		if (logout != null) {
			model.addAttribute("logout", "로그아웃했습니다");
		}
	}
	
	@PostMapping("/login")
	public void loginPost(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		System.out.println("hello world!");
	}
	
	@GetMapping("/signup")
	public void signup() {

	}

	@PostMapping("/signup")
	public String signup(MemberVO memvo, HttpServletRequest request) throws UnsupportedEncodingException, SQLException {

		memvo.setIp(Utility.ip(request));
		
		if (service.signup(memvo)) {
			service.Account_loginto(memvo.getUserid());
			log.info("sign up success");
			return "redirect:/login";
		}

		return "redirect:/signup";
	}

	@GetMapping("/review/photo")
	public String photo(Criteria cri, Model model) {
		cri.setAmount(6);
		model.addAttribute("list", rw.list(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, rw.count()));
		log.info("photo");

		return "review/photo";
	}

	@GetMapping("/review/write")
	public void write() {
	}

	@PostMapping("/review/write")
	public String writereview(ReviewVO rvo) {
		MultipartFile multi = rvo.getPhotos();
		String Path = "C:\\upload\\review";
		log.info(rvo);
		String FileName = multi.getOriginalFilename().substring(multi.getOriginalFilename().lastIndexOf("\\") + 1);
		FileName = UUID.randomUUID().toString().substring(0, 10) + "_" + FileName;
		File file = new File(Path, FileName);
		if (file.isFile()) {
			file.mkdirs();
		}
		try {
			multi.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		rvo.setPhoto(FileName);
		rw.insert(rvo);
		return "redirect:/review/photo";
	}

	@GetMapping("/QnA/QnA")
	public void Qna(Model model, Criteria cri) {
		model.addAttribute("list", qs.list(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, qs.count()));
		log.info("qna");
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/QnA/write")
	public void QnaWrite(String userid, Model model) {

		model.addAttribute("userid", userid);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/QnA/write")
	public String inWrite(QnAVO qvo, Model model, RedirectAttributes rttr) {
		rttr.addAttribute("userid", qvo.getWriter());
		qs.insert(qvo);
		return "redirect:/admin/QnA";
	}

	@GetMapping("/QnA/view")
	public void viewer(QnAVO qvo, Model model) {
		model.addAttribute("qna", qs.getPage(qvo));
	}

	@GetMapping("/product/goods")
	public void goods() {
		log.info("goods");
	}

	@RequestMapping(value = "/product/product_show")
	public String productpage() {
		return "product/product_show";
	}

	// NoticService
	@Setter(onMethod_ = { @Autowired })
	private NoticeService noticeservice;

	@GetMapping("/board/notice")
	public String board( Model model, @ModelAttribute("cri") Criteria cri) {
		
		int countAll = noticeservice.NoticeCount();
		
		cri.setAmount(5);
		PageDTO pd = new PageDTO(cri, countAll);
		model.addAttribute("count", countAll);
		model.addAttribute("list", noticeservice.List(cri));
		model.addAttribute("pageMaker", pd);
		return "board/notice";
	}

	@PostAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/board/write")
	public String board_write(String userid, Model model) {
		model.addAttribute("userid", userid);

		return "board/write";
	}

	@PostAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/board/write")
	public String board_insert(NoticeVO nvo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		noticeservice.insert(nvo);

		return "redirect:/board/notice";
	}

	@PreAuthorize("permitAll")
	@GetMapping("/board/view")
	public String view(int sequence, Model model, String userid, @RequestParam("pageNum") int pageNum,@ModelAttribute("cri_c") Criteria_c cri_c) {
		
		Map<String, Object> replymap = new HashMap<String, Object>();
		replymap.put("pageNum", cri_c.getPageNum_c());
		replymap.put("amount", cri_c.getAmount_c());
		replymap.put("n_num", sequence);
		noticeservice.viewcount(sequence);
		
		model.addAttribute("vo", noticeservice.viewer(sequence));
		model.addAttribute("userid", userid);
		model.addAttribute("reply", rs.replyList(replymap));
		model.addAttribute("pageMaker",new PageDTO_c(cri_c, rs.count(sequence)));
		model.addAttribute("cri_c", cri_c);
		model.addAttribute("sequence", sequence);
		return "board/viewer";
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/board/modify")
	public String modify(NoticeVO nvo, Model model) {
		noticeservice.update(nvo);
		return "redirect:/board/notice";
	}

	@GetMapping("/board/notice/reply")
	public String reply(ReplyVO rvo, RedirectAttributes rttr,String pageNum) {
		rs.insert(rvo);
		rttr.addAttribute("sequence", rvo.getN_num());
		rttr.addAttribute("pageNum", pageNum);
		return "redirect:/board/view";
	}

	@GetMapping("/forgot/forgotpw")
	public void fotgotpw() {

	}
	@GetMapping("/forgot/forgotid")
	public void fotgotid() {

	}
	@GetMapping("/contact/contact")
	public void contact() {

	}

	@GetMapping("/contact/view")
	public String views(ConTactVO cvo, Model model) {
		model.addAttribute("cvo", cs.getPage(cvo));
		cs.status(cvo.getNum());
		return "contact/view";
	}

	@PostMapping("/contact/mail")
	public String mail(ConTactVO cvo) {
		cs.insert(cvo);

		return "redirect:/contact/contact";
	}

	@GetMapping("/about")
	public String about() {

		return "/inquire/about";

	}

	@GetMapping("/fare")
	public String fare() {
		return "/inquire/fare";

	}

	@GetMapping("/inquire")
	public String inquire() {

		return "/inquire/inquire";
	}
	
	//@PreAuthorize("hasAnyRole({'ROLE_USER','ROLE_ADMIN'})")
	@GetMapping("/course/course")
	public void course(Model model,@ModelAttribute("cri") Criteria cri) { //,@RequestParam("userid") String userid
		log.info("productlist");
		log.info(ps.getCList(cri));
		int total = ps.Ccount();
//		model.addAttribute("userid",userid);
		model.addAttribute("course", ps.getCList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));// total
	}
	
	@GetMapping("/course/coursewrite")
	public void coursewrite(@RequestParam("userid") String userid,Model model) {
		model.addAttribute("userid",userid);
	}
	
	@PostMapping("/course/coursewriteok")
	public String coursewrite(CourseVO cvo,RedirectAttributes rttr,@RequestParam("userid") String userid) {
		log.info("productregisterAction");
		rttr.addAttribute("userid", userid);
		MultipartFile multipartFile = cvo.getCoursefile();

		String uploadFolder = "c:\\upload";

		log.info("upload file name : " + multipartFile.getOriginalFilename());
		log.info("upload file size : " + multipartFile.getSize());

		String uploadFileName = multipartFile.getOriginalFilename();
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("//") + 1);

		log.info(uploadFileName);

		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		File saveFile = new File(uploadFolder, uploadFileName);

		try {
			multipartFile.transferTo(saveFile);
			// ����� ����
		} catch (Exception e) {
			log.error(e.getMessage());
		}

		cvo.setPhoto(uploadFileName);
		ps.insertcourse(cvo);
		
		return "redirect:/course/course";
	}
	
	@GetMapping("/course/courseview")
	public void view(String userid, Model model, int num,@ModelAttribute("cri") Criteria cri) {
		ps.viewcount(num);
		model.addAttribute("userid", userid);
		model.addAttribute("Cview", ps.getCPage(num));
	}
	
	@GetMapping("/course/courseModify")
	public void courseModify(@RequestParam("userid") String userid,Model model,@RequestParam("num") int num) {
		model.addAttribute("userid", userid);
		model.addAttribute("Cview", ps.getCPage(num));
	}
	
	@PostMapping("/course/courseModifyok")
	public String courseModifyok(CourseVO cvo,RedirectAttributes rttr,@RequestParam("num") int num,@RequestParam("userid") String userid) {
		rttr.addAttribute("userid", userid);
		log.info("productregisterAction");

		MultipartFile multipartFile = cvo.getCoursefile();

		String uploadFolder = "c:\\upload";

		log.info("upload file name : " + multipartFile.getOriginalFilename());
		log.info("upload file size : " + multipartFile.getSize());

		String uploadFileName = multipartFile.getOriginalFilename();
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("//") + 1);

		log.info(uploadFileName);

		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		File saveFile = new File(uploadFolder, uploadFileName);

		try {
			multipartFile.transferTo(saveFile);
			
		} catch (Exception e) {
			log.error(e.getMessage());
		}

		cvo.setPhoto(uploadFileName);
		ps.updatecourse(cvo);
		return "redirect:/course/course";
	}
	
	@GetMapping("/course/courseDelete")
	public String courseDelete(@RequestParam("userid") String userid,int num,RedirectAttributes rttr) {
		rttr.addAttribute("userid", userid);
		ps.courseDelete(num);
		return "redirect:/course/course";
	}
	
	@Setter(onMethod_ = { @Autowired })
	private TouristService tourService;
	
	@GetMapping("/tourist")
	public String tourist(Model model,@ModelAttribute("cri") Criteria cri) {
		
		int countall = tourService.countAll();
		List<TouristVO> tlist = tourService.List(cri);
		PageDTO pd = new PageDTO(cri, countall);
//		int ilen = (int)document.read("$.length()");
		model.addAttribute("pageMaker",pd);
		model.addAttribute("tlist",tlist);
		return "tourist/tourist";
		
	}
	@GetMapping("/tourist/{sid}")
	public String tourist_detail(Model model,@PathVariable("sid") String sid, HttpServletRequest request, HttpServletResponse response) {
		TouristVO tourInfo = tourService.getOne(sid);
		String[] tags = tourService.getTags(sid);
//		System.out.println(tourInfo.toString());
		model.addAttribute("tags", tags);
		model.addAttribute("tourInfo",tourInfo);
		
		//cookie 추가
		BoardCookie addCookie = new BoardCookie();
		boolean cookie_result = addCookie.check_cookie("placeviews", sid, request, response);
		
		if(!cookie_result) {
			tourService.addViews(sid);
		}
		
		return "tourist/tourist_view";
	}
	
	@GetMapping("/tourist_view")
	public String touristview() {
		
		return "tourist/tourist_view";
		
	}

}
