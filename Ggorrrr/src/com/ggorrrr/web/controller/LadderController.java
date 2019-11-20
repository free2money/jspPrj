package com.ggorrrr.web.controller;

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

@WebServlet("/ladder")
public class LadderController extends HttpServlet {

	BookmarkService bookmarkService;

	public LadderController() {
		bookmarkService = new ImplementBookmarkService();
	}

	@Override
	public void init() throws ServletException {
		super.init();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 2;
		String id_ = request.getParameter("member_id");
		List<BookmarkMenu> list = bookmarkService.getList(id);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/view/ladder.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
