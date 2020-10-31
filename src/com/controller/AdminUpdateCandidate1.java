package com.controller;

import java.io.FilePermission;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BlManager;
import com.pojo.Candidateregistration;

/**
 * Servlet implementation class AdminUpdateCandidate1
 */
@WebServlet("/AdminUpdateCandidate1")
public class AdminUpdateCandidate1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAV_DIR = "D:/Maxgen/project/Evoting/EvotingDatabase/WebContent/image/";
	FilePermission permission1 = new FilePermission(SAV_DIR, "write");
       
	Candidateregistration list=new Candidateregistration();
	BlManager bl=new BlManager();
	
    public AdminUpdateCandidate1() {
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
		//Candidateregistration c=bl.sreccanby(canId1);
	
		list=bl.CandidateSrecbyToUpdate(canId1);
		
		HttpSession session=request.getSession();
		session.setAttribute("list", list);
		response.sendRedirect("AdminUpdateCandidate.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String canId=request.getParameter("canId");
		int canId1 = Integer.parseInt(canId);
		String canStatus1=request.getParameter("canStatus1");
		String canStatus2=request.getParameter("canStatus2");
		String canNominationId = request.getParameter("canNominationId");
		//int canNominationId1 = Integer.parseInt(canNominationId);
		String canfirstname=request.getParameter("canfirstname");
		String canmiddlename=request.getParameter("canmiddlename");
		String canlastname=request.getParameter("canlastname");
		String cangender =request.getParameter("cangender");
		String canmaritalstatus=request.getParameter("canmaritalstatus");
		String canfathername=request.getParameter("canfathername");
		String canmothername=request.getParameter("canmothername");
		String canwifename=request.getParameter("canwifename");
		String canhusbandname=request.getParameter("canhusbandname");
		String cangaurdianname=request.getParameter("cangaurdianname");
		String canage=request.getParameter("canage");
		int canage1=Integer.parseInt(canage);
		String candob=request.getParameter("candob");
        String canoccupationstatus=request.getParameter("canoccupationstatus");
		
		//String canoccupationdoc=request.getParameter("canoccupationdoc");
		//byte[] canoccupationdoc1 = canoccupationdoc.getBytes();
		String candesignation=request.getParameter("candesignation");
	
        String canadharno=request.getParameter("canadharno");
		
		String canadhardoc=request.getParameter("canadhardoc");
		byte[] canadhardoc1 = canadhardoc.getBytes();
		String canpanno=request.getParameter("canpanno");
		
		//String canpandoc=request.getParameter("canpandoc");
		//byte[] canpandoc1 = canpandoc.getBytes();
		String canphoto=request.getParameter("canphoto");
		//byte[] canphoto1 = canphoto.getBytes();
		String canmob=request.getParameter("canmob");
		
		String cancorrescountry=request.getParameter("cancorrescountry");
		String cancorresstate=request.getParameter("cancorresstate");
		String cancorrescity=request.getParameter("cancorrescity");
		String cancorrestown=request.getParameter("cancorrestown");
		String cancorresaddress=request.getParameter("cancorresaddress");
		String cancorrespincode=request.getParameter("cancorrespincode");
		
		String canpermacountry=request.getParameter("canpermacountry");
		String canpermastate=request.getParameter("canpermastate");
		String canpermacity=request.getParameter("canpermacity");
		String canpermatown=request.getParameter("canpermatown");
		String canpermaaddress=request.getParameter("canpermaaddress");
		String canpermapincode=request.getParameter("canpermapincode");
		
		
		String canpwdstatus=request.getParameter("canpwdstatus");
		String canpwdudidno=request.getParameter("canpwdudidno");
		String canpwddoc=request.getParameter("canpwddoc");
		byte[] canpwddoc1 = canpwddoc.getBytes();
		
		String canCriminalStatus=request.getParameter("canCriminalStatus");
		String canCriminalRecord=request.getParameter("canCriminalRecord");
		//String canCriminalDoc=request.getParameter("canCriminalDoc");
		//byte[] canCriminalDoc1 = canCriminalDoc.getBytes();
		
		String canPartyName=request.getParameter("canPartyName");
		String canNomiAreaCountry=request.getParameter("canNomiAreaCountry");
		String canNomiAreaState=request.getParameter("canNomiAreaState");
		String canNomiAreaCity=request.getParameter("canNomiAreaCity");
		//String canNomiAreaTown=request.getParameter("canNomiAreaTown");
		String canNomiAreaPincode=request.getParameter("canNomiAreaPincode");

		String canCreditStatus=request.getParameter("canCreditStatus");
		String canCreditName=request.getParameter("canCreditName");
		String canCreditRelation=request.getParameter("canCreditRelation");
		String canCreditPartyName=request.getParameter("canCreditPartyName");
		String canCreditDesignation=request.getParameter("canCreditDesignation");
		
		
		
		String canSecurityQues=request.getParameter("canSecurityQues");
		String canSecurityAnswer=request.getParameter("canSecurityAnswer");
		String canEmailId=request.getParameter("canEmailId");
		String canPassword=request.getParameter("canPassword");
		String canRepassword=request.getParameter("canRepassword");
		
		
		
		
		list.setCanId(canId1);
		list.setCanStatus1(canStatus1);
		list.setCanStatus2(canStatus2);
		list.setCanNominationId(canNominationId);
		list.setCanfirstname(canfirstname);
		list.setCanmiddlename(canmiddlename);
		list.setCanlastname(canlastname);
		list.setCangender(cangender);
		list.setCanmaritalstatus(canmaritalstatus);
		
		list.setCanfathername(canfathername);
		list.setCanmothername(canmothername);
		list.setCanwifename(canwifename);
		list.setCanhusbandname(canhusbandname);
		list.setCangaurdianname(cangaurdianname);
		list.setCanage(canage1);
		
		//java.util.Date date = new java.util.Date(candob);
		//java.sql.Date date=new java.sql.Date(candob); 
		 Date date=Date.valueOf(candob);
		list.setCandob(date);
		
		list.setCanoccupationstatus(canoccupationstatus);
		//list.setCanoccupationdoc(canoccupationdoc1);
		list.setCandesignation(candesignation);
		
		list.setCanadharno(canadharno);
		//list.setCanadhardoc(canadhardoc1);
		
		list.setCanpanno(canpanno);
		//list.setCanpandoc(canpandoc1);
		
		list.setCanphoto(canphoto);
		list.setCanmob(canmob);

		list.setCancorrescountry(cancorrescountry);
		list.setCancorresstate(cancorresstate);
		list.setCancorrescity(cancorrescity);
		list.setCancorrestown(cancorrestown);
		list.setCancorresaddress(cancorresaddress);
		
		list.setCancorrespincode(cancorrespincode);
		
		
		list.setCanpermacountry(canpermacountry);
	    list.setCanpermastate(canpermastate);
		list.setCanpermacity(canpermacity);
		list.setCanpermatown(canpermatown);
		list.setCanpermaaddress(canpermaaddress);
		
		list.setCanpermapincode(canpermapincode);
		
		list.setCanpwdstatus(Boolean.parseBoolean(canpwdstatus));
		list.setCanpwdudidno(canpwdudidno);
		//list.setCanpwddoc(canadhardoc1);
		
		list.setCanCriminalStatus(Boolean.parseBoolean(canCriminalStatus));
		list.setCanCriminalRecord(canCriminalRecord);
		//list.setCanCriminalDoc(canCriminalDoc1);
				
		list.setCanPartyName(canPartyName);
		list.setCanNomiAreaCountry(canNomiAreaCountry);
		list.setCanNomiAreaState(canNomiAreaState);
		list.setCanNomiAreaCity(canNomiAreaCity);
		//list.setCanNomiAreaTown(canNomiAreaTown);
		
		list.setCanNomiAreaPincode(canNomiAreaPincode);
				
		list.setCanCreditStatus(Boolean.parseBoolean(canCreditStatus));
		list.setCanCreditRelation(canCreditRelation);
		list.setCanCreditName(canCreditName);
		list.setCanCreditPartyName(canCreditPartyName);
		list.setCanCreditDesignation(canCreditDesignation);
	
		list.setCanSecurityQues(canSecurityQues);
		list.setCanSecurityAnswer(canSecurityAnswer);
		list.setCanEmailId(canEmailId);
	    list.setCanPassword(canPassword);
		list.setCanRepassword(canRepassword);
		
		//bl.UpdateCandidatesdata(c);
		bl.UpdateCan(list);
		response.sendRedirect("Admin1.jsp");
	}

}
