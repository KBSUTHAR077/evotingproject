package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Castvote;

/**
 * Servlet implementation class VotingProcess
 */
@WebServlet("/VotingProcess")
public class VotingProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	Castvote cast=new Castvote();
	BlManager bl=new BlManager();
    public VotingProcess() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		String castId=request.getParameter("castId");
		int castId1 = Integer.valueOf(castId);
		String castVotingCountry=request.getParameter("castVotingCountry"); 
		String castVotingState=request.getParameter("castVotingState"); 
		String castVotingCity=request.getParameter("castVotingCity"); 
		
		String castVotingPartyName=request.getParameter("castVotingPartyName");
		String castCanName=request.getParameter("castCanName"); 
		cast.setCastId(castId1);
		cast.setCastVotingCountry(castVotingCountry);
		cast.setCastVotingState(castVotingState);
		cast.setCastVotingCity(castVotingCity);
		cast.setCastVotingPartyName(castVotingPartyName);
		cast.setCastCanName(castCanName);
		
		bl.savecastingdata(cast);
		
	}

}
