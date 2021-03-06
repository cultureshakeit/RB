package com.rental.service;

/*import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;*/

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.rental.domain.MemberVO;
import com.rental.mapper.MemberMapper;
import com.rental.mapper.UserLogMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImpl implements MemberService {
	/*
	 * @Autowired private JavaMailSenderImpl mailSender;
	 */

	@Setter(onMethod_ = { @Autowired })
	private MemberMapper mapper;

	@Setter(onMethod_ = { @Autowired })
	private UserLogMapper umapper;

	@Inject
	private BCryptPasswordEncoder BCPE;

	@Override
	public boolean signup(MemberVO mvo) {
		
		log.info("on");
		mvo.setUserpw(BCPE.encode(mvo.getUserpw()));
		mapper.insert(mvo);

		//MailSendMethod(mvo);
		return mapper.insert_auth(mvo) == 1 ? true : false;

	}

	@Override
	public int AccountEnabled(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.Enabled(mvo);
	}

	@Override
	public void Account_loginto(String userid) {
		umapper.UserIntoLog(userid);

	}

	@Override
	public String EmailCheck(String useremail) {
		// TODO Auto-generated method stub
		return mapper.EmailCheck(useremail);
	}

	@Override
	public String IdCheck(String userid) {
		// TODO Auto-generated method stub
		return mapper.IdCheck(userid);
	}

	@Override
	public int Delete_id(String userid) {
		// TODO Auto-generated method stub
		return mapper.IdDelete(userid);
	}

	@Override
	public String Reset(MemberVO mvo) {
		// TODO Auto-generated method stub
		String userpw = BCPE.encode(mvo.getUserpw());
		mvo.setUserpw(userpw);
		mapper.Reset(mvo);
		mapper.updatedate(mvo.getUserid());
		return mvo.getUserpw();
	}

	@Override
	public int revitailze(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.revitailze(mvo);
	}

	@Override
	public MemberVO FindId(MemberVO mvo) {
		// TODO Auto-generated method stub
		return mapper.FindId(mvo);
	}

	@Override
	public MemberVO read(String username) {
		// TODO Auto-generated method stub
		return mapper.read(username);
	}

	//send qurified email
	/*
	 * private String MailSendMethod(MemberVO mvo) { final MimeMessagePreparator
	 * preparator = new MimeMessagePreparator() {
	 * 
	 * @Override public void prepare(MimeMessage mimeMessage) throws Exception {
	 * final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true,
	 * "UTF-8"); helper.setFrom("althsuwpfl@gmail.com");
	 * helper.setTo(mvo.getUseremail());
	 * 
	 * helper.setSubject(mvo.getNickname() + " ?????????????????????????????????????????????"); String body = new
	 * StringBuffer().append("<html>").append("<body>").append(
	 * "<h2>??????????????????????????????</h2>")
	 * .append("<p>????????????????????????????????????</p>").append("<p>????????????????????????????????????????????????????????????????????????</p>")
	 * .append("<b><a href='http://localhost:8080/emailauth?userid=").append(mvo.
	 * getUserid()) .append("&enabled=").append(true).append("&target='_blank")
	 * .append("'><button type='button' style='border:1px solid green; background-color:transparent;padding:10px; border-radius:4px;'>???????????????</button></a></b><br>"
	 * ) .append("<br><p>??????????????????????????????????????????????????????????????????????????????</p></body></html>").toString();
	 * helper.setText(body); // ????????? ????????? ??? ????????? ??????. mimeMessage.setContent(body,
	 * "text/html; charset=UTF-8"); log.info(helper.getMimeMessage()); // ?????? ?????????
	 * 
	 * FileSystemResource file = new FileSystemResource(new File("E:/test.hwp"));
	 * helper.addAttachment("test.hwp", file);
	 * 
	 * 
	 * } }; mailSender.setDefaultEncoding("utf-8"); mailSender.send(preparator);
	 * return "result"; }
	 */
}
