package com.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BlManager;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class VoterLogin
 */
@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Voterregistration v=new Voterregistration();
	BlManager bl=new BlManager();
    public VoterLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vemailId=request.getParameter("vemailId");
		String vpassword=request.getParameter("vpassword");
		String vstatus1=request.getParameter("vstatus1");
		System.out.print(vstatus1);
		boolean b=bl.searchVoterEmailPass(vemailId,vpassword);
		boolean b1=bl.searchVotereStatus(vemailId,vstatus1);
		Voterregistration vfirstname=bl.searchByEmail(vemailId);
		System.out.println(b);
		System.out.print("after all methods");
		System.out.print(vstatus1);
		System.out.print("after b1 check");
		System.out.print(b);
		System.out.print("after b2 check");
		System.out.print(b1);
		if(b==true &b1==true)
		{
			ServletContext app=request.getSession().getServletContext();
			app.setAttribute("VfName", vfirstname);
			
			//app.setAttribute("VEmailId",vfirstname.getVemailId() );
			//app.setAttribute("VPassword", vfirstname.getVpassword());
			response.sendRedirect("Login2.jsp");
		}
		else
		{
			request.getRequestDispatcher("/Login1.jsp").include(request, response);
		}
	}

	
}
