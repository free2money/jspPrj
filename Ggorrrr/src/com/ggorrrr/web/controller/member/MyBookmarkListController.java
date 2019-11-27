package com.ggorrrr.web.controller.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.BookmarkMenu;
import com.ggorrrr.web.controller.service.BookmarkService;
import com.ggorrrr.web.controller.service.implement.ImplementBookmarkService;

@WebServlet("/member/mybookmarklist")
public class MyBookmarkListController extends HttpServlet {
	private BookmarkService bookmarkService;

	public MyBookmarkListController() {
		bookmarkService = new ImplementBookmarkService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("bmlist", bookmarkService.getList(Integer.parseInt(request.getParameter("id"))));
		request.getRequestDispatcher("/WEB-INF/view/member/myBookmarkList.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int foodId = Integer.parseInt(request.getParameter("food-id"));
		int memberId = Integer.parseInt(request.getParameter("id"));
		bookmarkService.delete(foodId);
		response.sendRedirect("mybookmarklist?id=" + memberId);
	}

}
