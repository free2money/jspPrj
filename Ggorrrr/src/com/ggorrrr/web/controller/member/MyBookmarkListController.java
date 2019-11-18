package com.ggorrrr.web.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.FavoriteService;
import com.ggorrrr.web.controller.service.implement.ImplementFavoriteService;

@WebServlet("/mybookmark")
public class MyBookmarkListController extends HttpServlet {
	private FavoriteService favoriteService;

	public MyBookmarkListController() {
		favoriteService = new ImplementFavoriteService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("list", favoriteService.getList(Long.parseLong(request.getParameter("member_id"))));
		request.getRequestDispatcher("/WEB-INF/view/member/myBookmarkList.jsp").forward(request, response);
	}

}
