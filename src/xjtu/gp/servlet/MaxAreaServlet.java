package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xjtu.gp.service.HouseService;
import xjtu.gp.vo.House;

/**
 * Servlet implementation class MaxAreaServlet
 */
@WebServlet("/MaxArea")
public class MaxAreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MaxAreaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			@SuppressWarnings("unchecked")
			ArrayList<House> ar=(ArrayList<House>)(GetWantedHouseServlet.shareAr.clone());
			ArrayList<House> arMA=HouseService.SortByArea(ar);
			request.setAttribute("HouseArr", arMA);
		}catch(Exception e){
			System.out.println("克隆失败！");
		}
		request.getRequestDispatcher("property-listing.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
