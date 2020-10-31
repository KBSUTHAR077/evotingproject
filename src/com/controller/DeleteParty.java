package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Candidateregistration;
import com.pojo.Party;

/**
 * Servlet implementation class DeleteParty
 */
@WebServlet("/DeleteParty")
public class DeleteParty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	BlManager bl=new BlManager();
    public DeleteParty() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String partyId=request.getParameter("partyId");
		int partyId1=Integer.parseInt(partyId);
		System.out.print(partyId1);
		Party p=bl.PartySrecby(partyId1);
		System.out.print(p);
		bl.deleteParty(p);
		
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
