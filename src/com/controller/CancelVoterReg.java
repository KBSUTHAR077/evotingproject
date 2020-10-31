package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BlManager;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class CancelVoterReg
 */
@WebServlet("/CancelVoterReg")
public class CancelVoterReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Voterregistration v=new Voterregistration();
	BlManager bl=new BlManager();
    public CancelVoterReg() {
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
		//String vfirstname=request.getParameter("vfirstname");
		//String vmiddlename=request.getParameter("vmiddlename");
		//String vlastname=request.getParameter("vlastname");
		
		String vid=request.getParameter("vid");
		int vid1 = Integer.valueOf(vid);
		//String  vadharno=request.getParameter("vadharno");
		String vcancelRegistration=request.getParameter("vcancelRegistration");
		String vcancelOtherDetails=request.getParameter("vcancelOtherDetails");
		String vcancelRegistrationDoc=request.getParameter("vcancelRegistrationDoc");
		byte[] vcancelRegistrationDoc1 = vcancelRegistrationDoc.getBytes();
		//System.out.println(vfirstname);
		//System.out.println(vlastname);
		System.out.println(vid);
		//System.out.println(vadharno);
		System.out.println(vcancelRegistration);
		System.out.println(vcancelOtherDetails);
		System.out.println(vcancelRegistrationDoc);
		v.setVcancelRegistration(vcancelRegistration);
		v.setVcancelOtherDetails(vcancelOtherDetails);
		v.setVcancelRegistrationDoc(vcancelRegistrationDoc1);
		
		 v=bl.Votersrecby(vid1);
		//v.delete(v);
		
		 request.getRequestDispatcher("/Login1.jsp").include(request, response);
	}

}
