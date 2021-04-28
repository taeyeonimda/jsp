package ch01.ex03.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch01/ex03/home/add")
public class DoGetPost extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			genResponse(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
			genResponse(request,response);
	}
	public void genResponse(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			String method =request.getMethod();
			
			int num1 = 1;
			int num2 = 2;
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<h2>"+method+"</h2>");
			out.printf("%d+%d=%d", num1,num2,num1+num2);
}
}
