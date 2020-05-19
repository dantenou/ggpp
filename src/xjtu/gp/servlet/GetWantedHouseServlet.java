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
import xjtu.gp.vo.FilterFactor;
import xjtu.gp.vo.*;

/**
 * Servlet implementation class GetWantedHouseServlet
 */
@WebServlet("/GetWantedHouse")
public class GetWantedHouseServlet extends HttpServlet {
	// 由于是单例模式，故而会一直保存在其中！
	private static final long serialVersionUID = 1L;
	public static FilterFactor ff=null;
	static ArrayList<House> shareAr=null;// 筛选得到的记录保存其中！

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetWantedHouseServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 获取参数
		int line = Integer.parseInt(request.getParameter("line"));
		String station = new String(request.getParameter("station").getBytes("ISO-8859-1"), "UTF-8");
		int distance = Integer.parseInt(request.getParameter("distance"));
		int bedrooms = Integer.parseInt(request.getParameter("bedrooms"));
		int livingrooms = Integer.parseInt(request.getParameter("livingrooms"));
		String price = request.getParameter("price");
		String area = request.getParameter("area");
		int communityType = Integer.parseInt(request.getParameter("communityType"));// 可忽略

		// 筛选条件
		Range price1 = new Range(Integer.parseInt(price.split(" ")[1]), Integer.parseInt(price.split(" ")[0]));
		if (Integer.parseInt(price.split(" ")[0]) == -1) {
			price1 = null;
		}

		Range area1 = new Range(Integer.parseInt(area.split(" ")[1]), Integer.parseInt(area.split(" ")[0]));
		if (Integer.parseInt(area.split(" ")[0]) == -1) {
			area1 = null;
		}
		ArrayList<House> ar = null;
		// 筛选条件保存
		ff=new FilterFactor(line, station, distance, bedrooms, livingrooms, price1, area1);
		// 获取合适记录
		ar = HouseService.findFitHouse(ff);
		Collections.sort(ar, new ComprehensiveRanking());// 综合排序
		System.out.println("合适记录总数："+ar.size());
		// 克隆结果--ar
		shareAr = (ArrayList<House>)ar.clone();
		
		System.out.println("输入条件："+line + " " + station + " " + distance + " " + bedrooms + " " + livingrooms + " " + price
				+ " " + area + " " + communityType);
		System.out.println("筛选所得记录："+ar.size());

		request.setAttribute("HouseArr", ar);
		request.getRequestDispatcher("property-listing.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static FilterFactor getFf() {
		return ff;
	}

	public static void setFf(FilterFactor ff) {
		GetWantedHouseServlet.ff = ff;
	}

	public static ArrayList<House> getShareAr() {
		return shareAr;
	}

	public static void setShareAr(ArrayList<House> shareAr) {
		GetWantedHouseServlet.shareAr = shareAr;
	}
		
}
