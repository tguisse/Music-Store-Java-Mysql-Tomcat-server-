
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie ck[] = request.getCookies();
    String emailFromSession = session.getAttribute("userEmail").toString();
    int indexOfatTheRate = emailFromSession.indexOf('@');
    
    for(int i=0;i<ck.length;i++)
    {
        if(ck[i].getName().equals("CurrentCity"+emailFromSession.substring(0,indexOfatTheRate)))
        {
            ck[i].setMaxAge(0);
            response.addCookie(ck[i]);
            
        }
    }
    response.sendRedirect("dashboard.jsp");
    
    
%>
