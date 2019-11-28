package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ggorrrr.web.controller.entity.Member;
import com.ggorrrr.web.controller.service.AdminService;
import com.ggorrrr.web.controller.service.MemberService;
import com.ggorrrr.web.controller.service.implement.ImplementAdminService;
import com.ggorrrr.web.controller.service.implement.ImplementMemberService;

@WebServlet("/admin/changePwd")
public class AdminChangePasswordController extends HttpServlet {

	private AdminService adminService;
	private MemberService memberService;

	public AdminChangePasswordController() {
		adminService = new ImplementAdminService();
		memberService = new ImplementMemberService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null) {
			response.sendRedirect("/login/login?error=1");
		} else {
			request.getRequestDispatcher("/WEB-INF/view/admin/changePassword.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member admin = (Member) session.getAttribute("sessionuser");
		if (admin == null) {
			response.sendRedirect("/login/login?error=1");
			return;
		}
		String newPwd = request.getParameter("newPwd");

		memberService.update(new Member(admin.getId(), newPwd, admin.getLocation_agree(), admin.getNickname()));
		request.getSession().setAttribute("sessionuser", memberService.get(admin.getId()));
		response.sendRedirect("page");
	}
}
