package carrental;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Arrays;

import rentalCar.ConnectionProvider;
import rentalCar.User;
public class logindao {
	static String returnString = null;
	public static String checkLogin(User bean) {
        try {
        	 Connection conn = ConnectionProvider.getConnection();
        	 PreparedStatement ps = conn.prepareStatement("SELECT * FROM usertable WHERE email=? AND pwd=?");
        	 ps.setString(1, bean.getEmail());
        	 ps.setString(2, bean.getPwd());
        	 ResultSet rs = ps.executeQuery();
        	 if(rs.next())
  		   {
  			
