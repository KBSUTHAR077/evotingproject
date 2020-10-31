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
 * Servlet implementation class log
 */
@WebServlet("/log")
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Voterregistration v=new Voterregistration();   
	Candidateregistration c=new Candidateregistration();
	BlManager bl=new BlManager();
    public log() {
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
		String vemailId=request.getParameter("email");
		String vpassword=request.getParameter("password");
		
		String canEmailId=request.getParameter("email");
		String canPassword=request.getParameter("password");
		
		
		
		
		
		if(vemailId!=null || vpassword!=null){
			boolean b1=bl.searchVoterEmailPass(vemailId,vpassword);
			Voterregistration vfirstname=bl.searchByEmail(vemailId);
			System.out.println(b1);	
			if(b1==true)
			{
				ServletContext app=request.getSession().getServletContext();
				app.setAttribute("VfName", vfirstname);
				//app.setAttribute("VEmailId",vfirstname.getVemailId() );
				//app.setAttribute("VPassword", vfirstname.getVpassword());
				response.sendRedirect("Login2.jsp");
			}
		}
		else if(canEmailId!=null || canPassword!=null)
		{
			boolean b2=bl.searchCandidateEmailPass(canEmailId,canPassword);
			Candidateregistration canfirstname =bl.searchByCanEmail(canEmailId);
			System.out.print(b2);	
			if(b2==true)
		       {
			
			ServletContext app=request.getSession().getServletContext();
			app.setAttribute("canfirstname", canfirstname);
			response.sendRedirect("CandidateLogin2.jsp");
		       }
		}
		else
		{
			request.getRequestDispatcher("/Login1.jsp").include(request, response);
		}
		
		
		
	}
}

