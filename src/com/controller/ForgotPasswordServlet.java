package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BlManager;
import com.pojo.Admin;
import com.pojo.Candidateregistration;
import com.pojo.Voterregistration;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	boolean b,b1,b2=false;
	Admin a=new Admin();
	Candidateregistration c=new Candidateregistration();
	Voterregistration v=new Voterregistration();
	BlManager bl=new BlManager();
    public ForgotPasswordServlet() {
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
		String email=request.getParameter("email");
		String name=request.getParameter("fname");
		String secretQuestion=request.getParameter("secretQuestion");
		String secretAnswer=request.getParameter("secretAnswer");
	
				b = bl.searchEmailIdInVoter(email,secretQuestion,secretAnswer);
				//b1= bl.searchEmailIdInCandidate(email,secretQuestion,secretAnswer);
				//b2= bl.searchEmailIdInAdmin(email,secretQuestion,secretAnswer);
				if (b == true ) // || b1== true || b2== trueuser email checking
				{
					System.out.println(email);
					System.out.println(name);
					System.out.println("condition true");
					
					Random rand = new Random();
						int  n = rand.nextInt(50) + 1;
					String msg=name+n;
					System.out.println(msg);
					ServletContext context = getServletContext();
					String host = context.getInitParameter("host");
					String port = context.getInitParameter("port");
					String user1 = context.getInitParameter("user");
					String pass = context.getInitParameter("pass");
					
				   try
				   {
					   Mailer.send(host, port, user1, pass, email, msg);
				   }
				   catch (Exception ex) 
					{
							ex.printStackTrace();
					}
				   if(b==true)
				   {
					   Voterregistration voter=bl.searchDataByEmail(email);
					   
					   v.setVid(voter.getVid());
						v.setVfirstname(voter.getVfirstname());
						System.out.println(voter.getVid());
						v.setVmiddlename(voter.getVmiddlename());
						v.setVlastname(voter.getVlastname());
						v.setVgender(voter.getVgender());
						v.setVmaritalstatus(voter.getVmaritalstatus());
						v.setVfathername(voter.getVfathername());
						v.setVmothername(voter.getVmothername());
						v.setVwifename(voter.getVwifename());
						v.setVhusbandname(voter.getVhusbandname());
						v.setVgaurdianname(voter.getVgaurdianname());
						v.setVage(voter.getVage());
						//java.util.Date date = new java.util.Date(vdob);
						 //Date date=Date.valueOf(voter.getVdob());
						v.setVdob(voter.getVdob());
						v.setVoccupatiostatus(voter.getVoccupatiostatus());
						v.setVoccupationdoc(voter.getVoccupationdoc());
						v.setVdesignation(voter.getVdesignation());
						v.setVadharno(voter.getVadharno());
						v.setVadhardoc(voter.getVpandoc());
						v.setVpanno(voter.getVpanno());
					    v.setVpandoc(voter.getVpandoc());
						v.setVphoto(voter.getVphoto());
						v.setVmob(voter.getVmob());
						
						v.setVpermacountry(voter.getVpermacountry());
						v.setVpermastate(voter.getVpermastate());
						v.setVpermacity(voter.getVpermacity());
						v.setVpermatown(voter.getVpermatown());
						v.setVpermaaddress(voter.getVpermaaddress());
						v.setVpermapincode(voter.getVpermapincode());
						v.setVcorrescountry(voter.getVcorrescountry());
						v.setVcorresstate(voter.getVcorresstate());
						v.setVcorrescity(voter.getVcorrescity());
						v.setVcorrestown(voter.getVcorrestown());
						v.setVcorresaddress(voter.getVcorresaddress());
						v.setVcorrespincode(voter.getVcorrespincode());
						
						v.setVpwdstatus(voter.getVpwdstatus());
						v.setVpwdudidno(voter.getVpwdudidno());
						v.setVpwddoc(voter.getVpwddoc());
						
						v.setVemailId(voter.getVemailId());
						v.setVpassword(msg);
						v.setVrepassword(msg);
				
						v.setVsecurityQues(voter.getVsecurityQues());
						v.setVsecurityAnswer(voter.getVsecurityAnswer());
						bl.updateVotersdata(v);
					   
				   }
				   response.sendRedirect("Login1.jsp");
				}
				   else
					{	
						PrintWriter out=response.getWriter();
					     out.println("<script type=\"text/javascript\">");
						 out.println("alert('Enter valid Input data..!!');");
						 out.println("location='forgotpassword.jsp';");
						 out.println("</script>");
					}
	}

}
