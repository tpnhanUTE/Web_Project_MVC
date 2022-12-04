package com.wepr.booking.utils;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class EmailUtility {
    public static String randomOtp(){
        Random random = new Random();
        int number = random.nextInt(999999);
        return String.format("%06d", number);
    }
    // create a new session with an authenticator
    public static void sendEmail(String host, String port,
                                 final String email, final String password, final String toAddress,
                                 String subject, String message) throws AddressException, MessagingException {

        // set SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.ssl.trust", "*");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        };
        Session session = Session.getInstance(properties, auth);

        // create a new e-mail message
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(email));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(message);

        try {
            Transport.send(msg);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
