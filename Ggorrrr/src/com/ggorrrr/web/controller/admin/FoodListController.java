package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.FoodService;
import com.ggorrrr.web.controller.service.implement.ImplementFoodService;

@WebServlet("/admin/menu/list")
public class FoodListController extends HttpServlet {

	FoodService foodService;

	public FoodListController() {
		foodService = new ImplementFoodService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("list", foodService.getFoodList());

		request.getRequestDispatcher("/WEB-INF/view/admin/menu/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cmd = request.getParameter("cmd");

		switch (cmd) {
		case "일괄공개":

			break;
		case "일괄삭제":
			String[] ids_ = request.getParameterValues("del");

			int[] ids = new int[ids_.length];
			for (int i = 0; i < ids.length; i++) {
				ids[i] = Integer.parseInt(ids_[i]);
			}
			foodService.deletes(ids);
			break;
		}
		System.out.println("dd");
		response.sendRedirect("list");
	}
}
