<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div>
Powered By <a href="http://bbybi.com/">BBY Business Innovation</a> <c:if test="${not empty fn:trim(user)}"> | <a href="#">Aviso de Privacidad</a></c:if>
 </div>