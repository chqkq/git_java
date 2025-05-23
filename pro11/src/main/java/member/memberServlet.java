package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/memberList")
public class memberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.listMembers();
		request.setAttribute("list", list);
		
		// memberList.jsp의 주소를 /memberList로 나오게끔 해줌
		// forwarding하는 부분
		request.getRequestDispatcher("/WEB-INF/view/memberList.jsp").forward(request, response);
	}
	
}
