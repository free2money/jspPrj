package com.ggorrrr.web.controller.review;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.Review;
import com.ggorrrr.web.controller.service.ReviewService;
import com.ggorrrr.web.controller.service.implement.ImplementReviewService;

@WebServlet("/review/reg")
public class RegController extends HttpServlet{
	
	private ReviewService reviewService;
	
	public RegController() {
		reviewService=new ImplementReviewService();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request
		.getRequestDispatcher("/WEB-INF/view/review/reg.jsp") 
		.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String foodType=request.getParameter("food_type");
		String foodName=request.getParameter("food_name");
		String eating_date=request.getParameter("eating_date");
		String address=request.getParameter("address");
		String content=request.getParameter("content");
		String photo=request.getParameter("images");
		
//		eating_date=eating_date.replace('-', '/');
		Date date=Date.valueOf(eating_date);
		System.out.println(date);
		
		
		int result=reviewService.insert(new Review(4,2,address,content,date,photo,foodName,foodType));
		
		if(result == 0)
			response.sendRedirect("/error?code=2");
		else
			response.sendRedirect("list");
	}
}
