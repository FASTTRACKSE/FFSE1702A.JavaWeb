package fasttrackse.ffse1702a.fbms.quanlytailieu.entity;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class taglib extends SimpleTagSupport {

	private String uri;
	private int offset;
	private int page;
	private int count;
	private int steps = 10;
	private String previous = "Previous";
	private String next = "Next";

	private Writer getWriter() {
		JspWriter out = getJspContext().getOut();
		return out;
	}

	@Override
	public void doTag() throws JspException {
		Writer out = getWriter();

		try {
			out.write("<nav>");
			out.write("<ul class=\"pagination justify-content-center\">");

			if (offset < steps)
				out.write(constructLink(1, previous, "disabled", true));
			else
				out.write(constructLink(1, previous, null, false));

			for (int itr = offset - 2 * steps; itr <= offset + 2 * steps; itr += steps) {
				if (itr >= 0 && itr <= count) {
					if (offset == itr)
						out.write(constructLink(itr / 10 + 1, String.valueOf(itr / 10 + 1), "active", true));
					else
						out.write(constructLink(itr / 10 + 1, String.valueOf(itr / 10 + 1), null, false));
				}
				if (itr > count) {
					break;
				}
			}

			if (offset + steps >= count)
				out.write(constructLink(offset + steps, next, "disabled", true));
			else
				out.write(constructLink((int) Math.ceil(count / 10.0), next, null, false));

			out.write("</ul>");
			out.write("</nav>");
		} catch (java.io.IOException ex) {
			throw new JspException("Error in Paginator tag", ex);
		}
	}

	private String constructLink(int page, String text, String className, boolean disabled) {
		StringBuilder link = new StringBuilder("<li");
		if (className != null) {
			link.append(" class=\"page-item ");
			link.append(className);
			link.append("\"");
		}
		if (disabled)
			link.append(">").append("<a class=\"page-link\" href=\"javascript:void(0);\">" + text + "</a></li>");
		else
			link.append(">")
					.append("<a class=\"page-link\" href=\"" + uri + "?page=" + page + "\">" + text + "</a></li>");
		return link.toString();
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public String getPrevious() {
		return previous;
	}

	public void setPrevious(String previous) {
		this.previous = previous;
	}

	public String getNext() {
		return next;
	}

	public void setNext(String next) {
		this.next = next;
	}

	public int getSteps() {
		return steps;
	}

	public void setSteps(int steps) {
		this.steps = steps;
	}

}