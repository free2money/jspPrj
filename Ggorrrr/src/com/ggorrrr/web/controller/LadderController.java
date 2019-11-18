package com.ggorrrr.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.FavoriteMenu;
import com.ggorrrr.web.controller.service.FavoriteService;
import com.ggorrrr.web.controller.service.implement.ImplementFavoriteService;

@WebServlet("/ladder")
public class LadderController extends HttpServlet {

	FavoriteService favoriteService;

	public LadderController() {
		favoriteService = new ImplementFavoriteService();
	}

	@Override
	public void init() throws ServletException {
		super.init();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long id = 0;
		String id_ = request.getParameter("member_id");
		List<FavoriteMenu> list = favoriteService.getList(id);
		request.setAttribute("bookmark_list", list);
		request.getRequestDispatcher("/WEB-INF/view/ladder.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
