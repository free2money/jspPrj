package com.ggorrrr.web.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.ReviewService;
import com.ggorrrr.web.controller.service.implement.ImplementReviewService;

@WebServlet("/member/review/edit")
public class MyReviewEdit extends HttpServlet {
	
	private ReviewService reviewService;
	
	public MyReviewEdit() {
		reviewService=new ImplementReviewService();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int review_id=0;
		
		String review_id_=request.getParameter("review_id");
		if(review_id_ !=  null && !review_id_.equals(""))
			review_id = Integer.parseInt(review_id_);
		
		
		
		request.setAttribute("edit", reviewService.get(review_id));
		request.getRequestDispatcher("/WEB-INF/view/member/review/edit.jsp").forward(request, response);
	}
}
