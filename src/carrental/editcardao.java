package carrental;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class editcardao {
	public static Car editcar(Car i,String regno){  
		 Car u=new Car(); 
	    try{  
	 Connection conn = ConnectionProvider.getConnection();
	 PreparedStatement ps=conn.prepareStatement("select * from cartable WHERE regno=?"); 
	 ps.setString(1, regno); 
     ResultSet rs=ps.executeQuery();  
     if(rs.next()){  
        
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
         
     }  return u; 
    }catch(Exception e){System.out.println(e);}  
    return u; 
    
}  
         

}
