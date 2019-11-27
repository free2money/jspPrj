package com.ggorrrr.web.controller.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String order = "";
		String order_ = request.getParameter("order");
		if (order_ != null && !order_.equals(""))
			order = order_;
		System.out.println("order:" + order);

		String field = "address";
		String query = "";

		// 검색엔진
		String field_ = request.getParameter("f");
		if (field_ != null && !field_.equals(""))
			field = field_;

		String query_ = request.getParameter("q");
		if (query_ != null && !query_.equals(""))
			query = query_;

		// 정렬 방식
		if (order.equals("0")) {

			request.setAttribute("list", reviewService.orderByDate());

		} else if (order.equals("1")) {

			request.setAttribute("list", reviewService.orderByGrade());
		} else {
			request.setAttribute("list", reviewService.getList(field, query));
		}
		request.getRequestDispatcher("/WEB-INF/view/review/list.jsp").forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cmd = request.getParameter("cmd");
		String field = "content";
		String query = "";

		switch (cmd) {
		case "검색":
			String field_ = request.getParameter("f");
			if (field_ != null && !field_.equals(""))
				field = field_;

			String query_ = request.getParameter("q");
			if (query_ != null && !query_.equals(""))
				query = query_;

			request.setAttribute("list", reviewService.getList(field, query));
			response.sendRedirect("list?f=" + field + "&q=" + query);
			break;

		case "글쓰기":

			response.sendRedirect("reg");
			break;

		default:
			response.sendRedirect("list");
		}

	}

}
