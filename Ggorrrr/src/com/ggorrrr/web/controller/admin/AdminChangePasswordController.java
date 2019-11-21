package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.MemberService;
import com.ggorrrr.web.controller.service.implement.ImplementMemberService;

public class AdminChangePasswordController extends HttpServlet {

	private MemberService memberService;

	public AdminChangePasswordController() {
		memberService = new ImplementMemberService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// int id=2; //로그인한 아이디 넘겨받기

		// 컨트롤러가 할 일은 데이터 준비하는 일
		// request에 담아주어야 jsp에서 가져다 쓸 수 있음
		request.setAttribute("member", memberService.get(Integer.parseInt(request.getParameter("id"))));
		request.setAttribute("pwd", memberService.get(Integer.parseInt(request.getParameter("id"))).getPwd());
		// jsp(view)파일경로
		request.getRequestDispatcher("/WEB-INF/view/member/changePassword.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pwd = request.getParameter("pwd");
		String s = "";
		String nowPwd = request.getParameter("nowPwd");
		String check = request.getParameter("nowPwdsubmit");
		
		if(check.equals("확인")) {
			if (!nowPwd.equals("") && pwd.equals(nowPwd))
				s = "비밀번호가 일치합니다.";
			else if (!nowPwd.equals("") && !pwd.equals(nowPwd))
				s = "비밀번호가 일치하지 않습니다.";
		}
		
		request.setAttribute("pwd", pwd); //페이지가 넘겨지면 한번 쓴 member.pwd는 없어지기때문에 계속 넣어줌
		request.setAttribute("s", s);
		
		request.getRequestDispatcher("/WEB-INF/view/member/changePassword.jsp").forward(request, response);

	}
}
