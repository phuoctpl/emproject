package com.fudn.em.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Utf8EncodingFilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		servletRequest.setCharacterEncoding("UTF-8");
		servletResponse.setContentType("text/html; charset=UTF-8");
		filterChain.doFilter(servletRequest , servletResponse);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		
	}

}
