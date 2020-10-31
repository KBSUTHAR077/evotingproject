package com.controller;

import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.model.BlManager;
import com.pojo.Admin;


/**
 * Servlet implementation class AdminSaveServlet
 */
@WebServlet("/AdminSaveServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 70, // 10MB
maxRequestSize = 1024 * 1024 * 100)
public class AdminSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private static final String SAV_DIR = "D:/Maxgen/project/Evoting/EvotingDatabase/WebContent/image/";
	FilePermission permission1 = new FilePermission(SAV_DIR, "write");
	
       
	Admin a=new Admin();
	BlManager bl=new BlManager();
    public AdminSaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String adminFirstName = request.getParameter("adminFirstName");
		String adminMiddleName = request.getParameter("adminMiddleName");
		String adminLastName = request.getParameter("adminLastName");
		String adminSecurityQues = request.getParameter("adminSecurityQues");
		String adminSecurityAnswer = request.getParameter("adminSecurityAnswer");
		Part adminPhoto = request.getPart("adminPhoto");
		String adminEmailId = request.getParameter("adminEmailId");
		String adminPassword = request.getParameter("adminPassword");
		String adminRepassword = request.getParameter("adminRepassword");
		//String adminHscanFile = request.getParameter("adminHscanFile");
		//byte[] adminHscanFile1 = adminHscanFile.getBytes();
		
		a.setAdminFirstName(adminFirstName);
		a.setAdminMiddleName(adminMiddleName);
		a.setAdminLastName(adminLastName);
		a.setAdminSecurityQues(adminSecurityQues);
		a.setAdminSecurityAnswer(adminSecurityAnswer);
		//a.setAdminPhoto(adminPhoto);
		a.setAdminEmailId(adminEmailId);
		a.setAdminPassword(adminPassword);
		a.setAdminRepassword(adminRepassword);
		//a.setAdminHscanFile(adminHscanFile1);
		try {
			String adminPhoto1 = extractFileName(adminPhoto);
			a.setAdminPhoto(adminPhoto1);
			adminPhoto.write(SAV_DIR + File.separator + adminPhoto1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		bl.insertimage(a);
		HttpSession session=request.getSession();
		session.setAttribute("getAlert", "Yeah you succeed");
		//session.setAttribute("adminFirstName", adminFirstName);
		//bl.saveAdmindata(a);
		
		response.sendRedirect("Admin4.jsp");
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
