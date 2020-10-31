package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.BlManager;

import com.pojo.Candidateregistration;


/**
 * Servlet implementation class DeleteVoter
 */
@WebServlet("/DeleteCandidate")
public class DeleteCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	//Admin a=new Admin();
	//Voterregistration v=new Voterregistration();
	//Candidateregistration c=new Candidateregistration();
	BlManager bl=new BlManager();
    public DeleteCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String canId=request.getParameter("canId");
		int canId1=Integer.parseInt(canId);
		System.out.print(canId1);
		Candidateregistration c=bl.CandidateSrecby(canId1);
		System.out.print(c);
		bl.deleteCandidate(c);
		
		response.sendRedirect("Admin1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
