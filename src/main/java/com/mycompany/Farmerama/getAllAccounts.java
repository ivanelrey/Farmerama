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
}
