package com.p01_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01_Servlet extends HttpServlet {
   	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		// super.init();
		System.out.println("Test01_Servelt 서블릿 init 메소드 호출 되어짐");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.service(req, resp);
		System.out.println("Test01_Servelt 서블릿 service 메소드 호출 되어짐");
		
		resp.setContentType("text/html;  charset=utf-8");
//		resp.setContentType("text/html;  charset=ISO-8859-1");
//		resp.setContentType("text/plain;  charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title> hello world</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<hr>");
		out.print("<h4><span style='color:red'>안녕하세요</span></h4>");
		out.print("<hr>");
		out.print("<h4><span style='color:orange'>"+ new java.util.Date() +" 부터 jsp, spring 수업을 함께합니다.</span></h4>");
		out.print("<hr>");
		out.print("<h4><span style='color:blue'>"
				+ "열심히해서 멋진 웹사이트 만들고 좋은곳에 취업 할수 있도록 합시다</span></h4>");
		out.print("<hr>");
		out.print("<h4><span style='color:green'>화이팅!</span></h4>");
		out.print("<hr>");
		
		out.print("</body>");
		out.print("</html>");
		
		
	}
	
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		//		super.destroy();
		System.out.println("Test01_Servlet 서블릿 destory 메소드 호출 되어짐");
	}
	
	
	
	
	
	
}
