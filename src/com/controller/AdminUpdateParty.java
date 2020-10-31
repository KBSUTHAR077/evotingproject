package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Party;

/**
 * Servlet implementation class AdminUpdateParty
 */
@WebServlet("/AdminUpdateParty")
public class AdminUpdateParty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Party party=new Party();
	BlManager bl=new BlManager();
    public AdminUpdateParty() {
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
		String partyName = request.getParameter("partyName");
		String partSymbol = request.getParameter("partSymbol");
		party.setPartyName(partyName);
		party.setPartSymbol(partSymbol);
		bl.Updateparty(party);
		response.sendRedirect("Admin1.jsp");
	}

}
