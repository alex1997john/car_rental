package carrental;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class viewnewrentaldao {
	

	public static ArrayList getAllRecords(){  
	    ArrayList<rental> list=new ArrayList<rental>();  
	    try{  
	    	 Connection conn = ConnectionProvider.getConnection();
	    	 PreparedStatement ps=conn.prepareStatement("select * from rentalrequesttable where state=?"); 
	    	 ps.setString(1, "pending");
	         ResultSet rs=ps.executeQuery();  
	         while(rs.next()){  
	             rental u=new rental(); 
	             u.setReqid(rs.getInt("reqid"));
	             u.setRegno(rs.getString("regno")); 
	             u.setEmail(rs.getString("email")); 
	             u.setBookingdate(rs.getString("bookingdate")); 
	             u.setPickupdate(rs.getString("pickupdate"));
	             u.setPickuptime(rs.getString("pickuptime"));
	             u.setDropdate(rs.getString("dropdate"));
	             u.setDroptime(rs.getString("droptime"));
	             u.setRentalprize(rs.getFloat("rentalprize"));
	             u.setStation(rs.getString("station"));
	             u.setStatus(rs.getString("state"));
	             list.add(u); 
	         }  return list; 
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	         
	}