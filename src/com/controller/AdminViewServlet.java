package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BlManager;
import com.pojo.Admin;


/**
 * Servlet implementation class AdminViewServlet
 */
@WebServlet("/AdminViewServlet")
public class AdminViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Admin a=new Admin();
	BlManager bl=new BlManager();
	
    public AdminViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		List<Admin> list=bl.viewAdmindata();
		
		
		HttpSession session=request.getSession();
		session.setAttribute("list",list);
		response.sendRedirect("AdminView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
