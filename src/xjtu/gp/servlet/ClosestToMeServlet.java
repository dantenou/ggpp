package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xjtu.gp.service.HouseService;
import xjtu.gp.vo.FilterFactor;
import xjtu.gp.vo.House;

/**
 * Servlet implementation class ClosestToMeServlet
 */
@WebServlet("/ClosestToMe")
public class ClosestToMeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClosestToMeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FilterFactor ff=GetWantedHouseServlet.ff;
		
		// 获取新arraylist
		ArrayList<House>ar=HouseService.findFitHouse(ff);
		ArrayList<House>arctm=HouseService.sortByDistance(ar);
		request.setAttribute("HouseArr", arctm);
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
