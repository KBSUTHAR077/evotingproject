package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FilePermission;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

import com.model.BlManager;
import com.pojo.Admin;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class AdminImage
 */

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*100,      // 10MB
  maxRequestSize=1024*1024*500)
@WebServlet("/AdminImage")
public class AdminImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String SAV_DIR = "D:/Maxgen/project/Evoting/EvotingDatabase/WebContent/image/";
	FilePermission permission1 = new FilePermission(SAV_DIR, "write");
	
       
	Admin a=new Admin();
	
	BlManager bl=new BlManager();
	
    public AdminImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String fileName1 = request.getParameter("adminPhoto");
			System.out.println(fileName1);
			String savePath = SAV_DIR;
			String actualPath = savePath + fileName1;
			FileInputStream inputStream = new FileInputStream(new File(actualPath));
			response.setContentType("*/*");
			IOUtils.copy(inputStream, response.getOutputStream());
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
