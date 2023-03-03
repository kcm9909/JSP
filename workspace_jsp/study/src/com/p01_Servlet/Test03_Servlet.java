package com.p01_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test03_Servlet extends HttpServlet{

	
@Override
public void init() throws ServletException {
	// TODO Auto-generated method stub
	// super.init();
	System.out.println("Test02_Servlet 서블릿 init 메소드 호출 되었습니다.");
}



	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
//			super.doGet(req, resp);
		System.out.println("Test03_Servlet 서블릿 doGet 메소드 호출되었습니다.");
		
		resp.setContentType("text/html; charset = utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>("+ new java.util.Date()+ "doGet 메소드가 응답함</h1>");
		out.print("</body>");
		out.print("</html>");
		}
	
	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
//			super.doPost(req, resp);
		
		System.out.println("Test03_Servlet 서블릿 doPost 메소드 호출되었습니다.");
		resp.setContentType("text/html; charset = utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>("+ new java.util.Date()+ "doPost 메소드가 응답함</h1>");
		out.print("</body>");
		out.print("</html>");
		}

//@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		super.service(req, resp);
//		System.out.println("Test02_Servlet 서블릿 service 메소드 호출 되었습니다.");
//	    
//		if(req.getMethod().equals("GET")) {
//			fn_get(req,resp);
//		}
//		if(req.getMethod().equals("POST")) {
//			fn_post(req,resp);
//		}
//	}
//
//	private void fn_get(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//		System.out.println("Test02_Servlet 서블릿 fn_get 메소드 호출되었습니다.");
//		
//		resp.setContentType("text/html; charset = utf-8");
//		PrintWriter out = resp.getWriter();
//		out.print("<html>");
//		out.print("<body>");
//		out.print("<h1>("+ new java.util.Date()+ "fn_get 메소드가 응답함</h1>");
//		out.print("</body>");
//		out.print("</html>");
//	}
//
//	private void fn_post(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//		System.out.println("Test02_Servlet 서블릿 fn_post 메소드 호출되었습니다.");
//		resp.setContentType("text/html; charset = utf-8");
//		PrintWriter out = resp.getWriter();
//		out.print("<html>");
//		out.print("<body>");
//		out.print("<h1>("+ new java.util.Date()+ "fn_post 메소드가 응답함</h1>");
//		out.print("</body>");
//		out.print("</html>");
//	}

@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("Test02_Servlet 서블릿 destroy 메소드 호출 되었습니다.");
	}

}
