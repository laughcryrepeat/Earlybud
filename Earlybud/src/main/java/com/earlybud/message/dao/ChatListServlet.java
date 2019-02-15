package com.earlybud.message.dao;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.earlybud.vo.MessageListVO;

public class ChatListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html);charset=UTF-8");
		String sender = request.getParameter("sender");
		String receiver = request.getParameter("receiver");
		String listType = request.getParameter("listType");
		if(sender == null || sender.equals("") || receiver==null||receiver.equals("")
				|| listType == null || listType.equals("")) {
			response.getWriter().write("");
		}else if(listType.equals("ten")) response.getWriter().write(getTen(sender, receiver));
		else {
			try {
				response.getWriter().write(getID(sender, receiver, listType));
			}catch(Exception e) {
				response.getWriter().write("");
			}
		}
	}
	
	public String getTen(String sender, String receiver) {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		MessageListDAO messageListDAO = new MeMessageListVO);
		ArrayList<MessageListVO> messageList = messageListDAO.getChatListByRecent(sender, receiver, 10);
		if(messageList.size() == 0) return "";
		for(int i=0; i<messageList.size(); i++) {
			result.append("[{\"value\":\"" + messageList.get(i).getSender() + "\"},");
			result.append("{\"value\":\"" + messageList.get(i).getReceiver() + "\"},");
			result.append("{\"value\":\"" + messageList.get(i).getContent() + "\"},");
			result.append("{\"value\":\"" + messageList.get(i).getSendDate() + "\"}],");
			if(i != messageList.size() -1) result.append(",");
		}
		result.append("], \"last\":\"" + messageList.get(messageList.size() -1).getSender());
		return result.toString();
	}

}
