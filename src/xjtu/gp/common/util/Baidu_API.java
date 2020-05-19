package xjtu.gp.common.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import xjtu.gp.vo.*;

public class Baidu_API {
	// 备用apk
	private static final String MAP_URL = "http://api.map.baidu.com/geocoder/v2/?ak=4rcKAZKG9OIl0wDkICSLx8BA&output=json&address=";

	/**
	 * -输入真实地址名称
	 * @param addr String
	 * @return Position(lng,lat)
	 */
	public static Position getPositionByBMap(String addr) {
		String urlText = "http://api.map.baidu.com/geocoder/v2/?" + "address=" + addr + "&output=json&ak="
				+ "yaSjbL5CB0MUXsdBfU6wgqS9HsC9RmN1" + "&callback=showLocation";
		Position ret = null;
		try {
			// 发送查询请求
			URL url = new URL(urlText);
			URLConnection conn = url.openConnection();

			// 获取请求结果
			InputStream is = conn.getInputStream();
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			String jsonText = br.readLine();

			// 解析请求结果-根据jsonName获取相应数值
			JsonObject jo = (JsonObject) new JsonParser().parse(jsonText.split("\\(")[1].split("\\)")[0]);

			int status = jo.get("status").getAsInt();
			if (status != 0)
				throw new Exception("请求失败，错误码：" + status);

			jo = (JsonObject) new JsonParser().parse(jo.get("result").toString());// 字段result是个json字符串
			jo = (JsonObject) new JsonParser().parse(jo.get("location").toString());// 对result解析
			ret = new Position(jo.get("lng").getAsDouble(), jo.get("lat").getAsDouble());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	/**
	 * -获取真实地址
	 * @param lng1
	 * @param lat1
	 * @return String
	 */
	public static String getRealAddr(double lng1, double lat1) {
		String lng = String.valueOf(lng1);
		String lat = String.valueOf(lat1);
		String ret="深圳";
		try {
			URL url = new URL(
					"http://api.map.baidu.com/geocoder/v2/?ak=wPPxsfCtNFm4PqEV68jbDdjP7U4twstj&callback=renderReverse&location="
							+ lat + "," + lng + "&output=json&pois=1");
			URLConnection conn = url.openConnection();
			conn.connect();
			
			InputStream in = conn.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(in,"UTF-8"));
            String str = reader.readLine(); 
            str = str.substring(str.indexOf("(") + 1, str.length()-1);  
            JsonObject jo=(JsonObject) new JsonParser().parse(str);
            jo=(JsonObject) new JsonParser().parse(jo.get("result").toString());
//            System.out.println(jo);
            ret=jo.get("formatted_address").getAsString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ret;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		System.out.println(getPositionByBMap("西安交通大学"));
		System.out.println(getRealAddr(114.06450593766749,22.549184621492437));;
		System.out.println(getRealAddr(114.06154700465763,22.528465912071983));
	}

}
