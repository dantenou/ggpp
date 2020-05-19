package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import xjtu.gp.dao.LineDao;

/**
 * Servlet implementation class GetStationServlet
 */
@WebServlet("/GetStation")
public class GetStationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetStationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String line=request.getParameter("line");
		ArrayList<String> ar = new ArrayList<String>();
		ar=LineDao.getStationSet(Integer.parseInt(line));
		Gson gs=new Gson();
		String str=gs.toJson(ar);
		// 打印json
//		System.out.println(str);
		//向前台写入车站集合
		response.getWriter().write(str);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
