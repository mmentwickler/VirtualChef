package Controllers;

import java.io.IOException;
import java.util.Properties;

import javax.ejb.EJB;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.AdminMessages;
import Services.messageService;

/**
 * Servlet implementation class Mail
 */
@WebServlet("/Mail")
public class Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	messageService ms;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Mail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static void send(String to, String sub, String msg, final String from, final String pass) {
		// create an instance of Properties Class

		/*
		 * Specifies the IP address of your default mail server for e.g if you
		 * are using gmail server as an email sever you will pass smtp.gmail.com
		 * as value of mail.smtp host. As shown here in the code. Change
		 * accordingly, if your email id is not a gmail id
		 */
		
		System.out.println(to);
		System.out.println(sub);
		System.out.println(msg);
		System.out.println(from);
		System.out.println(pass);
		
	Properties props =System.getProperties();

	 props.put("mail.smtp.host", "localhost");
	 Session session=Session.getDefaultInstance(props);
	 try {
         // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

         // Set Subject: header field
         message.setSubject(sub);

         // Now set the actual message
         message.setText(msg);

         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
      } catch (MessagingException mex) {
         mex.printStackTrace();
      }
    /* props.put("mail.smtp.starttls.enable", "true");
     props.put("mail.smtp.host", "smtp.gmail.com");
     props.put("mail.smtp.port", "465");
     props.put("mail.smtp.auth", "true");

	
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				 System.out.println("------------------------------60");
				return new PasswordAuthentication(user, pass);

			}
		});

		try {
			Message message = new MimeMessage(session);
			 
			message.setFrom(new InternetAddress(user));
	        InternetAddress[] toAddresses =InternetAddress.parse(to);
	        message.setRecipients(Message.RecipientType.TO, toAddresses);
	        message.setSubject(sub);
	        message.setSentDate(new Date());
	        message.setText(msg);
	        System.out.println("------------------------------79");
		Transport.send(message);

		} catch (Exception e) {
			e.printStackTrace();
			 System.out.println("------------------------------99");

		}*/
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminMessages aM=new AdminMessages();
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		aM.setEmail(email);
		aM.setMessage(message);
		aM.setName(name);
		aM.setSubject(subject);
        aM.setRead(false);
        
        ms.send_msg(aM);
        
        
		
		response.sendRedirect("Contact");
		// System.out.println("------------------------------136");
		doGet(request, response);
	}

}
