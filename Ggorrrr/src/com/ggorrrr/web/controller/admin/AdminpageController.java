package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.Member;
import com.ggorrrr.web.controller.service.MemberService;
import com.ggorrrr.web.controller.service.implement.ImplementMemberService;

public class AdminpageController extends HttpServlet {

	private MemberService memberService;

	public AdminpageController() {
		memberService = new ImplementMemberService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = 2; // 로그인한 아이디 넘겨받기
			

		// 컨트롤러가 할 일은 데이터 준비하는 일
		// request에 담아주어야 jsp에서 가져다 쓸 수 있음
		//System.out.println(memberService.get(id));
		request.setAttribute("member", memberService.get(id));
		// jsp(view)파일경로
		request.getRequestDispatcher("/WEB-INF/view/member/mypage.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 변경을 눌렀을때 닉네임과 위치정보가 변경됨
		// 멤버서비스에 업데이트를 가져와야함

		String cmd = request.getParameter("cmd");
//		int id = Integer.parseInt(request.getParameter("id"));
		int id = 2;

		switch (cmd) {
		case "이동":
			response.sendRedirect("/member/changePassword?id="+id);
			break;
		case "변경":
			String pwd = request.getParameter("pwd");
			String nickname = request.getParameter("닉네임수정");
			String agreement = request.getParameter("agreement");
			Member member;
			if (agreement.equals("동의")) 
				member = new Member(id, pwd, "1", nickname);
			
			else 
				member = new Member(id, pwd, "0", nickname);
			
			memberService.update(member);
			response.sendRedirect("/mypage?id=" + id); // 페이지요청
			break;
		}

	}

}
