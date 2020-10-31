package com.controller;

import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.model.BlManager;
import com.pojo.Candidateregistration;
import com.pojo.Party;


/**
 * Servlet implementation class SaveCanServlet
 */
@WebServlet("/SaveCanServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 70, // 10MB
maxRequestSize = 1024 * 1024 * 100)

public class SaveCanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String SAV_DIR = "D:/Maxgen/project/Evoting/EvotingDatabase/WebContent/image/";
	FilePermission permission1 = new FilePermission(SAV_DIR, "write");
	
       
	Candidateregistration c=new Candidateregistration();
    BlManager bl=new BlManager();
    
    public SaveCanServlet() {
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

		String partyName=request.getParameter("partyName");
		String canPartyName=request.getParameter("partyName");
		String canStatus1=request.getParameter("canStatus1");
		String canStatus2=request.getParameter("canStatus2");
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
		//String canadhardoc=request.getParameter("canadhardoc");
		//byte[] canadhardoc1 = canadhardoc.getBytes();
		String canpanno=request.getParameter("canpanno");
		
		//String canpandoc=request.getParameter("canpandoc");
		//byte[] canpandoc1 = canpandoc.getBytes();
		//Part canphoto=request.getPart("canphoto");
		//Part canphoto = request.getPart("canphoto");
		Part canphoto = request.getPart("canphoto");
		//String canphoto=request.getParameter("canphoto");
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
		//String canpwddoc=request.getParameter("canpwddoc");
		//byte[] canpwddoc1 = canpwddoc.getBytes();
		
		String canCriminalStatus=request.getParameter("canCriminalStatus");
		String canCriminalRecord=request.getParameter("canCriminalRecord");
		//String canCriminalDoc=request.getParameter("canCriminalDoc");
		//byte[] canCriminalDoc1 = canCriminalDoc.getBytes();
		
		
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
		
		System.out.println(partyName);
		Party de=bl.srecbyparty(partyName);
		
		c.setParty(de);
		c.setCanStatus1(canStatus1);
		c.setCanStatus2(canStatus2);
		c.setCanfirstname(canfirstname);
		c.setCanmiddlename(canmiddlename);
		c.setCanlastname(canlastname);
		c.setCangender(cangender);
		c.setCanmaritalstatus(canmaritalstatus);
		
		c.setCanfathername(canfathername);
		c.setCanmothername(canmothername);
		c.setCanwifename(canwifename);
		c.setCanhusbandname(canhusbandname);
		c.setCangaurdianname(cangaurdianname);
		c.setCanage(canage1);
		
		//java.util.Date date = new java.util.Date(candob);
		//java.sql.Date date=new java.sql.Date(candob); 
		 Date date=Date.valueOf(candob);
		c.setCandob(date);
		
		c.setCanoccupationstatus(canoccupationstatus);
		//c.setCanoccupationdoc(canoccupationdoc1);
		c.setCandesignation(candesignation);
		
		c.setCanadharno(canadharno);
		//c.setCanadhardoc(canadhardoc1);
		
		c.setCanpanno(canpanno);
		//c.setCanpandoc(canpandoc1);
		
		//c.setCanphoto(canphoto);
		c.setCanmob(canmob);

		c.setCancorrescountry(cancorrescountry);
		c.setCancorresstate(cancorresstate);
		c.setCancorrescity(cancorrescity);
		c.setCancorrestown(cancorrestown);
		c.setCancorresaddress(cancorresaddress);
		
		c.setCancorrespincode(cancorrespincode);
		
		c.setCanpermacountry(canpermacountry);
	    c.setCanpermastate(canpermastate);
		c.setCanpermacity(canpermacity);
		c.setCanpermatown(canpermatown);
		c.setCanpermaaddress(canpermaaddress);
		c.setCanpermapincode(canpermapincode);
		
		c.setCanpwdstatus(Boolean.parseBoolean(canpwdstatus));
		c.setCanpwdudidno(canpwdudidno);
		//c.setCanpwddoc(canadhardoc1);
		
		c.setCanCriminalStatus(Boolean.parseBoolean(canCriminalStatus));
		c.setCanCriminalRecord(canCriminalRecord);
		//c.setCanCriminalDoc(canCriminalDoc1);
				
		c.setCanPartyName(canPartyName);
		c.setCanNomiAreaState(canNomiAreaCountry);
		c.setCanNomiAreaCountry(canNomiAreaCountry);
		c.setCanNomiAreaState(canNomiAreaState);
		c.setCanNomiAreaCity(canNomiAreaCity);
		//c.setCanNomiAreaTown(canNomiAreaTown);
		
		c.setCanNomiAreaPincode(canNomiAreaPincode);
				
		
		//c.setCanNomiAreaTown(canNomiAreaTown);
	
				
		c.setCanCreditStatus(Boolean.parseBoolean(canCreditStatus));
		c.setCanCreditRelation(canCreditRelation);
		c.setCanCreditName(canCreditName);
		c.setCanCreditPartyName(canCreditPartyName);
		c.setCanCreditDesignation(canCreditDesignation);
	
		c.setCanSecurityQues(canSecurityQues);
		c.setCanSecurityAnswer(canSecurityAnswer);
		c.setCanEmailId(canEmailId);
	    c.setCanPassword(canPassword);
		c.setCanRepassword(canRepassword);
		//bl.savedata(c);
		
		try {
			String canphoto1 = extractFileName(canphoto);
			c.setCanphoto(canphoto1);
			canphoto.write(SAV_DIR + File.separator + canphoto1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		bl.insertCandimage(c);
		
		response.sendRedirect("Admin4.jsp");
		//response.sendRedirect("VoterRegistration.jsp");

	}
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";

		}
		
	/*
		try {
			String canphoto1 = extractFileName(canphoto);
			c.setCanphoto(canphoto1);
			canphoto.write(SAV_DIR + File.separator + canphoto1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		bl.insertCanimage(c);
		HttpSession session=request.getSession();
		session.setAttribute("getAlert", "Yeah you succeed");
		
		//response.sendRedirect("Register2.jsp");
		//response.sendRedirect("CanLogin.jsp");
	}

	private String extractFileName(Part part) {
	String contentDisp = part.getHeader("content-disposition");
	String[] items = contentDisp.split(";");
	for (String s : items) {
		if (s.trim().startsWith("filename")) {
			return s.substring(s.indexOf("=") + 2, s.length() - 1);
		}
	}
	return "";

	}*/

}
