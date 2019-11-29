package com.ggorrrr.web.controller.review;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.google.gson.Gson;

/*
 * 자신의 리뷰뿐만이 아닌 모든 사용자의 리뷰의 리스트를 보여주는 컨트롤러
 */
@WebServlet("/review/list-json")
public class ListJSONController extends HttpServlet {
	private ReviewService reviewService;

	public ListJSONController() {
		reviewService = new ImplementReviewService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String order = "regdate";
		String field = "address";
		String query = "";

		String order_ = request.getParameter("order");
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");

//		int prevNum = 0;
//		int count = 3;

		String prevNum_ = request.getParameter("prevNum");
		String count_ = request.getParameter("count");

		if (field_ != null && !field_.equals(""))
			field = field_;

		if (query_ != null && !query_.equals(""))
			query = query_;

		if (order_ != null && !order_.equals(""))
			order = order_;

		List<Review> aList = reviewService.getListByOrder(order, field, query);
		List<Review> list = new ArrayList<Review>();
		for (int i = Integer.parseInt(prevNum_); i < Integer.parseInt(count_); i++) {
			list.add(aList.get(i));
		}

		Gson gson = new Gson();
		String json = gson.toJson(list);
		System.out.println(json.toString());
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.write(json);
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

//		int prevNum = 0;
//		int count = 3;

		String prevNum_ = request.getParameter("prevNum");
		String count_ = request.getParameter("count");

		if (field_ != null && !field_.equals(""))
			field = field_;

		if (query_ != null && !query_.equals(""))
			query = query_;

		if (order_ != null && !order_.equals(""))
			order = order_;

		List<Review> aList = reviewService.getListByOrder(order, field, query);
		List<Review> list = new ArrayList<Review>();
		for (int i = Integer.parseInt(prevNum_); i < Integer.parseInt(count_); i++) {
			list.add(aList.get(i));
		}

		Gson gson = new Gson();
		String json = gson.toJson(list);
		System.out.println(json.toString());
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.write(json);
	}
}
