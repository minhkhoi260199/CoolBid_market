package com.app.main.customTags;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

public class SellerNavTag extends RequestContextAwareTag {

	@Override
	protected int doStartTagInternal() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void doFinally() {
		try {
			JspWriter out = pageContext.getOut();
			String viewPath = "../customTags/sellerNav/index.jsp";
			HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
			
			request.getRequestDispatcher(viewPath);
			pageContext.include(viewPath);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	
}
