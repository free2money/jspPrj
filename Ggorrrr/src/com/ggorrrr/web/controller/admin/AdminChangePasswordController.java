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
		request.getRequestDispatcher("/WEB-INF/view/admin/changePassword.jsp").forward(request, response);
//	}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("sessionuser");
		String pwd = admin.getPwd();

		String nowPwd = request.getParameter("now-pwd");
		String check = request.getParameter("nowPwdsubmit");

		String s = "";

		if (check.equals("확인")) {
			if (!nowPwd.equals("") && pwd.equals(nowPwd))
				s = "비밀번호가 일치합니다.";
			else if (!nowPwd.equals("") && !pwd.equals(nowPwd))
				s = "비밀번호가 일치하지 않습니다.";
		}

		request.setAttribute("pwd", pwd);

		request.setAttribute("s", s);

		request.getRequestDispatcher("/WEB-INF/view/member/changePassword.jsp").forward(request, response);

	}
}
