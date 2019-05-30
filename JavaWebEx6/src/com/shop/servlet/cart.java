package com.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.bean.BookBean;

public class cart extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public cart() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
		String bookid = request.getParameter("bookid").toString();
		List<BookBean> list =(List<BookBean>)session.getAttribute("list");
		if(list==null){list=new ArrayList<BookBean>();}
		array(list, bookid);
		int total = total(list);
		session.setAttribute("list", list);
		session.setAttribute("total", total);
		request.getRequestDispatcher("/success.jsp").forward(request, response);
	}

	 public boolean array(List<BookBean> list,String bookid){
		 for(int i=0;i<list.size();i++){
			 if(bookid.equals(list.get(i).getBookid())){
				 list.get(i).setTotal(list.get(i).getTotal()+1);
				 return true;
			 }
		 }
		 BookBean bookBean = new BookBean();
		 bookBean.setBookid(bookid);
		 bookBean.setTotal(1);
		 list.add(bookBean);
		 return false;
	 }
	 
	 public int total(List<BookBean> list){
		 int j=0;
		 for(int i=0;i<list.size();i++){
			 j+=list.get(i).getTotal();
		 }
		 return j;
	 }
	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
