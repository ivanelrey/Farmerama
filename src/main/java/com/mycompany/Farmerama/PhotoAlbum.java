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
public class PhotoAlbum implements PhotoAlbumInterface {

   DB db;
    DBCollection photo;
    public String userName;

    public PhotoAlbum(String username) {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("album");
        photo = db.getCollection(username);
        //initComponents();
        this.userName = username;
    }
    

    @Override
    public void putInDb(String s, String user) {

        BasicDBObject document = new BasicDBObject();
        document.put("photoURL", s);
        document.put("userName", user);
        photo.insert(document);

    }

    @Override
    public ArrayList<String> getPhoto(String userName) {
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("userName", userName);
        DBCursor cursor = photo.find(searchQuery);
        ArrayList<String> photos = new ArrayList<String>();
        while (cursor.hasNext()) {
            photos.add(cursor.next().get("photoURL").toString());
        }
        return photos;
    }

    public String getPhoto() {
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("userName", userName);
        DBCursor cursor = photo.find(searchQuery);
        String photos = cursor.next().get("photoURL").toString();
        while (cursor.hasNext()) {
         photos = cursor.next().get("photoURL").toString();
             return photos;
        }
        return photos;
    }
    public String getPhotoForProfile(String name,int x) {
        BasicDBObject searchQuery = new BasicDBObject();
        searchQuery.put("userName", name);
        DBCursor cursor = photo.find(searchQuery);
        String photo = null ; //cursor.next().get("photoURL").toString();
         for(int i=0; i<x+1; i++){
         photo = cursor.next().get("photoURL").toString();    
        }
        return photo;
    }
}
