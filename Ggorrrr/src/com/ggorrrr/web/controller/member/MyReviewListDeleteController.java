package com.ggorrrr.web.controller.member;


/*
 * 로그인 상태에서 자신의 리뷰 리스트를 보고 수정/삭제 할 수 있는 컨트롤러
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.ReviewService;
import com.ggorrrr.web.controller.service.implement.ImplementReviewService;

@WebServlet("/member/review/listDelete")
public class MyReviewListDeleteController extends HttpServlet{
	
	private ReviewService reviewService;
	
	public MyReviewListDeleteController() {
		reviewService=new ImplementReviewService();
				
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//임의로 로그인아이디 3 저장
		String member_id="3";
		
		//
		String member_id_ = request.getParameter("member_id");
		if(member_id_ !=  null && !member_id_.equals(""))
			member_id = member_id_;
		
		//멤버 아이디를 이용해 리뷰리스트를 "listDelete"로 설정
		request.setAttribute("listDelete",reviewService.getList("member_id", member_id));
		request.getRequestDispatcher("/WEB-INF/view/member/review/listDelete.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//수정과 삭제를 위해 리뷰 식별자인 아이디 가져옴
		int review_id=0;
		String review_id_=request.getParameter("review_id");
		
		//수정인지 삭제인지 알기위한 cmd버튼값을 불러옴
		String cmd=request.getParameter("cmd");
		
		
		if(review_id_ !=  null && !review_id_.equals(""))
			review_id=Integer.parseInt(review_id_);
		
		
		switch(cmd) {
		case "수정":
			//기존의 리뷰 내용을 불러옴
			request.setAttribute("edit", reviewService.get(review_id));
		
			response.sendRedirect("edit?review="+review_id);
			break;
			
		case "삭제":
			System.out.println("삭제합니다");
			break;
		
		default:
			response.sendRedirect("listDelete");
			break;
		
	
		}
	}
}
