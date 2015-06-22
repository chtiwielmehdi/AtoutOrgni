package dataNetwork;



import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.*; 
import java.util.ArrayList;

/**
 * La class Gestion_connexion permet de se connecter a une BASE DE DONNEE MYSQL
 */
public class Gestion_connexion { 
	
	   Connection          con = null; 
	    static Statement           sta; 
	    static ResultSet           re; 
	    ResultSetMetaData   metaBase; 
  
 
    public Gestion_connexion() { 
        try { 
            Class.forName("com.mysql.jdbc.Driver"); 
            
          String url="jdbc:mysql://195.200.217.152:3306/chleo_db";
          String user="chleo_db";
        
            		
            con = DriverManager.getConnection(url,user,"xJBm0rd5"); 
            System.out.println("Overture de la connection"); 
            sta = con.createStatement(); 
        } 
        catch (ClassNotFoundException ex) { 
            System.err.println("Ne peut pas trouver les classes du conducteur de la base de données."); 
            System.err.println(ex); 
        } 
        catch (SQLException ex) { 
            System.err.println("pas de connection au base de de donnee."); 
            System.err.println(ex); 
        } 
  
    }
      
    
 
   
    public static void main(String[] args){
		new Gestion_connexion();

    }
}