package com.ggorrrr.web.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.Member;
import com.ggorrrr.web.controller.service.MemberService;
import com.ggorrrr.web.controller.service.implement.ImplementMemberService;

@WebServlet("/signUp/signUp")
public class SignUpController extends HttpServlet{
	
	private MemberService memberService;

	public SignUpController() {
		memberService = new ImplementMemberService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String location_agree = request.getParameter("location_chk");
		request.setAttribute("location_chk", location_agree);

				
		//request.setAttribute("member", memberService.get(id));
		request.getRequestDispatcher("/WEB-INF/view/signUp/signUp.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//20~29
		int id=20;
		String user_id  = request.getParameter("signupId");
		String pwd  = request.getParameter("signupPw");
		String checkPwd  = request.getParameter("signupPwCf");
		String name  = request.getParameter("signupname");
		String nickname  = request.getParameter("nickname");
		String gender  = request.getParameter("gender");
		String year  = request.getParameter("year");
		String month_  = request.getParameter("month");
		String day_  = request.getParameter("day");
		String phone  = request.getParameter("phone");
		String email  = request.getParameter("email");
		String emailadress = request.getParameter("emailadress");
		String location_agree =  request.getParameter("location_chk");
		String signUpButton = request.getParameter("signUp");
		Member member;
		
		response.setContentType("text/html; charset=UTF-8");
		
//		String id_ = request.getParameter("id");
//		String user_id_ = request.getParameter("user_id");
//		
//		boolean isDup = memberService.isDuplicatedId(id, user_id);
		
		int month = Integer.parseInt(month_);
		int day = Integer.parseInt(day_);
		
		if(month<9)
			month_ = "0"+Integer.toString(month);
		
		if(day<9)
			day_ = "0"+Integer.toString(month);
		
		switch(emailadress) {
		case "naver.com":
			emailadress = "@naver.com";
			break;
		case "daum.net":
			emailadress = "@daum.net";
			break;
		case "gmail.com":
			emailadress = "@gmail.com";
			break;	
		}
		
		if(pwd.equals(checkPwd)) {
			if(signUpButton.equals("가입하기")) {
				member = new Member(id, user_id, checkPwd, name, year+"-"+month_+"-"+day_, email+emailadress, gender, phone, location_agree, nickname);
				memberService.insert(member);
				System.out.println(member);
				response.sendRedirect("/login/login");
			}
		}
		else {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호가 일치하지 않습니다.'); location.href='/signUp/signUp';</script>");
		}
		
	}

}
