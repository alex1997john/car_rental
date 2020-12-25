package carrental;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;  

import carrental.verification;
public class verificationdao {

	public static ArrayList getAllRecords(){  
	    ArrayList<verification> list=new ArrayList<verification>();  
	    try{  
	 Connection conn = ConnectionProvider.getConnection();
	 PreparedStatement ps=conn.prepareStatement("select * from verificationtable where status=?"); 
	 ps.setString(1, "inactive");
     ResultSet rs=ps.executeQuery();  
     while(rs.next()){  
    	 verification u=new verification(); 
         u.setUserid(rs.getInt("userid")); 
         u.setEmail(rs.getString("email"));
         u.setDlno(rs.getString("dlno"));
         u.setDlfront(rs.getString("dlfront"));
         u.setDlback(rs.getString("dlback"));
         u.setStatus(rs.getString("status"));
         list.add(u); 
     }  return list; 
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
         
}
	