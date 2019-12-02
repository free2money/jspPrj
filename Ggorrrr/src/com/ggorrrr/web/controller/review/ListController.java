package com.ggorrrr.web.controller.review;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggorrrr.web.controller.entity.Review;
import com.ggorrrr.web.controller.service.ReviewService;
import com.ggorrrr.web.controller.service.implement.ImplementReviewService;

/*
 * 자신의 리뷰뿐만이 아닌 모든 사용자의 리뷰의 리스트를 보여주는 컨트롤러
 */
@WebServlet("/review/list")
public class ListController extends HttpServlet {
	private ReviewService reviewService;

	public ListController() {
		reviewService = new ImplementReviewService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Review> aList = reviewService.getListByOrder("regdate", "address", "");

		request.setAttribute("list", aList);
		request.getRequestDispatcher("/WEB-INF/view/review/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String order = "regdate";
		String field = "address";
		String query = "";

		String order_ = request.getParameter("order");
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");

		if (field_ != null && !field_.equals(""))
			field = field_;

		if (query_ != null && !query_.equals(""))
			query = query_;

		if (order_ != null && !order_.equals(""))
			order = order_;

		List<Review> aList = reviewService.getListByOrder(order, field, query);

		request.setAttribute("list", aList);
		request.getRequestDispatcher("/WEB-INF/view/review/list.jsp").forward(request, response);

	}

}
