package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Bjp;
import com.pojo.Bsp;
import com.pojo.Candidateregistration;
import com.pojo.Castvote;
import com.pojo.Cpi;
import com.pojo.Incp;
import com.pojo.Ncp;
import com.pojo.Party;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class Counting
 */
@WebServlet("/Counting")
public class Counting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Bjp bjp=new Bjp();
	BlManager bl=new BlManager();
    public Counting() {
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
		
		
}
}
