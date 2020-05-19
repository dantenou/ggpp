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
import xjtu.gp.vo.Range;

/**
 * Servlet implementation class MaxMoneyServlet
 */
@WebServlet("/MaxMoney")
public class MaxMoneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MaxMoneyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		ArrayList<House> ar;
		try{
			ar=(ArrayList<House>)(GetWantedHouseServlet.shareAr.clone());// 获得在property-listing界面筛选得到的记录！
		}catch(NullPointerException e){
			System.out.println("异常：拷贝为空！");
			// 默认结果
			ar=HouseService.findFitHouse( new FilterFactor(1, "罗湖站", 4, -1, -1, null, null) );
		}
		ArrayList<House>arMM=HouseService.GetMaxMoneysHouse(ar);
		request.setAttribute("HouseArr", arMM);
		request.getRequestDispatcher("gallery.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
