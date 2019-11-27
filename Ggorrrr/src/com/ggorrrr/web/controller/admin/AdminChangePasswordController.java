package com.ggorrrr.web.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ggorrrr.web.controller.entity.Admin;
import com.ggorrrr.web.controller.service.AdminService;
import com.ggorrrr.web.controller.service.implement.ImplementAdminService;

@WebServlet("/admin/changePwd")
public class AdminChangePasswordController extends HttpServlet {

	private AdminService adminService;

	public AdminChangePasswordController() {
		adminService = new ImplementAdminService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
//		if (session.getAttribute("adminname") == null) {
//		response.sendRedirect("/login/login?error=1");
//	} else {

//		디버그용
		String pwd = "0000";
		request.setAttribute("pwd_", pwd);

//		request.setAttribute("pwd_", adminService.get(id).getPwd());
		request.getRequestDispatcher("/WEB-INF/view/admin/changePassword.jsp").forward(request, response);
//	}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("sessionuser");
		request.getRequestDispatcher("/WEB-INF/view/member/changePassword.jsp").forward(request, response);

	}
}
