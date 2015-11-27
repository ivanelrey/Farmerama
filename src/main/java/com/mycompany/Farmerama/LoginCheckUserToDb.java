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
    public String userName;
    
    public LoginCheckUserToDb() {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("accounts");
        account = db.getCollection("account");
        
    }   
    
    
    public void checkUser(String user, String pass) {
       
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("user", user);
        searchQuery.put("password",pass);
        DBCursor cursor = account.find(searchQuery);
        userName = cursor.next().get("user").toString();
        System.out.println(userName);
   
      
    }
    
      /*BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("userName", "tolis");
        DBCursor cursor = photo.find(searchQuery);     
        String uri = cursor.next().get("photoURL").toString();
        return uri;
    */
    
}