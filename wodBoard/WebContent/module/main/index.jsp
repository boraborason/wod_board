<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%
	String p = null;

	if ( request.getParameter("p") == null ) {
		p = "main";
	} else {
		p = request.getParameter("p");
	}

	String page_path = p + ".jsp";
%>
<jsp:include page="<%=page_path%>" />
