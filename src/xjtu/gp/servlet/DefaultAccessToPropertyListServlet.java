package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xjtu.gp.common.util.ComprehensiveRanking;
import xjtu.gp.service.HouseService;
import xjtu.gp.service.StationService;
import xjtu.gp.vo.FilterFactor;
import xjtu.gp.vo.House;
import xjtu.gp.vo.Position;
import xjtu.gp.vo.Station;

/**
 * Servlet implementation class DefaultAccessToPropertyListServlet
 */
@WebServlet("/DefaultAccess")
public class DefaultAccessToPropertyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DefaultAccessToPropertyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		double lng=Double.parseDouble(request.getParameter("lng"));
		double lat=Double.parseDouble(request.getParameter("lat"));
		// 传入默认位置
		Station stat=StationService.getClosestStation(new Position(114.06450593766749,22.549184621492437));
		FilterFactor ff=new FilterFactor(1, stat.getName()+"站", 5, -1, -1, null, null);
		ArrayList<House> ar=HouseService.findFitHouse(ff);
		System.out.println("默认访问-记录总数："+ar.size());
		
		ar.sort(new ComprehensiveRanking());// 综合排序
		
		// 设置新的记录以及筛选条件
		GetWantedHouseServlet.setShareAr(ar);
		GetWantedHouseServlet.setFf(ff);
		
		request.setAttribute("HouseArr", ar);
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
