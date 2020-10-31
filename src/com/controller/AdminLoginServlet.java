package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Admin;
import com.pojo.Candidateregistration;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Admin a=new Admin();
	BlManager bl=new BlManager();
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adminEmailId=request.getParameter("adminEmailId");
		String adminPassword=request.getParameter("adminPassword");
		boolean b=bl.searchAdmineEmailPass(adminEmailId,adminPassword);
		Admin adminFirstName =bl.searchByAdminEmail(adminEmailId);
		System.out.print(b);
		System.out.print(adminFirstName);
		if(b==true)
		{
			ServletContext app=request.getSession().getServletContext();
			app.setAttribute("adminFirstName", adminFirstName);
			//response.sendRedirect("AdminView.jsp");
			response.sendRedirect("AdminView.jsp");
		}
		else
		{
			request.getRequestDispatcher("/Admin1.jsp").include(request, response);
		}
	}

}
