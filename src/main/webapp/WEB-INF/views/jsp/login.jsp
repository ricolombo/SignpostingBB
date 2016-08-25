<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div id="login">
	<div>
		<a href="?lang=en">English</a> | <a href="?lang=es">Espa&ntilde;ol</a>
	</div>
	<div>
		<form action="${pageContext.request.contextPath}/login" method="post">
			<table frame="box" cellpadding="0" cellspacing="6">
				<tr>
					<td><spring:message code="login.username" text="default text" />:</td>
					<td><input type='text' name='username' /></td>
				</tr>
				<tr>
					<td><spring:message code="login.password" text="default text" />:</td>
					<td><input type='password' name='password'></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="Submit"></td>
				</tr>
				<c:if test="${'fail' eq param.auth}">
					<tr>
						<td style="color: red;">Login Failed!!!<br /> Reason :
							${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
						</td>
					</tr>
				</c:if>
			</table>
		</form>
	</div>
</div>