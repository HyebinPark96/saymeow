package saymeow;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class AdminSalesDataMgr {
	private DBConnectionMgr pool; // 선언
	
	// 생성자
	public AdminSalesDataMgr() {
		pool = DBConnectionMgr.getInstance(); // 인스턴스화
	}
	
	// 원형차트 만들기 위해 판매순 1~5위 들고오기
	public ProductBean getSalesRanking(int index) { // index : ? = limit 조건인 첫 시작지점을 뜻하는 변수, 하나씩 가져오므로 1씩 증가시켜 사용하면됨
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ProductBean pBean = new ProductBean();
		try {
			con = pool.getConnection();
			/*주문 수량 많은 순으로 top5 추출*/
			sql = "SELECT p.pname, o.pnum "
				+ "FROM product p INNER JOIN petorder o "
				+ "WHERE o.pnum = p.pnum AND state = 2 " // 무조건 판매완료된 상품만 판매데이터에 합산되도록
				+ "GROUP BY o.pnum "
				+ "ORDER BY SUM(o.qty) DESC, p.pname " // 다중 정렬 우선순위 qty합 같다면 상품이름 오름차순으로
				+ "LIMIT ?, 1;";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, index);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pBean.setPname(rs.getString(1));
				pBean.setPnum(rs.getInt(2));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return pBean;
	}
	
	// getSalesRanking 메소드 결과를 1개씩 가져와서 백분율 변환 후 원형차트 요소에 이름 넣기
	public String getSalesDataPname(int index) { // getSalesRanking 메소드 index변수와 같은 의미
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		String pName = null;
		try {
			AdminSalesDataMgr dMgr = new AdminSalesDataMgr();
			ProductBean pBean = dMgr.getSalesRanking(index);
			con = pool.getConnection();
			// 같은 상품 여러번 주문했더라도, 총 합계로 백분율 구하기 (Ex. 주문내역 중 pnum=1 qty=4, pnum=1 qty=4과 pnum=2 qty=8의 백분율은 같음)
			sql = "SELECT pname, SUM(qty) * 100/ (SELECT SUM(qty) FROM petorder) FROM petorder WHERE pnum = ? AND state = 2";
			pstmt = con.prepareStatement(sql);			
			pstmt.setInt(1, pBean.getPnum());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pName = rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return pName;
	}
	
	// getSalesRanking 메소드 결과를 1개씩 가져와서 백분율 변환 후 원형차트 요소에 퍼센트 넣기
	public double getSalesDataPnum(int index) { // getSalesRanking 메소드 index변수와 같은 의미
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		double percentage = 0;
		try {
			AdminSalesDataMgr dMgr = new AdminSalesDataMgr();
			ProductBean pBean = dMgr.getSalesRanking(index);
			con = pool.getConnection();
			// 같은 상품 여러번 주문했더라도, 총 합계로 백분율 구하기 (Ex. 주문내역 중 pnum=1 qty=4, pnum=1 qty=4과 pnum=2 qty=8의 백분율은 같음)
			sql = "SELECT pname, SUM(qty) * 100/ (SELECT SUM(qty) FROM petorder) FROM petorder WHERE pnum = ? AND state = 2";
			pstmt = con.prepareStatement(sql);			
			pstmt.setInt(1, pBean.getPnum()); 
			rs = pstmt.executeQuery();
			if(rs.next()) {
				percentage = rs.getDouble(2);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return percentage;
	}
	
	// 막대그래프 유동적으로 년도 변경되기 위해 현재날짜의 년도에서 몇년전?몇년후? 기준 넣어서 년도 반환하기
	public String getStandardYear(int interval) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		String standardYear = null;
		try {
			con = pool.getConnection();
			sql = "SELECT DATE_FORMAT(DATE_SUB(now(), INTERVAL ? YEAR),'%Y')";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, interval);
			rs = pstmt.executeQuery();
			if(rs.next())
				standardYear = rs.getString(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return standardYear;
	}
	
	
	
	// 막대그래프 특정 년도의 총 판매가격 구하기(원가차감 안된가격)
	public int getSales(String standardYear) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int sales = 0;
		try {
			con = pool.getConnection();
			sql = "SELECT SUM(price1 * qty) "
				+ "FROM petorder "
				+ "WHERE DATE_FORMAT(regdate, '%Y') > (SELECT DATE_FORMAT(DATE_SUB(?, INTERVAL 1 YEAR), '%Y')) "
				+ "AND DATE_FORMAT(regdate, '%Y') < (SELECT DATE_FORMAT(DATE_ADD(?, INTERVAL 1 YEAR), '%Y')) "
				+ "AND state = 2"; // 무조건 판매완료된 상품만 판매데이터에 합산되도록
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, standardYear+"-01-01");
			pstmt.setString(2, standardYear+"-01-01");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				sales = rs.getInt(1); // 총 판매가격
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return sales;
	}
	
	// 막대그래프 특정 년도의 원가 구하기
	public int getExpenses(String standardYear) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int expenses = 0;
		try {
			con = pool.getConnection();
			sql = "SELECT SUM(p.price2 * o.qty) "
				+ "FROM petorder o INNER JOIN product p "
				+ "WHERE o.pnum = p.pnum "
				+ "AND DATE_FORMAT(regdate, '%Y') > (SELECT DATE_FORMAT(DATE_SUB(?, INTERVAL 1 YEAR), '%Y')) "
				+ "AND DATE_FORMAT(regdate, '%Y') < (SELECT DATE_FORMAT(DATE_ADD(?, INTERVAL 1 YEAR),'%Y')) "
				+ "AND state = 2"; // 무조건 판매완료된 상품만 판매데이터에 합산되도록
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, standardYear+"-01-01");
			pstmt.setString(2, standardYear+"-01-01");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				expenses = rs.getInt(1); // 총 판매가격
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return expenses;
	}
	
	
	
	public static void main(String[] args) {
		AdminSalesDataMgr dMgr = new AdminSalesDataMgr();
		ProductBean pBean = dMgr.getSalesRanking(0);
		double percentage = dMgr.getSalesDataPnum(0);
		String standardYear = dMgr.getStandardYear(0);
		int sales = dMgr.getSales(standardYear);
	}
}
