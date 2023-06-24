package com.admin;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig  // for add img
@WebServlet("/adminUpdateServlet")
public class adminUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("adID");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pw");
		
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
		
		//catching boolean value from adminUpadate
		boolean isTrue;
		
		isTrue = adminDBUtil.updateAdmin(id, name, email, phone, uname, pass, imageFileName);
		
		if(isTrue == true) {
			
			List<Admin> adminDetails = adminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);
			RequestDispatcher dis = request.getRequestDispatcher("adminAccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Admin> adminDetails = adminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminAccount.jsp");
			dis.forward(request, response);
		}
	}

}
