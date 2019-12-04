package com.ggorrrr.web.controller.food;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ggorrrr.web.controller.entity.BookmarkMenu;
import com.ggorrrr.web.controller.entity.Food;
import com.ggorrrr.web.controller.entity.Member;
import com.ggorrrr.web.controller.service.BookmarkService;
import com.ggorrrr.web.controller.service.FoodService;
import com.ggorrrr.web.controller.service.implement.ImplementBookmarkService;
import com.ggorrrr.web.controller.service.implement.ImplementFoodService;

@WebServlet("/menu/list")
public class FoodListController extends HttpServlet {
	private FoodService foodService;
	private BookmarkService bookmarkService;

	public FoodListController() {
		foodService = new ImplementFoodService();
		bookmarkService = new ImplementBookmarkService();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String category = request.getParameter("category");

		Member member = (Member) session.getAttribute("sessionuser");
		
		
		int page = 1;
		String field = "ingridients";
		String query = ""; // 기본값

		String page_ = null; // 페이징
		String field_ = null; // 검색 소 카테고리
		String query_ = null; // 검색어

		page_ = request.getParameter("p");
		field_ = request.getParameter("f");
		query_ = request.getParameter("q");

		if (page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);

		if (field_ != null && !field_.equals(""))
			field = field_;

		if (query_ != null && !query_.equals(""))
			query = query_;
		
		List<Food> foodList=foodService.getFoodList(category, page, field, query);
		List<BookmarkMenu> bookList = bookmarkService.getList(member.getId());
		
		System.out.println(foodList.size());
		System.out.println(bookList.size());
		boolean[] check=new boolean[foodList.size()];
		int index=0;
		for(Food f:foodList) {
			
			boolean search=false;
			for(BookmarkMenu b:bookList) {
				if(b.getId()==f.getId()) {
					search=true;
				}
			}
			
			if(search)
				check[index]=true;
			else
				check[index]=false;
			index++;
		}
		
		request.setAttribute("list", foodService.getFoodList(category, page, field, query));
		request.setAttribute("listCount", foodService.getFoodCount(category, field, query)); // 수 파악 후 세팅
		request.setAttribute("check",check);
		

		request.getRequestDispatcher("/WEB-INF/view/menu/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
