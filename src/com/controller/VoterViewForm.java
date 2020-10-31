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
import com.pojo.Voterregistration;

/**
 * Servlet implementation class VoterViewForm
 */
@WebServlet("/VoterViewForm")
public class VoterViewForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Voterregistration v = new Voterregistration();
	BlManager bl = new BlManager();
	
    public VoterViewForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vid=request.getParameter("vid");
		int vid1=Integer.parseInt(vid);
		System.out.println(vid1);
		//BlManager bl=new BlManager();
		//Voterregistration v=bl.srecby(vid1);
		
		Voterregistration list=bl.Votersrecby(vid1);
		
		HttpSession session=request.getSession();
		session.setAttribute("list",list);
		response.sendRedirect("VoterView1.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
