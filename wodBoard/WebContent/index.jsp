<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%
	/**
	 * m = module
	 */

	// 모듈별 고유값 설정
	String m = null;
	String pageName = null;

	// m 파라미터가 비어있다면 main 모듈을 기본 참조
	if ( request.getParameter("m") == null ) {
		m = "main";
	} else{
		m = request.getParameter("s");
	}

	// 모듈별 기본 값 설정
	switch(m) {
		case "member": m = "member"; pageName = "member"; break;
		case "record": m = "record"; pageName = "record"; break;

		default: m = "main"; pageName = "main"; break;
	}

	// 모듈 경로 설정
	// 모듈별 기본 index.jsp 파일을 경로로 바라본다.
	String module_path = "/module/" + m + "/index.jsp";

	// Sematic 파일 경로
	String header_path = "module/semantic/header.jsp";
	String footer_path = "module/semantic/footer.jsp";
%>
<jsp:include page="<%=module_path%>" />
