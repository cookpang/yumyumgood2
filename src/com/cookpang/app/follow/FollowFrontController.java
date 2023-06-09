package com.cookpang.app.follow;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cookpang.app.main.MainAjaxOkController;

public class FollowFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target);

		switch(target) {
		case "/follow/followerAjax.fo" :
			new FollowerAjaxController().execute(req, resp);
			break;
		case "/follow/followingAjax.fo" :
			new FollowingAjaxController().execute(req, resp);
			break;
		}
	}

}
