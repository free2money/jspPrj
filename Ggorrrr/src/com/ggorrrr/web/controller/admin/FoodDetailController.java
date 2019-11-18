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

@WebServlet("/menu/detail")
public class FoodDetailController extends HttpServlet {

	private FoodService foodService;

	public FoodDetailController() {
		foodService = new ImplementFoodService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		// 2. �����͸� �����ϰ�
		Food food = foodService.get(id);
		// 3. ����ϴ� �������� ����
		request.setAttribute("f", food);

		request.getRequestDispatcher("/WEB-INF/view/menu/detail.jsp").forward(request, response);
	}

}
