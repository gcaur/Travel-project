<%@page import="java.sql.*;" %>
<%@page import="java.util.Properties;"%>
<%@page import="javax.mail.Session;"%>
<%@page import="javax.mail.Message;"%>
<%@page import="javax.mail.Transport;"%>
<%@page import="javax.mail.Transport;"%>
<%@page import="javax.mail.Authenticator;"%>
<%@page import="javax.mail.MessagingException;"%>
<%@page import="javax.mail.internet.InternetAddress;"%>
<%@page import="javax.mail.PasswordAuthentication;"%>
<%@page import="javax.mail.internet.MimeMessage;"%>
<%@page import="java.sql.*;" %>
<jsp:useBean id="cn" scope="application" class="mm.Conn1" />

<% 
   
    String uemail=session.getAttribute("email").toString();
    
   %>
 
  
     <%  
           String to=uemail;
           String sub="Confirmation E-mail for Booking of Tour";
           String msg="Your Tour is Successfully Booked.";
           final String user="pundirs0019@gmail.com";
           final String pass="clashofclans";
    
  Properties props = new Properties();
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");	
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session1 = Session.getInstance(props,new Authenticator() 
        {
            
            protected PasswordAuthentication getPasswordAuthentication() 
            {
                return new PasswordAuthentication(user, pass);
            }
        });

        try 
        {
            Message message = new MimeMessage(session1);
            
            message.setFrom(new InternetAddress(user));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(sub);
            message.setText(msg);
            
            Transport.send(message);
            
             response.sendRedirect("booking_success.jsp");
            
        } catch (MessagingException e) 
        {
            
            
            response.sendRedirect("booking_success.jsp");
        }  
   
              
%>