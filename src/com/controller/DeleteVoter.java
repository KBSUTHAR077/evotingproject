package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class DeleteVoter
 */

@WebServlet("/DeleteVoter")
public class DeleteVoter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	BlManager bl=new BlManager();
    public DeleteVoter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vid=request.getParameter("vid");
		int vid1=Integer.parseInt(vid);
		System.out.print(vid1);
		Voterregistration v=bl.Votersrecby(vid1);
		System.out.print(v);
		bl.deleteVoter(v);
		
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
