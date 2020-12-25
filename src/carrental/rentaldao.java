package carrental;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;  

import carrental.Car;
import carrental.ConnectionProvider;

public class rentaldao {
	public static ArrayList getAllRecords(String date1,String date2,String stat){  
		 ArrayList<Car> list=new ArrayList<Car>();  
		    try{  
	 Connection conn = ConnectionProvider.getConnection();
	 PreparedStatement ps=conn.prepareStatement("SELECT * FROM cartable WHERE regno NOT IN (SELECT regno FROM rentalrequesttable WHERE ('"+date1+"' BETWEEN pickupdate AND dropdate) OR ('"+date2+"' BETWEEN pickupdate AND dropdate)) AND station=? AND status=? UNION ALL SELECT * FROM cartable WHERE regno NOT IN (SELECT regno FROM rentalrequesttable WHERE ('"+date1+"' BETWEEN pickupdate AND dropdate) OR ('"+date2+"' BETWEEN pickupdate AND dropdate)) AND station!=? AND status=?");  
	 ps.setString(1, stat);
	 ps.setString(2, "active"); 
	 ps.setString(3, stat);
	 ps.setString(4, "active"); 
	 //ps.setString(3, date2); 
	 //ps.setString(4, date2);
     ResultSet rs=ps.executeQuery();
     while(rs.next()){  
         Car u=new Car(); 
         u.setRegno(rs.getString("regno"));  
         u.setStation(rs.getString("station"));  
         u.setCarimage(rs.getString("carimage"));  
         u.setDiscription(rs.getString("discription"));  
         u.setRentalprize(rs.getFloat("rentalprize"));  
         
         u.setMaxdistance(rs.getFloat("maxdistance"));
         u.setExcessprize(rs.getFloat("excessprize"));
         u.setGeartype(rs.getString("geartype"));
         u.setFueltype(rs.getString("fueltype"));
         u.setSeattype(rs.getString("seattype")); 
         u.setState(rs.getString("status")); 
         list.add(u); 
     }  return list; 
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
         
}
	