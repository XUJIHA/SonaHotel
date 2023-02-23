package tw.hotel.coupon.model;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailSender {

	@Autowired
	private JavaMailSender mailSender;

	public void sendEmails(List<String> to, String subject, String text) throws MessagingException {
		for (String recipient : to) {
			// SimpleMailMessage message = new SimpleMailMessage();
			// message.setTo(recipient); // 設置收件人地址
			// message.setSubject(subject); // 設置主題
			// message.setText(text); // 設置郵件內容
			// mailSender.send(message);

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);

			helper.setTo(recipient);
			helper.setSubject(subject);
			helper.setText(text, true);

			mailSender.send(message);

		}
	}

	public void sendSimpleEmails(List<String> to, String subject, String text) {
		for (String recipient : to) {
			SimpleMailMessage message = new SimpleMailMessage();
			message.setTo(recipient); // 設置收件人地址
			message.setSubject(subject); // 設置主題
			message.setText(text); // 設置郵件內容

			mailSender.send(message);
		}
	}

	public void sendEmailByHtmlForRegist(String recipient, String subject, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject(subject);
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/coupon/welcomeBanner.jpg");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("welcomeBanner", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public void sendEmailByHtmlForBirthday(String recipient, String subject, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject(subject);
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/coupon/birthdayBanner.jpg");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("birthdayBanner", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public void sendEmailByHtml(String recipient, String subject, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject(subject);
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/coupon/couponImg01.jpg");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("couponImg01", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public void sendEmailByHtmlWithoutBanner(String recipient, String subject, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject(subject);
			helper.setText(text, true);
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public void sendEmailForRegist(String recipient, String subject, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject(subject);
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/login/registerhotel.jpg");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("registerhotel", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public void sendEmailForgotPassword(String recipient, String subject, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject("Sona Hotel感謝您的訂購！");
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/login/forgot-password.webp");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("forgotpassword", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
	public void sendRoomOrderEmail(String recipient, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject("Sona Hotel感謝您的訂購！");
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/roomorder/taipei101.jpeg");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("taipei101", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	public void sendGiftOrderEmail(String recipient, String text) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(recipient);
			helper.setSubject("Sona Hotel伴手禮訂購成功！");
			helper.setText(text, true);
			ClassPathResource image = new ClassPathResource("static/img/gift/banner1.jpg");
			ClassPathResource image2 = new ClassPathResource("static/img/coupon/couponImg02.png");
			helper.addInline("banner1", image);
			helper.addInline("couponImg02", image2);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
