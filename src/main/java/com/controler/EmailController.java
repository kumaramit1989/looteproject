package com.controler;
import org.springframework.mail.SimpleMailMessage; 
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;

import javax.print.attribute.standard.MediaSize.NA;
import javax.servlet.http.HttpServletRequest;  
@Controller
public class EmailController
{
	@Autowired 
	private JavaMailSender mailSender; 
	 
	     @RequestMapping(value="/sendemail", method = RequestMethod.POST) 
	     public String doSendEmail(HttpServletRequest request) 
	      { 
	    	 System.out.println("Done Danna Dan"); 
	         // takes input from e-mail form 
	    	  String fname=request.getParameter("name"); 
	         String recipientAddress = request.getParameter("email"); 
	         String contact=request.getParameter("mobile"); 
	         String subject =request.getParameter("subject"); 
	         String message = request.getParameter("Message"); 
	         String finalmessage="::Hi admin:: \n"+fname+"has send:: "+"\n"+message+"!!! "+"\nCheck this out @ lootle.com!!! you can "+fname+" contact customer on "+contact; 
	           
	    
	         System.out.println(recipientAddress+"  "+fname+" "+subject+"  "+message+" "); 
	        
	         
	         System.out.println("To: " + recipientAddress); 
	         System.out.println("Subject: " + subject); 
	         System.out.println("Message: " + message); 
	           
	         // creates a simple e-mail object 
	         SimpleMailMessage email = new SimpleMailMessage(); 
	         email.setTo(recipientAddress); 
	         email.setSubject(subject); 
	         email.setText(finalmessage); 
	           
	         // sends the e-mail 
	         mailSender.send(email); 
	          System.out.println("Success"); 
	         // forwards to the view named "Result" 
	         return "result"; 
	     } 
}
