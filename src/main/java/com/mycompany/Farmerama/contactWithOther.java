/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;


/**
 *
 * @author MICHALIS
 */
public class contactWithOther {
    DB db;
    DBCollection PrivateMessages;
    
    
    public contactWithOther(String thisname, String othername) {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("PrivateMessages");
        PrivateMessages = db.getCollection(thisname+"with"+othername);
        
    }   
    
}
