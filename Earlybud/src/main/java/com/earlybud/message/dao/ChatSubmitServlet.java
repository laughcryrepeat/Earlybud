package com.earlybud.message.dao;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChatSubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html);charset=UTF-8");
		String sender = request.getParameter("sender");
		String receiver = request.getParameter("receiver");
		String content = request.getParameter("content");
		if(sender == null || sender.equals("") || receiver==null||receiver.equals("")
				|| content == null || content.equals("")) {
			response.getWriter().write("0");
		}else {
			sender = URLDecoder.decode(sender, "UTF-8");
			receiver= URLDecoder.decode(receiver, "UTF-8");
			content = URLDecoder.decode(content, "UTF-8");
			response.getWriter().write(new MessageListDAO.submit(sender, receiver, content)+"");
		}
	}

}
