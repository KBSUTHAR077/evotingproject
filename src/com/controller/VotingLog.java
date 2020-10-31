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
import com.pojo.Castvote;
import com.pojo.Party;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class VotingLog
 */
@WebServlet("/VotingLog")
public class VotingLog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Voterregistration v = new Voterregistration();
	Castvote cast = new Castvote();
	BlManager bl = new BlManager();

	public VotingLog() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside the get method");
        String castEpicNo= request.getParameter("castEpicNo");
        System.out.println();
        Castvote c1=bl.searchcastId(castEpicNo);
        System.out.println(c1);
		//String castId = request.getParameter("castId");
		//int castId1 = Integer.parseInt(castId);
        
		System.out.println("idddddddddddddddddd===" + c1.getCastId());
		//Castvote v = bl.searchbycastvoteId(castId1);
		//Castvote c = bl.searchbycastvoteId(castId1,castEpicNo);
		System.out.println("v=======" + v);
		//System.out.println("c=======" + c);
		String partyName=request.getParameter("partyName");
		String castVotingCountry = request.getParameter("castVotingCountry");
		String castVotingState = request.getParameter("castVotingState");
		String castVotingCity = request.getParameter("castVotingCity");

		String castVotingPartyName = request.getParameter("partyName");
		String castCanName = request.getParameter("castCanName");
		System.out.println(partyName);
		Party de=bl.srecbyparty(partyName);
		cast.setParty(de);
		cast.setCastVotingCountry(castVotingCountry);
		cast.setCastVotingState(castVotingState);
		cast.setCastVotingCity(castVotingCity);
		cast.setCastVotingPartyName(castVotingPartyName);
		cast.setCastCanName(castCanName);

		cast.setCastVfirstName(c1.getCastVfirstName());
		cast.setCastVlastName(c1.getCastVlastName());
		cast.setCastEpicNo(c1.getCastEpicNo());
		cast.setCastVadharNo(c1.getCastVadharNo());

		bl.savecastingdata(cast);
		request.getRequestDispatcher("/Login1.jsp").include(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		String vfirstname = request.getParameter("vfirstname");

		String vlastname = request.getParameter("vlastname");

		String vid = request.getParameter("vid");
		int vid1 = Integer.valueOf(vid);
		String vepicNo = request.getParameter("vepicNo");
		String vadharno = request.getParameter("vadharno");
		String vpanno = request.getParameter("vpanno");
		String vsecurityQues = request.getParameter("vsecurityQues");
		String vsecurityAnswer = request.getParameter("vsecurityAnswer");
		String vpassword = request.getParameter("vpassword");
		System.out.println(vfirstname);
		System.out.println(vlastname);
		System.out.println(vid);
		System.out.println(vepicNo);
		System.out.println(vadharno);
		System.out.println(vpanno);
		System.out.println(vsecurityQues);
		System.out.println(vsecurityAnswer);
		System.out.println(vpassword);

		boolean b = bl.searchVotingDetails(vfirstname, vlastname, vadharno, vpanno, vsecurityQues, vsecurityAnswer,
				vpassword, vepicNo);
		v = bl.Votersrecby(vid1);
		System.out.println("v=====" + v);

		if (b == true) {

			Castvote c = new Castvote();

			System.out.println("condition true");
			/*
			 * cast.setCastVfirstName(cast.getCastVfirstName());
			 * cast.setCastVlastName(cast.getCastVlastName());
			 * cast.setCastEpicNo(cast.getCastEpicNo());
			 * cast.setCastVadharNo(cast.getCastVadharNo());
			 */
			c.setCastVfirstName(vfirstname);
			c.setCastVlastName(vlastname);
			String cepicno=vepicNo;
			c.setCastEpicNo(vepicNo);
			c.setCastVadharNo(vadharno);
			// cast.setCastVpanNo(cast.getCastVpanNo()vpanno);
			// cast.setCastVpanNo(vpanno);
			// cast.setCastVsecurityAnsw(vsecurityAnswer);
			// cast.setCastVsecurtiyQues(vsecurityQues);
			// cast.setCastVpassword(vpassword);
System.out.println(cepicno);
			bl.savecastdata(c);

			/*/.....String castEpicNo1=c.castEpicNo1.fucn();;
			request.setAttribute("castEpicNo", castEpicNo);......
			 * HttpSession session = request.getSession();
			 * request.setAttribute("alertMsg", "data add sucess");
			 */
			// session.setMaxInactiveInterval(2*60);
			
			//String s = request.getParameter("c.setCastEpicNo(vepicNo)")
					//String s1=request.setAttribute("c.setCastEpicNo(vepicNo)") ;
			//request.setAttribute("castEpicNo", vepicNo); 
		
			System.out.print("cast epic no."+c.getCastEpicNo());
			request.setAttribute("castEpicNo", c.getCastEpicNo()); 
			//response.sendRedirect("VotingCast1.jsp");
			request.getRequestDispatcher("VotingCast1.jsp").forward(request, response);
			//response.sendRedirect("VotingCast1?epic=<%=vepicno%>.jsp");
		} else {
			request.getRequestDispatcher("/Login1.jsp").include(request, response);
		}
	}
}
