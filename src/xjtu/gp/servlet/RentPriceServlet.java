package xjtu.gp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xjtu.gp.common.util.RentEstimating;
import xjtu.gp.service.HouseService;
import xjtu.gp.vo.FilterFactor;
import xjtu.gp.vo.House;
import xjtu.gp.vo.HousePricing;
import xjtu.gp.vo.Range;

/**
 * Servlet implementation class RentPriceServlet
 */
@WebServlet("/RentPrice")
public class RentPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RentPriceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String location =new String(request.getParameter("location"));
		int area=0;
		int bedrooms=0;
		int livingrooms=0;
		try{
			area=Integer.parseInt(request.getParameter("area"));
			bedrooms=Integer.parseInt(request.getParameter("bedrooms"));
			livingrooms=Integer.parseInt(request.getParameter("livingrooms"));
		}catch(NumberFormatException e){
			e.printStackTrace();
		}
		HousePricing hp=new HousePricing(area, bedrooms, livingrooms, location);
		hp=RentEstimating.getValuation(hp);
		System.out.println("房屋信息："+hp); 
		request.setAttribute("hp", hp);
		// 相似房屋推荐(最近的地铁站方圆五公里以内，租金上下浮动40%)
		FilterFactor ff=new FilterFactor(1,hp.getStation()+"站",5,-1,-1,
				new Range((int)1.4*hp.getRentEstimated(),(int)0.6*hp.getRentEstimated()),null);
		ArrayList<House>ar=HouseService.findFitHouse(ff);
		request.setAttribute("HouseArr", ar);
		
		// 跳转
		request.getRequestDispatcher("pricing.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
