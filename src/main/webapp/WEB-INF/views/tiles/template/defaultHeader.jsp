<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div>
	<div id="logo">
		<a href='<%response.sendRedirect("/users/sign_in");%>'><img
			src="${pageContext.request.contextPath}/static/images/logo.png"></a>
	</div>
	<c:if test="${not empty fn:trim(user)}">
		<div id="signout">
			<a href="${pageContext.request.contextPath}/logout">Sign out</a>
		</div>
		<div id="user">${user}</div>
	</c:if>
</div>