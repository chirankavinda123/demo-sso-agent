<%-- 
    Document   : home
    Created on : Nov 7, 2017, 8:52:49 AM
    Author     : chiran
--%>
<%
    String logoutUrl = request.getSession().getAttribute("logoutUrl").toString();
    String principalName = request.getUserPrincipal().getName();

    //userInfo = currentSessionBean.getOIDC().getUserDetails().getString("sub");       
    //userInfo = currentSessionBean.getSAML2SSO().getSubjectId();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1  style="text-align:center;"><img style="height:50px;width:50px;" src="images/greenTick.png">
            You have successfully logged in!</h1>
        <p>principal is <%=principalName%></p>
        <h3>Click <a href="<%=logoutUrl%>"> here</a> to logout</h3>
    </body>
</html>
