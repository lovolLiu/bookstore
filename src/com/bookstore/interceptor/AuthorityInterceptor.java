package com.bookstore.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		///DEBUG　MODE CODE//////////////////////////////
		session.put("userID", 1);
		////////////////////////////////////////////////
		Integer user = (Integer)session.get("userID");
		if(user != null){
			return invocation.invoke();
		}
		return "login";
	}
}
