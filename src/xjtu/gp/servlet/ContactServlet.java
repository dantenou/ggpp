package xjtu.gp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xjtu.gp.dao.UserAdviceDao;
import xjtu.gp.service.UserAdviceService;
import xjtu.gp.vo.UserAdvice;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactToUs")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String subject=request.getParameter("subject");
		String msg=request.getParameter("message");
		UserAdvice ua=new UserAdvice(userName,email,phone,subject,msg);
		UserAdviceService.addUserAdvice(ua);
		System.out.println("已保存用户建议："+ua);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
