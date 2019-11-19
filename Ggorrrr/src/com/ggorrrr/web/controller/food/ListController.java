package com.ggorrrr.web.controller.food;

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

@WebServlet("/menu/list")
public class ListController extends HttpServlet {
	private FoodService foodService;

	public ListController() {
		foodService = new ImplementFoodService();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		request.getRequestDispatcher("/WEB-INF/view/menu/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String korName = request.getParameter("food_name");
		String engName = request.getParameter("korname");
		String ingridients = request.getParameter("main_ingredents");
		String explain = request.getParameter("how_to_eat");
		String recipe = request.getParameter("recipe");
		String thema = request.getParameter("thema");
		String vegetarian_ = request.getParameter("vegetarian");
		boolean vegetarian = false;

		if (vegetarian_.equals("1"))
			vegetarian = true;
		else
			vegetarian = false;

		Collection<Part> parts = request.getParts();

		String fileNames = "";

		for (Part p : parts) {
			System.out.println(p.getName());

			// 1. 파일을 사용하는 방법 2가지
			// 2. 다중 파일을 업로드 하는 방법

			if (!p.getName().equals("files"))
				continue;

			ServletContext application = request.getServletContext();
			String urlPath = "/upload";
			String realPath = application.getRealPath(urlPath);

			File file = new File(realPath);
			if (!file.exists())
				file.mkdirs();
			else
				System.out.println("경로가 존재합니다");

			System.out.println(realPath);

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

		int result = foodService.insert(
				new Food(1323, korName, engName, fileNames, ingridients, explain, 1, vegetarian, thema, recipe));
//		filePart.getSubmittedFileName();

//		String title = titlePart.getName();

		if (result == 0) {
			response.sendRedirect("/error?code=2");
		} else {
			response.sendRedirect("list");
		}

	}
}
