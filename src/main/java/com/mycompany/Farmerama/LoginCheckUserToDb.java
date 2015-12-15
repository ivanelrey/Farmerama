/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tolis MacNamli
 */
public class LoginCheckUserToDb extends HttpServlet {
    
    DB db;
    DBCollection account;
        String userName;
    
    public LoginCheckUserToDb() {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("accounts");
        account = db.getCollection("account");  
    }   
    
    public boolean checkUser(String user, String pass) {
       
        userName="";
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("user", user);
        searchQuery.put("password",pass);
        DBCursor cursor = account.find(searchQuery);
        while(cursor.hasNext())
        {
            userName = cursor.next().get("user").toString();
        }
        
        if(user.equals(userName))
            return true;
        else 
            return false;
    }

    
}