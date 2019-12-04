package com.ggorrrr.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.service.FoodService;
import com.ggorrrr.web.controller.service.implement.ImplementFoodService;

@WebServlet("/index")
public class IndexController extends HttpServlet {

	private FoodService foodService;

	public IndexController() {
		foodService = new ImplementFoodService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("list", foodService.getFoodList());
		request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
	}
}
