package com.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BlManager;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class VoterUpdate
 */
@WebServlet("/VoterUpdate")
public class VoterUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Voterregistration v = new Voterregistration();
	BlManager bl = new BlManager();
	
    public VoterUpdate() {
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
		BlManager bl=new BlManager();
		//Voterregistration v=bl.srecby(vid1);
	
		Voterregistration list=bl.Votersrecby(vid1);
		HttpSession session=request.getSession();
		session.setAttribute("list", list);
		response.sendRedirect("VoterUpdate1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vid=request.getParameter("vid");
		int vid1 = Integer.parseInt(vid);
		String vfirstname = request.getParameter("vfirstname");
		String vmiddlename = request.getParameter("vmiddlename");
		String vlastname = request.getParameter("vlastname");
		String vgender = request.getParameter("vgender");
		String vmaritalstatus = request.getParameter("vmaritalstatus");
		String vfathername = request.getParameter("vfathername");
		String vmothername = request.getParameter("vmothername");
		String vwifename = request.getParameter("vwifename");
		String vhusbandname = request.getParameter("vhusbandname");
		String vgaurdianname = request.getParameter("vgaurdianname");

		String vage = request.getParameter("vage");
		int vage1 = Integer.parseInt(vage);
		String vdob = request.getParameter("vdob");
		
		String voccupatiostatus = request.getParameter("voccupatiostatus");
		String voccupationdoc = request.getParameter("voccupationdoc");
		byte[] voccupationdoc1 = voccupationdoc.getBytes();
		String vdesignation = request.getParameter("vdesignation");
		String vadharno = request.getParameter("vadharno");
		
		String vadhardoc = request.getParameter("vadhardoc");
		byte[] vadhardoc1 = vadhardoc.getBytes();
		String vpanno = request.getParameter("vpanno");
		
		String vpandoc = request.getParameter("vpandoc");
		byte[] vpandoc1 = vpandoc.getBytes();
		String vphoto = request.getParameter("vphoto");
		//byte[] vphoto1 = vphoto.getBytes();
		String vmob = request.getParameter("vmob");
		String vcorrescountry = request.getParameter("vcorrescountry");
		String vcorresstate = request.getParameter("vcorresstate");
		String vcorrescity = request.getParameter("vcorrescity");
		String vcorrestown = request.getParameter("vcorrestown");
		String vcorresaddress = request.getParameter("vcorresaddress");
		String vcorrespincode = request.getParameter("vcorrespincode");
		
		String vpermacountry = request.getParameter("vpermacountry");
		String vpermastate = request.getParameter("vpermastate");
		String vpermacity = request.getParameter("vpermacity");
		String vpermatown = request.getParameter("vpermatown");
		String vpermaaddress = request.getParameter("vpermaaddress");
		String vpermapincode = request.getParameter("vpermapincode");
		
		String vpwdstatus = request.getParameter("vpwdstatus");
		String vpwdudidno = request.getParameter("vpwdudidno");
		
		String vpwddoc = request.getParameter("vpwddoc");
		byte[] Vpwddoc1 = vpwddoc.getBytes();
		String vemailId = request.getParameter("vemailId");
		String vpassword = request.getParameter("vpassword");
		String vrepassword = request.getParameter("vrepassword");
		String vsecurityQues = request.getParameter("vsecurityQues");
		String vsecurityAnswer=request.getParameter("vsecurityAnswer");
		
		v.setVid(vid1);
		v.setVfirstname(vfirstname);
		v.setVmiddlename(vmiddlename);
		v.setVlastname(vlastname);
		v.setVgender(vgender);
		v.setVmaritalstatus(vmaritalstatus);
		v.setVfathername(vfathername);
		v.setVmothername(vmothername);
		v.setVwifename(vwifename);
		v.setVhusbandname(vhusbandname);
		v.setVgaurdianname(vgaurdianname);
		v.setVage(vage1);
		//java.util.Date date = new java.util.Date(vdob);
		 Date date=Date.valueOf(vdob);
		v.setVdob(date);
		v.setVoccupatiostatus(voccupatiostatus);
		v.setVoccupationdoc(voccupationdoc1);
		v.setVdesignation(vdesignation);
		v.setVadharno(vadharno);
		v.setVadhardoc(vadhardoc1);
		v.setVpanno(vpanno);
	    v.setVpandoc(vpandoc1);
		v.setVphoto(vphoto);
		v.setVmob(vmob);
		
		v.setVpermacountry(vpermacountry);
		v.setVpermastate(vpermastate);
		v.setVpermacity(vpermacity);
		v.setVpermatown(vpermatown);
		v.setVpermaaddress(vpermaaddress);
		v.setVpermapincode(vpermapincode);
		v.setVcorrescountry(vcorrescountry);
		v.setVcorresstate(vcorresstate);
		v.setVcorrescity(vcorrescity);
		v.setVcorrestown(vcorrestown);
		v.setVcorresaddress(vcorresaddress);
		v.setVcorrespincode(vcorrespincode);
		
		v.setVpwdstatus(Boolean.parseBoolean(vpwdstatus));
		v.setVpwdudidno(vpwdudidno);
		v.setVpwddoc(Vpwddoc1);
		
		v.setVemailId(vemailId);
		v.setVpassword(vpassword);
		v.setVrepassword(vrepassword);

		v.setVsecurityQues(vsecurityQues);
		v.setVsecurityAnswer(vsecurityAnswer);
		bl.updateVotersdata(v);
	}

}
