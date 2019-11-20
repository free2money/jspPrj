package com.ggorrrr.web.controller.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ggorrrr.web.controller.entity.Food;
import com.ggorrrr.web.controller.service.FoodService;
import com.ggorrrr.web.controller.service.implement.ImplementFoodService;

@WebServlet("/admin/menu/update")
public class FoodEditContoller extends HttpServlet {

	private FoodService foodService;

	public FoodEditContoller() {
		foodService = new ImplementFoodService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		Food food = foodService.get(id);
		request.setAttribute("f", food);

		request.getRequestDispatcher("/WEB-INF/view/admin/menu/update.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String category_ = request.getParameter("category");
		String korName = request.getParameter("food_name");
		String engName = request.getParameter("korname");
		String ingridients = request.getParameter("main_ingredents");
		String explain = request.getParameter("how_to_eat");
		String recipe = request.getParameter("recipe");
		String thema = request.getParameter("thema");
		String vegetarian_ = request.getParameter("vegetarian");
		int id = Integer.parseInt(request.getParameter("detailId"));
		
		System.out.println(id);
		
		boolean vegetarian = false;
		String category = "";

		switch (category_) {
		case "1":
			category = "한식";
			break;
		case "2":
			category = "양식";
			break;
		case "3":
			category = "중식";
			break;
		case "4":
			category = "일식";
			break;
		case "5":
			category = "분식";
			break;
		case "6":
			category = "기타";
			break;
		}

		if (vegetarian_.equals("1"))
			vegetarian = true;
		else
			vegetarian = false;

		System.out.println(vegetarian);

		Collection<Part> parts = request.getParts();

		String fileNames = "";

		for (Part p : parts) {

			if (!p.getName().equals("files"))
				continue;

			ServletContext application = request.getServletContext();
			String urlPath = "/upload";
			String realPath = application.getRealPath(urlPath);

			File file = new File(realPath);

//		Part filePart = request.getPart("file");

			Part filePart = p;
			String fileName = filePart.getSubmittedFileName();
			if (fileName.equals(""))
				break;

			fileNames += fileName + ",";

			InputStream fis = filePart.getInputStream();
			FileOutputStream fos = new FileOutputStream(realPath + File.separator + fileName);

			byte[] buf = new byte[1024];

			int size = 0;
			while ((size = fis.read(buf)) != -1)
				fos.write(buf, 0, size);

			fos.close();
		}

		fileNames = fileNames.substring(0, fileNames.length() - 1);

		int result = foodService.update(new Food(id, korName, engName, fileNames, ingridients, explain, 1, vegetarian,
				thema, recipe, category));
//		filePart.getSubmittedFileName();

//		String title = titlePart.getName();

		if (result == 0) {
			response.sendRedirect("/error?code=2");
		} else {
			response.sendRedirect("list");
		}
	}
}
