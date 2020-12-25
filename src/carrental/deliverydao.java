package carrental;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class deliverydao {
	public static ArrayList getAllRecords(){  
	    ArrayList<delivery> list=new ArrayList<delivery>();  
	    try{  
	 Connection conn = ConnectionProvider.getConnection();
	 PreparedStatement ps=conn.prepareStatement("select * from deliverytable where status=?");
	 ps.setString(1,"running"); 
     ResultSet rs=ps.executeQuery();  
     while(rs.next()){  
        delivery u=new delivery(); 
         u.setReqid(rs.getInt("reqid"));  
         u.setRegno(rs.getString("regno"));  
         u.setMeterreading(rs.getString("meterreading"));  
         u.setPic(rs.getString("pic"));  
         
         
        
         list.add(u); 
     }  return list; 
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
         
}