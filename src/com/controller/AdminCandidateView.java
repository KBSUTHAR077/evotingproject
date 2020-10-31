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
import com.pojo.Candidateregistration;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class AdminCandidateView
 */
@WebServlet("/AdminCandidateView")
public class AdminCandidateView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Candidateregistration list=new Candidateregistration();
	BlManager bl=new BlManager();
	
    public AdminCandidateView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Candidateregistration> list=bl.Candidateviewdata();
		HttpSession session=request.getSession();
		session.setAttribute("list",list);
		response.sendRedirect("AdminCandidateView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
