
	import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;

	public class DBconn {
		private String dbUrl="jdbc:mysql://localhost:/shakaur";
		private String dbUse ="root";
		private String dbPass="";
		private String dbDriver="com.mysql.cj.jdbc.Driver";
		
		public void loadDriver(String dbDriver)
		{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		}
		public Connection  getConnection()
		{
			Connection con =null;
			try {
				con=DriverManager.getConnection(dbUrl,dbUse,dbPass);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			return con;
			
		}
		
		public String  insert(User user)
		{
			loadDriver(dbDriver);
			Connection con=getConnection();
			String query="INSERT INTO users VALUES(?,?,?,?,?,?,?)";
			String message ="user inserted successfully";

					try {
						
						PreparedStatement ps=con.prepareStatement(query);
						ps.setString(1, null);
						ps.setString(2,user.getFullname());
						ps.setString(3, user.getEmail());
						ps.setInt(4,user.getPhone());
						ps.setString(5, user.getDepartment());
						ps.setString(6,user.getLevel());
						ps.setString(7, user.getPassword());
						ps.executeUpdate();
						try {
						      FileWriter myWriter = new FileWriter("users.txt");
						      myWriter.write("Files in Java might be tricky, but it is fun enough!");
						      myWriter.close();
						      System.out.println("Successfully wrote to the file.");
						    } catch (IOException e) {
						      System.out.println("An error occurred.");
						      e.printStackTrace();
						    }
						  try {
					        	 String[] rows = new String[1];
								FileWriter f=new FileWriter("C:\\Users\\Students\\Desktop\\nn.csv",true);
								BufferedWriter br=new BufferedWriter(f);
								PrintWriter pw=new PrintWriter(br);
//								pw.print(name);
//								pw.print(",");
//								pw.print(address);
//								pw.print(",");
//								pw.print(city);
//								pw.print(",");
//								pw.print(gender);
//								pw.print(",");
//								pw.print(email);
//								pw.print(",");
//								pw.print(password);
//								pw.print(",");
								  
							    for(int p = 1; p<rows.length; p++){
							      pw.append(rows[p]);
							    }
								
								pw.println(user.getFullname()+ ","+user.getEmail()+","+user.getDepartment()+","+user.getLevel()+","+user.getPassword());
								
								pw.flush();
								f.close();
								
								
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
					    
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						message="user not inserted successfully";
						e.printStackTrace();
					}
			return message;
			
			
		}
		public String  checkValidity(String username,String password)

		{
			String name="";
			loadDriver(dbDriver);
			Connection con=getConnection();
	PreparedStatement ps =null;
			String query="SELECT * FROM users WHERE email= ? AND password= ?";
			try {
				 ps=con.prepareStatement(query);
				 ps.setString(1,username);
				 ps.setString(2,password);
				 ResultSet rs=ps.executeQuery();
				 if(rs.next())
				 {
					  name = rs.getString("full_name");
				return name;	 
				 }
				 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
		}
		public int  checkUserPassword(String username,String password)

		{
			int name;
			loadDriver(dbDriver);
			Connection con=getConnection();
	PreparedStatement ps =null;
			String query="SELECT * FROM users WHERE email= ? AND password= ?";
			try {
				 ps=con.prepareStatement(query);
				 ps.setString(1,username);
				 ps.setString(2,password);
				 ResultSet rs=ps.executeQuery();
				 if(rs.next())
				 {
					  name = rs.getInt("id");
				return name;	 
				 }
				 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return 0;
		}
		}
		



