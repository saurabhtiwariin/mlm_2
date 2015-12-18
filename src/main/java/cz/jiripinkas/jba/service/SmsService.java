package cz.jiripinkas.jba.service;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.SecurityQuestion;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.SecurityQuestionRepository;
import cz.jiripinkas.jba.repository.UserRepository;

@Service
@Transactional
public class SmsService {

	@Autowired
	private SecurityQuestionRepository securityQuestionRepository;

	@Autowired
	private UserRepository userRepository;

	
	public List<SecurityQuestion> findAll() {
		// TODO Auto-generated method stub
		List<SecurityQuestion> securityQuestion = securityQuestionRepository.findAll();
		return securityQuestion;
	}

	public SecurityQuestion findOne(String name) {
		// TODO Auto-generated method stub
		User user=userRepository.findByName(name);
		
		
		return user.getSecurityQuestion();
	}
	
	

	public static void main(String[] args) {
        try {
                String number = "919044228308";
                String message = "I luv very much my okie..";
                String username = "919087099298";
                String password = "160F";

                String requestUrl  = "http://www.smszone.in/sendsms.asp?page=SendSmsBulk&" +
                					 "username=" + URLEncoder.encode(username, "UTF-8") +
                					 "&password=" + URLEncoder.encode(password, "UTF-8") +
                					 "&number=" + URLEncoder.encode(number, "UTF-8") +
                					 "&message=" + URLEncoder.encode(message, "UTF-8");



                URL url = new URL(requestUrl);
                HttpURLConnection uc = (HttpURLConnection)url.openConnection();

                System.out.println(uc.getResponseMessage());

                uc.disconnect();

        } catch(Exception ex) {
                System.out.println(ex.getMessage());

        }
        
	}


}
