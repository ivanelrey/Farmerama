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

/**
 *
 * @author Gomesito
 */
public class PhotoAlbum implements PhotoAlbumInterface {

    DB db;
    DBCollection photo;

    public PhotoAlbum(String username) {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("album");
        photo = db.getCollection(username);
        //initComponents();
    }

    
    @Override
    public void putInDb(String s, String user) {

        BasicDBObject document = new BasicDBObject();
        document.put("photoURL", s);
        document.put("userName", user);
        photo.insert(document);

    }
    
    @Override
    public String getUserName() {
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("userName", "tolis");
        DBCursor cursor = photo.find(searchQuery);     
        String uri = cursor.next().get("photoURL").toString();
        return uri;
    }

}
