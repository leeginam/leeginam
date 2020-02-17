package mybatcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface controller {
	String showData(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
