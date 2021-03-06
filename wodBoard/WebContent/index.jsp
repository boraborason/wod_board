<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%
	// 모듈별 고유값 설정
	String mod = null;

	// m 파라미터가 비어있다면 main 모듈을 기본 참조
	if ( request.getParameter("mod") == null ) {
		mod = "main";
	} else{
		mod = request.getParameter("mod");
	}

	// 모듈별 기본 값 설정
	switch(mod) {
		case "member": mod = "member"; break;
		case "record": mod = "record"; break;

		default: mod = "main"; break;
	}

	// 모듈 경로 설정
	// 모듈별 기본 index.jsp 파일을 경로로 바라본다.
	String module_path = "module/" + mod + "/index.jsp";
%>
<jsp:include page="module/semantic/header.jsp" />
<jsp:include page="<%=module_path%>" />
<jsp:include page="module/semantic/footer.jsp" />
