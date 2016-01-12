package com.mycompany.Farmerama;


import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.mycompany.Farmerama.PhotoAlbum;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Gomesito
 */
public class changeProfileImage {
    DBCollection account;
    DB db;
    
     public changeProfileImage()
    {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("accounts");
        account = db.getCollection("account");
    }
     public void changePhoto(String name, int x){
         PhotoAlbum ph = new PhotoAlbum(name);
         String photo = ph.getPhotoForProfile(name, x);
         account.update(new BasicDBObject("user", name),
                  new BasicDBObject("$set", new BasicDBObject("profileImage", photo)));      
     }
    
}
