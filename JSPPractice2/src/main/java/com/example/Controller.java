package com.example;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("*.memo")
public class Controller extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
	 String uri = request.getRequestURI();
	 String path = request.getContextPath();
	 String command = uri.substring(path.length());
	 System.out.println(command);
	 
	 if (command.equals("/memoInsert.memo")) {
		 System.out.println("컨트롤러");
         memoService service = new memoServiceImpl();  // Service 객체 생성
         service.memoRegist(request, response);  // 비즈니스 로직을 처리하는 메소드 호출
     }
     
 }
}
