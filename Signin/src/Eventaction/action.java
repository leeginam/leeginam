package Eventaction;

import javax.servlet.http.*;

import Dto.ActionForward;

public interface action {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}
