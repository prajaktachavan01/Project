package com.example.jstl_ex.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider
{
    private static Connection con;
    public static Connection getConnection()
    {
           try {
               if (con == null) {
                   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "pratham");
               }
           }
           catch (Exception e)
           {
               e.printStackTrace();
           }
        return con;


    }

}
