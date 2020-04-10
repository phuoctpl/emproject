package com.fudn.em.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.common.Constant;
import com.fudn.em.common.EmailUtility;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bo.AuthenticationBO;
import com.fudn.em.model.bo.MemberBO;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.types.User;

/**
 * Servlet implementation class CallBackServlet
 */
public class CallBackServlet extends HttpServlet {
	   private static final long serialVersionUID = 1L;
	    
	    private static String getAccessTokenFromWebContent (String webContent) {
	    	String accessToken = null;
	    	int s = webContent.indexOf("access_token=") + ("access_token=".length());
	        int e = webContent.indexOf("&");
	        accessToken = webContent.substring(s, e);
	        return accessToken;
	    }
	    
	    
	    private static String getWebContentFromURL(String webnames) {
	    	try {
	            URL url = new URL(webnames);
	            URLConnection urlc = url.openConnection();
	            //BufferedInputStream buffer = new BufferedInputStream(urlc.getInputStream());
	            BufferedReader buffer = new BufferedReader(new InputStreamReader(urlc.getInputStream(), "UTF8"));
	            StringBuffer builder = new StringBuffer();
	            int byteRead;
	            while ((byteRead = buffer.read()) != -1)
	                builder.append((char) byteRead);
	            buffer.close();
	            String text=builder.toString();
	            return text;
	        } 
	        catch (IOException e) {
	            e.printStackTrace();
	        }
	    	return null;
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	String code = null;
	        String facebookAppId = getServletContext().getInitParameter("facebookAppId");
	        String facebookAppSecret = getServletContext().getInitParameter("facebookAppSecret");
	        String redirectURL = null;
	        String accessURL = null;
	    	String accessToken = null;
	    	String webContent = null;
	        
	        try {
	            StringBuffer redirectURLbuffer = request.getRequestURL();
	            int index = redirectURLbuffer.lastIndexOf("/");
	            redirectURLbuffer.replace(index, redirectURLbuffer.length(), "").append("/callback");
	            redirectURL = URLEncoder.encode(redirectURLbuffer.toString(), "UTF-8");
	            
	        	code = request.getParameter("code");
	        	if(null!=code) {
	        		System.out.println("Code: " + code);
	        		accessURL = "https://graph.facebook.com/oauth/access_token?client_id=" + facebookAppId + 
	        				"&redirect_uri=" + redirectURL + "&client_secret=" + facebookAppSecret + "&code=" + code;
	        		System.out.println("accessURL: " + accessURL);
	        		webContent = getWebContentFromURL(accessURL);
	        		System.out.println("accessURL: " + webContent);
	        		accessToken = getAccessTokenFromWebContent(webContent);
	        	} else {
	        		response.sendRedirect(request.getContextPath() + "/error.html");
	        		return;
	        	}
	        	
	            if(null!=accessToken) {
	            	System.out.println("accessToken: " + accessToken);
	            	FacebookClient facebookClient = new DefaultFacebookClient(accessToken);
	            	User user = facebookClient.fetchObject("me", User.class);
	            	
/*	            	FBUser fbUser = new FBUser(user.getId(),user.getName(),user.getLastName(),user.getFirstName(),
	            			user.getGender(),user.getEmail(),user.getBirthday(),user.getWebsite(),user.getHometown().getName(),
	            			user.getLocation().getName(),user.getBio(),user.getAbout(),user.getLink(),user.getLocale(),
	            			user.getRelationshipStatus(),user.getInterestedIn().toString());*/
	            	request.getSession().setAttribute("fbUser", user);
	            	request.getSession().setAttribute("email", user.getEmail());
	            	request.getSession().setAttribute("userId", user.getId());
	            	request.getSession().setAttribute("username", user.getName());
	            	request.getSession().setAttribute("memberRole", Constant.EM_ROLE_MEMBER_NAME);
	            	request.getSession().setAttribute("roleNumber", Constant.EM_ROLE_MEMBER);
	            	System.out.println("User object: " + user.toString());
	            	
	            	AuthenticationBO authenticationBO = new AuthenticationBO();
					if (!authenticationBO.checkFbId(user.getId())) {
						Member member = new Member();
						member.setFbId(user.getId());
						member.setPrestigePoint(0);
						member.setAddress(user.getHometownName());
						member.setBirthDate(user.getBirthdayAsDate());
						member.setEmail(user.getEmail());
						member.setEnterDate(new Date());
						member.setGender(user.getGender());
						member.setName(user.getName());
						member.setCountry(user.getHometownName());
						member.setMemberRole(Constant.EM_ROLE_MEMBER);
						member.setActive(1);
//						member.setAvatar("https://graph.facebook.com/" + user.getId() + "/picture");
						member.setCity(user.getHometownName());
						member.setAvatar("null.png");
						String password = RandomStringUtils.randomAlphanumeric(8);
						member.setPasswd(CommonsUtils.encryptPassword(password));
						MemberBO memberBO = new MemberBO();
						memberBO.insert(member);
						
						String host = "smtp.gmail.com";
						String port= "587";
						String userName = "loitatnguyen@gmail.com";
						String passwordEmail = "heloi1992";
						String recipient = user.getEmail();
						String subject = "[Emusic] Your password from creating by facebook account";
						StringBuilder body = new StringBuilder();
						body.append("Your password is: ").append(password).append("<br/>");
						body.append("You can use this password to login Emotional Music Network with email ").append(recipient).append("<br/>");
						body.append("Thank for using Emotional Music Network").append("<br/>");
						String message = body.toString();
						
						EmailUtility emailUtility = new EmailUtility();
						
						emailUtility.sendEmail(host, port, userName, passwordEmail, recipient, subject, message);

					
					}            	
	            	response.sendRedirect(request.getContextPath() + "/home.action");
	            }
	  
			if (null == accessToken) {
				response.sendRedirect(request.getContextPath()
						+ "/login.action");
			}
	        } catch (Exception e) {
	            response.sendRedirect(request.getContextPath() + "/login.action");
	            throw new ServletException(e);
	        }
	        
	    }}
