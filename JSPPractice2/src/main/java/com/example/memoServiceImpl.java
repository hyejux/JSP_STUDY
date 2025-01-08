package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class memoServiceImpl implements memoService {

	@Override
	public void memoRegist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		String mm = request.getParameter("memo");
		int pw = Integer.valueOf(request.getParameter("pw"));
		
		memoDTO dto = new memoDTO(mm,pw);
		
		memoDAO dao = memoDAO.getInstance();
		dao.insertMEMO(dto);
		
		request.getRequestDispatcher("JSP_JDBC_ex1.jsp").forward(request,response);
	}

}
