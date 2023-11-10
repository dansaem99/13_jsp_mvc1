<%@page import="step01_boardEx.BoardDAO"%>
<%@page import="step01_boardEx.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bAuthenticationPro</title>
</head>
<body>

	<%
		/*
			주는건 받는다. (id, password, menu)
			
			DTO로 만든다
			DAO로 보내서 select를 해보고 결과를 받는다. (boolean으로 만든다.)
			
			if (인증이 되면) {
				if (업데이트면) {
					업데이트화면으로 이동
				}
				else if (삭제면) {
					삭제화면으로 이동
				}
			}
			else {
				다시 뒤로가기
			}
			
		*/
		
		
		request.setCharacterEncoding("utf-8");
		
		long boardId    = Long.parseLong(request.getParameter("boardId"));
		String password = request.getParameter("password");
		String menu     = request.getParameter("menu");
		
		// Data Transfer Object DTO
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setBoardId(boardId);
		boardDTO.setPassword(password);
		
		// 재사용할일이 없기 때문에 46번처럼 한다.
		//if (BoardDAO.getInstance().checkAuthorizedUser(boardDTO)) {}
		
		// 우리는 처음이니 이렇게 변수에 넣어서 사용해봤다.
		boolean isAuthorizeUser = BoardDAO.getInstance().checkAuthorizedUser(boardDTO);
		
			//isAuthorizeUser == true / == true 는 생략 
		if (isAuthorizeUser) {
			
			if (menu.equals("update")) {
				// 업데이트 화면으로 이동
	%>
				<script type="text/javascript">
					location.href = "bUpdate.jsp?boardId=" + <%=boardId %>;
				</script>
	<%
				
			}		// "menu= delete" 는 중간에 뛰어쓰기쓰면 에러난다!
			else if (menu.equals("delete")) {
				// 삭제 화면으로 이동
	%>
				<script type="text/javascript">
					location.href = "bDelete.jsp?boardId=" + <%=boardId %>;
				</script>						
	<%			
			}
			
		}
		else {
			// 비밀번호가 틀릴경우
	%>
			<script type="text/javascript">
				alert("잘못된 패스워드 입니다.");
				history.go(-1); 	// 한 페이지 뒤로가기
				//history.back(); 	// 한 페이지 뒤로가기
				//history.go(-3); 	// 세 페이지 뒤로가기
			</script>
	<%
		}
	
	%>

</body>
</html>