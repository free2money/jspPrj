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
import com.ggorrrr.web.controller.service.implement.ImplementAdminService;
import com.ggorrrr.web.controller.service.implement.ImplementMemberService;

@WebServlet("/admin/page")
public class AdminpageController extends HttpServlet {

	private AdminService adminService;

	public AdminpageController() {
		adminService = new ImplementAdminService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

//		if (session.getAttribute("adminname") == null) {
//			response.sendRedirect("/login/login?error=1");
//		} else {
			
			request.getRequestDispatcher("/WEB-INF/view/admin/index.jsp").forward(request, response);
//		}
	}
}
