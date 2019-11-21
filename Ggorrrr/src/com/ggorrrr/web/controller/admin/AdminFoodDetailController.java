package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.Food;
import com.ggorrrr.web.controller.service.FoodService;
import com.ggorrrr.web.controller.service.implement.ImplementFoodService;

@WebServlet("/admin/menu/detail")
public class AdminFoodDetailController extends HttpServlet {

	private FoodService foodService;

	public AdminFoodDetailController() {
		foodService = new ImplementFoodService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		// 2. 데이터를 마련하고
		Food food = foodService.get(id);
		// 3. 출력하는 서블릿으로 전달
		request.setAttribute("f", food);
		
		request.getRequestDispatcher("/WEB-INF/view/admin/menu/detail.jsp").forward(request, response);
	}

}
