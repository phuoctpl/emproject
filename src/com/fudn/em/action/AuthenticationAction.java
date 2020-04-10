package com.fudn.em.action;

import java.net.UnknownHostException;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.common.Constant;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bo.AuthenticationBO;

@SuppressWarnings("serial")
public class AuthenticationAction extends BaseAction implements SessionAware {
	private String email;
	private String passwd;
	private String messages;
	private AuthenticationBO authenticationBO;
	private String mode;
	private String facebookID;
	private String username;

	public String login() {
		
		httpServletRequest = ServletActionContext.getRequest();
		return Constant.HTTPSERVLET_METHOD_POST
				.equalsIgnoreCase(httpServletRequest.getMethod()) ? postlogin()
				: getlogin();
	}

	public String getlogin() {
		return INPUT;
	}
	
	@SuppressWarnings("finally")
	public String postlogin() {
		if (isLogin()) {
			int roleNumber = (Integer) sessionMap.get("roleNumber");
			switch (roleNumber) {
			case Constant.EM_ROLE_SUPER_ADMIN:
				return "superAdminRedirect";
			case Constant.EM_ROLE_ADMIN:
				return "adminRedirect";
			case Constant.EM_ROLE_MEMBER:
				return "userRedirect";
			}
		}
		
		String email = getEmail();
		String passwd = getPasswd();
		Member member = null;
		authenticationBO = new AuthenticationBO();
		int memberRole = 0;
		if (CommonsUtils.isBlankOrNull(email) || CommonsUtils.isBlankOrNull(passwd)) {
			setMessages("Please enter email and password!");
			return INPUT;
		}
		try {
			if (!authenticationBO.isMember(email, passwd)) {
				setMessages("Wrong email or password!");
				return INPUT;
			}
			
			member = authenticationBO.getMember(email);
			if (!CommonsUtils.isNull(member)) {
				
				sessionMap.put("email", member.getEmail());
				sessionMap.put("userId", member.get_id());
				sessionMap.put("username", member.getName());
				sessionMap.put("avatarSrc", member.getAvatar());
				sessionMap.put("memberRole",
						CommonsUtils.memberRole(member.getMemberRole()));
				sessionMap.put("roleNumber", member.getMemberRole());
				
				memberRole = member.getMemberRole();
				switch (memberRole) {
					case Constant.EM_ROLE_SUPER_ADMIN:
						return "superAdminRedirect";
					case Constant.EM_ROLE_ADMIN:
						return "adminRedirect";
					case Constant.EM_ROLE_MEMBER:
						return "userRedirect";
				}
			}
			
		} catch (UnknownHostException e) {
			setMessages("Error when connect to database!");
			return INPUT;
		} catch (DAOException e) {
			setMessages("Error when connect to database!");
			return INPUT;
		}
		return INPUT;
	}
	
	public String logOut() {
		String mode = getMode();
		if (isLogin()) {
			sessionMap.remove("email");
			sessionMap.remove("userId");
			sessionMap.remove("username");
			sessionMap.remove("memberRole");
		}
		setMessages("Logout from system successfully!");
		return SUCCESS;
	}
	
	public String home() {
		if(isLogin()) {
			String mode = getMode();
			String username = getUsername();
			String avatarSrc = "http://graph.facebook.com/" + getFacebookID() + "/picture";
			if("fblogin".equals(mode)){
				sessionMap.put("memberRole", CommonsUtils.memberRole(3));
				sessionMap.put("username", username);
				sessionMap.put("avatarSrc", avatarSrc);
			}
			return SUCCESS;			
		}
		return LOGIN;
	}

	public String admin() {
		return SUCCESS;
	}

	public String superAdmin() {
		return SUCCESS;
	}
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getMessages() {
		return messages;
	}

	public void setMessages(String messages) {
		this.messages = messages;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getFacebookID() {
		return facebookID;
	}

	public void setFacebookID(String facebookID) {
		this.facebookID = facebookID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
