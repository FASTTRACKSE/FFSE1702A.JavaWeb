package controller.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/MyFilter")
public class MyFilter implements Filter {

    public MyFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String path = req.getRequestURI().substring(req.getContextPath().length());

		if (path.endsWith(".jsp")) {
			request.getRequestDispatcher("/").forward(request, response);
		} else if (path.startsWith("/assets")) {
			chain.doFilter(request, response); // Goes to default servlet.
		} else {
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
