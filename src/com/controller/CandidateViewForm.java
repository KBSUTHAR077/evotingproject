package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BlManager;
import com.pojo.Candidateregistration;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class CandidateViewForm
 */
@WebServlet("/CandidateViewForm")
public class CandidateViewForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Candidateregistration c=new Candidateregistration();
	BlManager bl=new BlManager();
	
    public CandidateViewForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String canId=request.getParameter("canId");
		int canId1=Integer.parseInt(canId);
		System.out.println(canId1);
		BlManager bl=new BlManager();
		//Candidateregistration c=bl.sreccanby(canId1);
		
		Candidateregistration list=bl.CandidateSrecby(canId1);
		HttpSession session=request.getSession();
		session.setAttribute("list",list);
		response.sendRedirect("CandidateView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
