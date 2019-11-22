package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.FoodService;
import com.ggorrrr.web.controller.service.implement.ImplementFoodService;

@WebServlet("/admin/menu/adminlist")
public class AdminFoodListController extends HttpServlet {

	FoodService foodService;

	public AdminFoodListController() {
		foodService = new ImplementFoodService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String category = "한식";
		String query = "";
				
		String category_ = null;
		String query_ = null;
		
		category_ = request.getParameter("category");
		query_ = request.getParameter("menuName");

		if (category_ != null && !category_.equals(""))
			category =category_;

		if (query_ != null && !query_.equals(""))
			query = query_;

		System.out.println(category +","+ query);
		request.setAttribute("list", foodService.getFoodList(category, query));

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
