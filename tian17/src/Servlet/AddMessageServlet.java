package Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import JavaBean.MessageBean;


@WebServlet("/AddMessageServlet")
public class AddMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddMessageServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         String author=new 
        		 String(request.getParameter("author").getBytes("ISO-8859-1"),"utf-8");
         String content=new 
        		 String(request.getParameter("content").getBytes("ISO-8859-1"),"utf-8");
         String tody=new 
        		 String(request.getParameter("tody").getBytes("ISO-8859-1"),"utf-8");
         String title=new 
        		 String(request.getParameter("title").getBytes("ISO-8859-1"),"utf-8");
		
		//获取当前时间并格式化时间为指定格式
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String today=format.format(new Date());
		MessageBean mm=new MessageBean();
		mm.setAuthor(author);
		mm.setContent(content);
		mm.setTime(tody);
		mm.setTitle(title);
		
		HttpSession session =request.getSession();
		ServletContext scx=session.getServletContext();
		ArrayList wordlist =(ArrayList) scx.getAttribute("wordlist");
		if(wordlist==null)
			wordlist=new ArrayList();
		wordlist.add(mm);
		scx.setAttribute("wordlist", wordlist);
		response.sendRedirect("showMessage.jsp");
		
		
	}

}
