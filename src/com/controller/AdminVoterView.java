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
import com.pojo.Voterregistration;

/**
 * Servlet implementation class AdminVoterView
 */
@WebServlet("/AdminVoterView")
public class AdminVoterView extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//Admin a=new Admin();
	Voterregistration v = new Voterregistration();
	BlManager bl=new BlManager();
    public AdminVoterView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//List<Admin> list=bl.viewAdmindata();
		
		List<Voterregistration> list=bl.Voterviewdata();
		HttpSession session=request.getSession();
		session.setAttribute("list",list);
		response.sendRedirect("AdminViewVoters1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
