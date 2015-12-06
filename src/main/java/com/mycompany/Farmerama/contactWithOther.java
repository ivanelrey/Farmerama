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
import java.util.Set;


/**
 *
 * @author MICHALIS
 */
public class contactWithOther {
    DB db;
    DBCollection PrivateMessages;
    
    public contactWithOther() {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("PrivateMessages");
    }
    public contactWithOther(String collectionName) {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("PrivateMessages");
        PrivateMessages = db.getCollection(collectionName);
        
    } 
    public contactWithOther(String thisname, String othername) {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("PrivateMessages");
        PrivateMessages = db.getCollection(thisname+"with"+othername);
        
    }   
    public void startChat(String thisname, String othername) {
    
        BasicDBObject document = new BasicDBObject();
        document.put("name", thisname);
        document.put("msg"," started the conversation with "+ othername);
        PrivateMessages.insert(document);
    }
    public String getCollectionName() {
        return PrivateMessages.getName();
    }
    public ArrayList<String> getNames()
    {
        ArrayList<String> names = new ArrayList<String>();
        
        
        BasicDBObject searchQuery = new BasicDBObject();
        DBCursor cursor = PrivateMessages.find();
        while (cursor.hasNext()) {
            names.add(cursor.next().get("name").toString());
        }
        return names;
    }
    public ArrayList<String> getMessages()
    {
        ArrayList<String> messages = new ArrayList<String>();
        
        
        BasicDBObject searchQuery = new BasicDBObject();
        DBCursor cursor = PrivateMessages.find();
        while (cursor.hasNext()) {
            messages.add(cursor.next().get("msg").toString());
        }
        return messages;
    }
    public boolean checkIfCollectionExists(String colectionName) {
        boolean exists = false;
        Set<String> collections = db.getCollectionNames();
       
        if(collections.contains(colectionName))
        {
            
            exists=true;
        }
        return exists;
    }

    void putInDb(String myName, String message) {
        
        BasicDBObject document = new BasicDBObject();
        document.put("name", myName);
        document.put("msg", message);
        PrivateMessages.insert(document);
        
    }
}
