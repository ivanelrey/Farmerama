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
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Gomesito
 */
public class getAllAccounts {
    
    DB db;
    DBCollection account;
    
    
    public getAllAccounts() {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("accounts");
        account = db.getCollection("account");
        
    }   
    
    public String getProfileImage(String user){
        String profileImage ="";
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.append("user",user);
        DBCursor cursor = account.find(searchQuery);
        while(cursor.hasNext())
        {
        profileImage = cursor.next().get("profileImage").toString();
        }
       
        return profileImage;
        
    }
    public ArrayList<String> getAccounts() {
        ArrayList<String> allUsers = new  ArrayList<String>();
        DBCursor cursor = account.find();
        while(cursor.hasNext())
        {
        allUsers.add(cursor.next().get("user").toString());
        }
        return allUsers;
    }
    public ArrayList<String> getSearchedAccounts(String inputedS) {
        ArrayList<String> allFoundUsers = new  ArrayList<String>();
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.append("user",new BasicDBObject("$regex",inputedS));
        DBCursor cursor = account.find(searchQuery);
        while(cursor.hasNext())
        {
        allFoundUsers.add(cursor.next().get("user").toString());
        }
        return allFoundUsers;
    }
    public HashMap<String,String> getSearchedAccountsByNumber(String inputedS) {
       HashMap<String,String> allFoundUsersByNumber = new  HashMap<String,String>();
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.append("number",new BasicDBObject("$regex",inputedS));
        DBCursor cursor = account.find(searchQuery);
        while(cursor.hasNext())
        {
        allFoundUsersByNumber.put(cursor.next().get("number").toString(),cursor.curr().get("user").toString());
        }
        return allFoundUsersByNumber;
    }
     public ArrayList<String> getAccountsPhotos() {
        DBCursor cursor = account.find();
        ArrayList<String> photos = new ArrayList<String>();
        while (cursor.hasNext()) {
            photos.add(cursor.next().get("profileImage").toString());
        }
        return photos;
    }
}
