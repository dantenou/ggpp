package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.*;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/Test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		String a=request.getParameter("line");
		System.out.println("ajax:"+a);
		Gson g=new Gson();
		ArrayList <String> as=new ArrayList<String>();
		as.add("a");
		as.add("b");
		as.add("c");
		as.add("d");
		as.add("e");
		as.add("f");
		as.add("g");
		as.add(a);
		String re=g.toJson(as);
		//向前台页面写入字符串
		try {
			response.getWriter().write(re);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//解除汉字乱码问题
//		String type1=new String(request.getParameter("type").getBytes("ISO-8859-1"), "UTF-8");
//		int value1=Integer.parseInt(request.getParameter("value"));
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		System.out.println(type1+": "+value1);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		String line=request.getParameter("line");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		System.out.println(line+name+sex);
		try {
			response.getWriter().write(line+" "+name+" "+sex);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
