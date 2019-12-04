package com.ggorrrr.web.controller.review;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ggorrrr.web.controller.entity.Member;
import com.ggorrrr.web.controller.entity.Review;
import com.ggorrrr.web.controller.service.ReviewService;
import com.ggorrrr.web.controller.service.implement.ImplementReviewService;

@WebServlet("/review/reg")
public class RegController extends HttpServlet {

	private ReviewService reviewService;

	public RegController() {
		reviewService = new ImplementReviewService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.getRequestDispatcher("/WEB-INF/view/review/reg.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("sessionuser");
		System.out.println(member.toString());
		int id = -9;
		int member_id = member.getId();
		String foodType = "";
		String foodName = "";
		Date eating_date = null;
		String address = "";
		String content = "";
		String photo = "";
		String cmd = "";

		String foodType_ = request.getParameter("food_type");
		if (foodType_ != null && !foodType_.equals(""))
			foodType = foodType_;

		String foodName_ = request.getParameter("food_name");
		if (foodName_ != null && !foodName_.equals(""))
			foodName = foodName_;
		String eating_date_ = request.getParameter("eating_date");
		if (eating_date_ != null && !eating_date_.equals(""))
			eating_date = Date.valueOf(eating_date_);

		String address_ = request.getParameter("address");
		if (address_ != null && !address_.equals(""))
			address = address_;
		String content_ = request.getParameter("content");
		if (content_ != null && !content_.equals(""))
			content = content_;

		String photo_ = request.getParameter("photo");
		if (photo_ != null && !photo_.equals(""))
			photo = photo_;

		String cmd_ = request.getParameter("commit");
		if (cmd_ != null && !cmd_.equals(""))
			cmd = cmd_;

		switch (cmd) {
		case "확인":
			int result = reviewService
					.insert(new Review(id, member_id, address, content, eating_date, photo, foodName, foodType));

			if (result == 0)
				response.sendRedirect("/error?code=2");
			else
				response.sendRedirect("list");
			break;
		}
	}
}
