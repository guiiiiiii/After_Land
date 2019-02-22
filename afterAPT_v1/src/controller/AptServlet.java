package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.AptDAO;
import model.vo.AptCoefVO;
import model.vo.AptNameVO;
import model.vo.AptVO;

@WebServlet("/apt")
public class AptServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AptDAO dao = new AptDAO();
		AptVO vo = new AptVO();

		String gu = request.getParameter("gu");
		String bjdcode = request.getParameter("bjdcode");
		String area = request.getParameter("area"); //면적입력받은값
		//String apt = request.getParameter("apt");
		//String heat = request.getParameter("heat");
		String name = request.getParameter("kaptname");
		String price=request.getParameter("price");
		String floor=request.getParameter("floor");
		//String gucode=request.getParameter("gucode");
		int area_factor=1;
		String searchbjdcode = "";

		
		if(gu==null&& bjdcode==null && area==null &&
				name==null && price ==null &&floor==null) {
			request.getRequestDispatcher("/main.jsp").forward(request, response);

		}
		
		
		if (name != null) {
			searchbjdcode = dao.loadcode(name);
			System.out.println(searchbjdcode);
			
			if (!searchbjdcode.equals("")) {
				ArrayList<AptNameVO> list = dao.listAPTName2(name, searchbjdcode);
				if (list != null) {
					request.setAttribute("info", list);
					
					if (area != null) {
						
						if(Double.parseDouble(area)>=135) {
							area_factor=5;
						}else if(Double.parseDouble(area)>=95.86) {
							area_factor=4;
						}else if(Double.parseDouble(area)>=62.81) {
							area_factor=3;
						}else if(Double.parseDouble(area)>=40) {
							area_factor=2;
						}else area_factor=1;

						
						ArrayList<AptCoefVO> list2 = dao.setresult(searchbjdcode, list.get(0).getCodeaptnm(), list.get(0).getCodeheatnm(), Integer.toString(area_factor));
						System.out.println("에휴"+list2.get(0).getArea_factor());
						if (list2 != null) {
			 				double heat1 =Double.parseDouble(list2.get(0).getHeat());
			 				double area_factor1=Double.parseDouble(list2.get(0).getArea_factor());
			 				double code1=Double.parseDouble(list2.get(0).getCode());
			 				double floor1=Double.parseDouble(list2.get(0).getFloor());
			 				double apt1=Double.parseDouble(list2.get(0).getApt());
			 				double hocnt1=Double.parseDouble(list2.get(0).getHoCnt());
			 				double month1=Double.parseDouble(list2.get(0).getMonth());
			 				double subway1=Double.parseDouble(list2.get(0).getSubway());
			 				double mid1=Double.parseDouble(list2.get(0).getMid());
			 				double intercept1=Double.parseDouble(list2.get(0).getIntercept());
			 				
			 				double info_code=Double.parseDouble(list.get(0).getBjdcode());
			 				double info_heat=Double.parseDouble(list.get(0).getCodeheatnm());
			 				double info_hocnt=Double.parseDouble(list.get(0).getHocnt());
			 				double info_mid=Double.parseDouble(list.get(0).getMid());
			 				double info_subway=Double.parseDouble(list.get(0).getSubway()); 

			 				
							double example=(intercept1+heat1+apt1+code1+info_hocnt*hocnt1+info_mid*mid1+info_subway*subway1+Double.parseDouble(floor)*floor1+month1)*Double.parseDouble(area);
							double examplelow=Math.round(1.2*((intercept1+heat1+apt1+code1+info_hocnt*hocnt1+info_mid*mid1+info_subway*subway1+Double.parseDouble(floor)*floor1+month1)-150)*Double.parseDouble(area));
							double examplehigh=Math.round(1.2*((intercept1+heat1+apt1+code1+info_hocnt*hocnt1+info_mid*mid1+info_subway*subway1+Double.parseDouble(floor)*floor1+month1)+150)*Double.parseDouble(area));
							double realexample = Math.round(example*1.2);			
							
							
							double realPrice = Double.parseDouble(price);
							if(realPrice >examplehigh) request.setAttribute("rating", 3);
							else if(realPrice <examplelow) request.setAttribute("rating", 1);
							else request.setAttribute("rating", 2);
							
							
							System.out.println("example : "+example*1.2);
							request.setAttribute("result", realexample);
							request.setAttribute("examplelow", examplelow);
							request.setAttribute("examplehigh", examplehigh);
							request.setAttribute("price", price);
						} 
					}
				}else {
					request.setAttribute("msg", "아파트정보 잘못가져오넹...");
				}
			}
			//System.out.println(request.getRequestDispatcher("/showResult.jsp"));
			//System.out.println(request+ ":" + response);
			request.getRequestDispatcher("/showResult.jsp").forward(request, response);
		}
		
		if (gu != null) {// listOne
			ArrayList<AptVO> list = dao.listDong(gu);

			if (list != null) {
				request.setAttribute("dong", list);
				request.getRequestDispatcher("/main.jsp").forward(request, response);

			} else {
				request.setAttribute("msg", "해당 동이 읎따");
			}
		}else if(bjdcode != null) {
			ArrayList<AptNameVO> list2 = dao.listAPTName(bjdcode);
			ArrayList<AptVO> gudong = dao.gudong(bjdcode);
			
			if (list2 != null) {
				request.setAttribute("aptname", list2);
				request.setAttribute("gudong", gudong);

				request.getRequestDispatcher("/search.jsp").forward(request, response);

			} else {
				request.setAttribute("msg", "해당 아파트 읎따");
			}
		}
		

	}


}
