package com.controller;

import java.io.File;
import java.io.FilePermission;
import java.io.IOException;

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
import com.pojo.Party;

/**
 * Servlet implementation class PartyReg
 */
@WebServlet("/PartyReg")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 70, // 10MB
maxRequestSize = 1024 * 1024 * 100)
public class PartyReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	private static final String SAV_DIR = "D:/Maxgen/project/Evoting/EvotingDatabase/WebContent/image/";
	FilePermission permission1 = new FilePermission(SAV_DIR, "write");
	
       
	Party party=new Party();
	BlManager bl=new BlManager();
	
    public PartyReg() {
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

		String partyName = request.getParameter("partyName");
		party.setPartyName(partyName);
		Part partSymbol= request.getPart("partSymbol");
		try {
			String partSymbol1 = extractFileName(partSymbol);
			party.setPartSymbol(partSymbol1);
			partSymbol.write(SAV_DIR + File.separator + partSymbol1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		bl.insertpartyimage(party);
		HttpSession session=request.getSession();
		session.setAttribute("getAlert", "Yeah you succeed");
		//session.setAttribute("adminFirstName", adminFirstName);
		//bl.saveAdmindata(a);
		
		response.sendRedirect("Admin1.jsp");
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


