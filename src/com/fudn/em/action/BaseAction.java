package com.fudn.em.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.fudn.em.common.Constant;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseAction extends ActionSupport {
	protected final Logger LOGGER = LogManager.getLogger(getClass());
	protected HttpServletRequest httpServletRequest;
	protected Map<String, Object> sessionMap = ActionContext.getContext().getSession();
	protected static final String LOGIN = "login";
	protected static final String HTTP404ERROR = "404error";
	protected static final String ERROR = "error";
	protected static final String WELCOME = "welcome";
	private String messages;
	
	public void validate() {
		httpServletRequest = ServletActionContext.getRequest();
		if (Constant.HTTPSERVLET_METHOD_GET.equalsIgnoreCase(httpServletRequest
				.getMethod())) {
			setFieldErrors(null);
			setActionErrors(null);
			setActionMessages(null);
		}
	}
	
	protected boolean isLogin(){
		return sessionMap.containsKey("userId");
	}

	public String getMessages() {
		return messages;
	}

	public void setMessages(String messages) {
		this.messages = messages;
	}
}
