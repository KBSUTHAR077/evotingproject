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
import com.pojo.Voterregistration;

/**
 * Servlet implementation class SaveServlet
 */
@WebServlet("/SaveServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 70, // 10MB
maxRequestSize = 1024 * 1024 * 100)

public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String SAV_DIR = "D:/Maxgen/project/Evoting/EvotingDatabase/WebContent/image/";
	FilePermission permission1 = new FilePermission(SAV_DIR, "write");
	
	
	Voterregistration v = new Voterregistration();
	BlManager bl = new BlManager();

	public SaveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {

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
		//String voccupationdoc = request.getParameter("voccupationdoc");
		//byte[] voccupationdoc1 = voccupationdoc.getBytes();
		String vdesignation = request.getParameter("vdesignation");
		String vadharno = request.getParameter("vadharno");
		
		//String vadhardoc = request.getParameter("vadhardoc");
		//byte[] vadhardoc1 = vadhardoc.getBytes();
		String vpanno = request.getParameter("vpanno");
		
		//String vpandoc = request.getParameter("vpandoc");
		//byte[] vpandoc1 = vpandoc.getBytes();
		//String vphoto = request.getParameter("vphoto");
		Part vphoto = request.getPart("vphoto");
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
		
		//String vpwddoc = request.getParameter("vpwddoc");
		//byte[] Vpwddoc1 = vpwddoc.getBytes();
		String vemailId = request.getParameter("vemailId");
		String vpassword = request.getParameter("vpassword");
		String vrepassword = request.getParameter("vrepassword");
		String vsecurityQues = request.getParameter("vsecurityQues");
		String vsecurityAnswer=request.getParameter("vsecurityAnswer");
		
		
		
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
		
		
	//	java.util.Date date = new java.util.Date(vdob);
		 Date date=Date.valueOf(vdob);
		v.setVdob(date);
		v.setVoccupatiostatus(voccupatiostatus);
		//v.setVoccupationdoc(voccupationdoc1);
		v.setVdesignation(vdesignation);
		v.setVadharno(vadharno);
		//v.setVadhardoc(vadhardoc1);
		v.setVpanno(vpanno);
	    //v.setVpandoc(vpandoc1);
		//v.setVphoto(vphoto);
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
		//v.setVpwddoc(Vpwddoc1);
		
		v.setVemailId(vemailId);
		v.setVpassword(vpassword);
		v.setVrepassword(vrepassword);

		v.setVsecurityQues(vsecurityQues);
		v.setVsecurityAnswer(vsecurityAnswer);
		
		//bl.savedata(v);
		try {
			String vphoto1 = extractFileName(vphoto);
			v.setVphoto(vphoto1);
			vphoto.write(SAV_DIR + File.separator + vphoto1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		bl.insertVotersimage(v);
		HttpSession session=request.getSession();
		session.setAttribute("getAlert", "Yeah you succeed");
		
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


}
