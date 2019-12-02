package com.ggorrrr.web.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.BookmarkService;
import com.ggorrrr.web.controller.service.implement.ImplementBookmarkService;

@WebServlet("/bookmarkReg")
public class BookmarkRegController extends HttpServlet {
	
	BookmarkService bookmarkService;
	
	public BookmarkRegController() {
		bookmarkService = new ImplementBookmarkService();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int foodId = Integer.parseInt(request.getParameter("food-id"));
		int memberId = Integer.parseInt(request.getParameter("member-id"));
		
		System.out.println(foodId +","+ memberId);
		
		request.getRequestDispatcher("/WEB-INF/view/menu/detail?id=.jsp").forward(request, response);
		
	}
}
