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

public class viewcardao {
	
	public static ArrayList getAllRecords(){  
	    ArrayList<Car> list=new ArrayList<Car>();  
	    try{  
	 Connection conn = ConnectionProvider.getConnection();
	 PreparedStatement ps=conn.prepareStatement("select * from cartable");  
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
	

