package com.junefw.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.junefw.infra.common.constants.Constants;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("sessSeq") != null) {
			// by pass
		} else {
			response.sendRedirect(Constants.URL_LOGINFORM);
			return false;
		}
		return super.preHandle(request, response, handler);
	}
}	

