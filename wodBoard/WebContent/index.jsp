<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
	// 모듈별 경로 설정
	String s = null;
	
	// service 파라미터가 비어있다면 main 모듈을 기본 참조
	if ( request.getParameter("s") == null ) {
		s = "main";
	} else{
		s = request.getParameter("s");
	}
	
	// s 파라미터별 관련 모듈 호출
	switch(s) {
		case "member": s = "member"; break;
		case "record": s = "record"; break;
	}
	
	// 모듈 경로 설정
	// 모듈별 기본 index.jsp 파일을 경로로 바라본다.
	String module_path = "module/" + s + "/index.jsp";
%>
<jsp:include page="<%=module_path%>" />