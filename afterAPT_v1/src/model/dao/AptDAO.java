package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.vo.AptCoefVO;
import model.vo.AptNameVO;
import model.vo.AptVO;

public class AptDAO {
	private Connection connectDB() throws SQLException {
		Connection conn = null;// 연결객체
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "java", "java");
		} catch (Exception cnfe) {
			System.out.println("드라이버 로딩 오류");
		}
		return conn;
	}

	private void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			conn.close();
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<AptVO> gudong(String bjdcode) {

		ArrayList<AptVO> list = new ArrayList<>();

		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select * from sigudong where bjdcode = '"+bjdcode+"'");) {

			if (rs.next()) {
				do {
					AptVO vo = new AptVO();
					vo.setBjdcode(rs.getString("bjdcode"));
					vo.setSi(rs.getString("si"));
					vo.setGu(rs.getString("gu"));
					vo.setDong(rs.getString("dong"));
					list.add(vo);

				} while (rs.next());

			} else {
				System.out.println("구동!!");
			}

			close(connectDB(), stmt, rs);

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 구동 오류");
		}

		return list;
	}
	public ArrayList<AptVO> listDong(String gu) {

		ArrayList<AptVO> list = new ArrayList<>();

		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select * from sigudong where gu='"+gu+"'and dong is not null order by dong asc");) {

			if (rs.next()) {
				do {
					AptVO vo = new AptVO();
					vo.setBjdcode(rs.getString("bjdcode"));
					vo.setSi(rs.getString("si"));
					vo.setGu(rs.getString("gu"));
					vo.setDong(rs.getString("dong"));
					list.add(vo);

				} while (rs.next());

			} else {
				System.out.println("listdong!!");
			}

			close(connectDB(), stmt, rs);

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 오류1");
		}

		return list;
	}
	public AptVO bjdcodeOne(String dong) {

		AptVO list = new AptVO();

		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select * from sigudong where gu='"+dong+"'");) {

			if (rs.next()) {
				do {
					AptVO vo = new AptVO();
					vo.setBjdcode(rs.getString("bjdcode"));
					vo.setSi(rs.getString("si"));
					vo.setGu(rs.getString("gu"));
					vo.setDong(rs.getString("dong"));

				} while (rs.next());

			} else {
				System.out.println("이건엄쒀!!");
			}

			close(connectDB(), stmt, rs);

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 오류");
		}

		return list;
	}
	
	public ArrayList<AptNameVO> listAPTName(String dongcode) {

		ArrayList<AptNameVO> list = new ArrayList<>();

		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select * from apt_info_all where bjdcode='"+dongcode+"'");) {

			if (rs.next()) {
				do {
					AptNameVO vo = new AptNameVO();
					vo.setBjdcode(rs.getString("bjdcode"));
					vo.setKaptname(rs.getString("kaptname"));
					vo.setAddress(rs.getString("address"));
					vo.setHocnt(rs.getString("hocnt"));
					vo.setCodeaptnm(rs.getString("codeaptnm"));
					vo.setCodehallnm(rs.getString("codehallnm"));
					vo.setCodeheatnm(rs.getString("codeheatnm"));
					vo.setCodesalenm(rs.getString("codesalenm"));
					vo.setSubway(rs.getString("subway"));
					vo.setMid(rs.getString("mid"));
					
					list.add(vo);

				} while (rs.next());

			} else {
				System.out.println("에효..");
			}

			close(connectDB(), stmt, rs);

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 오류2");
		}

		return list;
	}
	public ArrayList<AptNameVO> listAPTName2(String name, String dongcode) {

		ArrayList<AptNameVO> list = new ArrayList<>();

		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select * from apt_info_all where bjdcode='"+dongcode+"'and kaptname='"+name+"'");) {

			if (rs.next()) {
				do {
					AptNameVO vo = new AptNameVO();
					vo.setBjdcode(rs.getString("bjdcode"));
					vo.setKaptname(rs.getString("kaptname"));
					vo.setAddress(rs.getString("address"));
					vo.setHocnt(rs.getString("hocnt"));
					vo.setCodeaptnm(rs.getString("codeaptnm"));
					vo.setCodehallnm(rs.getString("codehallnm"));
					vo.setCodeheatnm(rs.getString("codeheatnm"));
					vo.setCodesalenm(rs.getString("codesalenm"));
					vo.setSubway(rs.getString("subway"));
					vo.setMid(rs.getString("mid"));
					
					list.add(vo);

				} while (rs.next());

			} else {
				System.out.println("에휴..");
			}

			close(connectDB(), stmt, rs);

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 오류2");
		}

		return list;
	}
	public ArrayList<AptCoefVO> setresult(String bjd, String apt, String heat, String area) {
		ArrayList<AptCoefVO> list = new ArrayList<>();
		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select area_factor, intercept, subway, mid, hocnt, floor, month, g"+bjd+", apt"+apt+", heat"+heat+" from apt_coef where area_factor='"+area+"'");) {
			if (rs.next()) {
				do {
					AptCoefVO vo = new AptCoefVO();
					System.out.println("setresult에서 찍는중 :"+rs.getString("area_factor"));
					vo.setArea_factor(rs.getString("area_factor"));
					vo.setIntercept(rs.getString("intercept"));
					vo.setSubway(rs.getString("subway"));
					vo.setMid(rs.getString("mid"));
					vo.setHoCnt(rs.getString("hocnt"));
					vo.setFloor(rs.getString("floor"));
					vo.setMonth(rs.getString("month"));
					vo.setCode(rs.getString("g"+bjd));
					vo.setApt(rs.getString("apt"+apt));
					vo.setHeat(rs.getString("heat"+heat));
					list.add(vo);
				} while (rs.next());

			} else {
				System.out.println("이건엄쒀!!");
			}
			close(connectDB(), stmt, rs);
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 오류3");
		}
		return list;
	}
	
	public String loadcode(String aptname) {

		String list="" ;

		try (Statement stmt = connectDB().createStatement();
				ResultSet rs = stmt.executeQuery("select bjdcode from apt_info_all where kaptname='"+aptname+"'");) {

			if (rs.next()) {
				do {
					AptNameVO vo = new AptNameVO();
					list=rs.getString("bjdcode");
					

				} while (rs.next());

			} else {
				System.out.println("loadcode문제!!");
			}

			close(connectDB(), stmt, rs);

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			System.out.println("SQL 오류4");
		}

		return list;
	}
}