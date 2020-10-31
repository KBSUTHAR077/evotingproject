package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Candidateregistration;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class CandidateLogin
 */
@WebServlet("/CandidateLogin")
public class CandidateLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Candidateregistration c=new Candidateregistration();
	BlManager bl=new BlManager();
	
    public CandidateLogin() {
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
		
		String canEmailId=request.getParameter("canEmailId");
		String canPassword=request.getParameter("canPassword");
		String canStatus1=request.getParameter("canStatus1");
		System.out.print(canStatus1);
		boolean b=bl.searchCandidateEmailPass(canEmailId,canPassword);
		boolean b1=bl.searchCandidateStatus(canEmailId,canStatus1);
		Candidateregistration canfirstname =bl.searchByCanEmail(canEmailId);
		System.out.print("after all methods");
		System.out.print(canStatus1);
		System.out.print("after b1 check");
		System.out.print(b);
		System.out.print("after b2 check");
		System.out.print(b1);
		if(b==true && b1==true)
		{
			ServletContext app=request.getSession().getServletContext();
			app.setAttribute("canfirstname", canfirstname);
			response.sendRedirect("CandidateLogin2.jsp");
		}
		else
		{
			
			request.getRequestDispatcher("/CanLogin.jsp").include(request, response);
		}
		/*boolean b=bl.searchCandidateEmailPass(canEmailId,canPassword);
		Candidateregistration canfirstname =bl.searchByCanEmail(canEmailId);
		System.out.print(b);
		if(b==true)
		{
			ServletContext app=request.getSession().getServletContext();
			app.setAttribute("canfirstname", canfirstname);
			response.sendRedirect("CandidateLogin2.jsp");
		}
		else
		{
			request.getRequestDispatcher("/CanLogin.jsp").include(request, response);
		}*/
	}

}
