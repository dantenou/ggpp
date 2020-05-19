package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xjtu.gp.service.HouseService;
import xjtu.gp.service.HouseServiceAuthentic;
import xjtu.gp.vo.FilterFactor;
import xjtu.gp.vo.House;
import xjtu.gp.vo.Range;

/**
 * Servlet implementation class ShortList
 */
@WebServlet("/ShortList")
public class ShortListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShortListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int line=1;
		String station="罗湖站";
		if(request.getParameter("station").equals("")){
			System.out.println("mapOnline：station参数为空！");
		}else{
			station =new String(request.getParameter("station")).split("区")[1].split("-")[0];
		}
		int distance = Integer.parseInt(request.getParameter("distance"));
		int bedrooms = -1;
		int livingrooms = -1;
		String price = request.getParameter("price");
		String area = request.getParameter("area");
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
		FilterFactor ff=new FilterFactor(line, station, distance, bedrooms, livingrooms, price1, area1);
		// 获取合适记录
		ar = HouseServiceAuthentic.findFitHouse(ff);
		System.out.println("输入条件："+line + " " + station + " " + distance + " " + bedrooms + " " + livingrooms + " " + price
				+ " " + area);
		System.out.println("筛选所得记录："+ar.size());
		request.setAttribute("HouseArr", ar);
		
		// 跳转&传参：HouseArr
		request.getRequestDispatcher("mapOnline.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
