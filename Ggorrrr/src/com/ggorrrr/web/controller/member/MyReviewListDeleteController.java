package com.ggorrrr.web.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.ReviewService;
import com.ggorrrr.web.controller.service.implement.ImplementReviewService;

import oracle.jdbc.proxy.annotation.Post;
@WebServlet("/member/review/listDelete")
public class MyReviewListDeleteController extends HttpServlet{
	
	private ReviewService reviewService;
	
	public MyReviewListDeleteController() {
		reviewService=new ImplementReviewService();
				
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id="3";
		
		String member_id_ = request.getParameter("member_id");
		if(member_id_ !=  null && !member_id_.equals(""))
			member_id = member_id_;
		
		request.setAttribute("listDelete",reviewService.getList("member_id", member_id));
		request.getRequestDispatcher("/WEB-INF/view/member/review/listDelete.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int review_id=0;
		String review_id_=request.getParameter("review_id");
		String cmd=request.getParameter("cmd");
		System.out.println(cmd);
		if(review_id_ !=  null && !review_id_.equals(""))
			review_id=Integer.parseInt(review_id_);
		
		if(cmd.equals("수정")) {
		
			
			request.setAttribute("edit", reviewService.get(review_id));
			System.out.println(reviewService.get(review_id));
			response.sendRedirect("edit?review="+review_id);
		
		}
	
	}
}
