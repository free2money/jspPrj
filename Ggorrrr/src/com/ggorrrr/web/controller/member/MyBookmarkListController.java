package com.ggorrrr.web.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.BookmarkService;
import com.ggorrrr.web.controller.service.implement.ImplementBookmarkService;

@WebServlet("/mybookmark")
public class MyBookmarkListController extends HttpServlet {
	private BookmarkService bookmarkService;

	public MyBookmarkListController() {
		bookmarkService = new ImplementBookmarkService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 1;
		request.setAttribute("list", bookmarkService.getList(id));
//		request.setAttribute("list", bookmarkService.getList(Integer.parseInt(request.getParameter("member_id"))));
		request.getRequestDispatcher("/WEB-INF/view/member/myBookmarkList.jsp").forward(request, response);
	}

}
