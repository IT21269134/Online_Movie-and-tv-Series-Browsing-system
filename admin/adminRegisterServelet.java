package com.admin;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig  // for add img
@WebServlet("/adminRegisterServelet")
public class adminRegisterServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("psw");
		
//		image upload
		Part file = request.getPart("img"); 
		String imageFileName = file.getSubmittedFileName(); //get img file name
		System.out.println("Image Name: " +imageFileName);
		String uploadPath="C:/Users/Nileesha/Desktop/Admin/Project Web/src/main/webapp/images/AdminImg/" +imageFileName; // upload path
		System.out.println("Upload Path: " +uploadPath);
		// upload image to selected folder
		try {
			
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
//		
		
		boolean isDone;
		
		isDone = adminDBUtil.registerAdmin(name, email, phone, username, password, imageFileName);
		
		
		//checking inserting data successful; the value in servlet >0
		if(isDone == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminLogin.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
