/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pharmacy1;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Junaid
 */
    public class database {
        
        public static Connection connectDb(){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
            
                Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3307/pharmacy", "root", "");
                return connect;
            }
            catch(Exception e){
                e.printStackTrace();
            }
            return null;
        }
    }
