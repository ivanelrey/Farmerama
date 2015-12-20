/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import com.mongodb.*;
import java.util.ArrayList;

/**
 *
 * @author ntinos
 */
public class CreateOfferPage implements COfferPageInterface
{
    DB dbS, dbB;
    DBCollection offerS, offerB;
    ArrayList<ArrayList<String>> offerSellList = new ArrayList<ArrayList<String>>();
    ArrayList<ArrayList<String>> offerBuyList = new ArrayList<ArrayList<String>>();
    ArrayList<String> offerList = new ArrayList<String>();
    ArrayList<String> sectionOfferList = new ArrayList<String>();
    ArrayList<ArrayList<String>> offerAllList = new ArrayList<ArrayList<String>>();
    
    public CreateOfferPage()
    {
        Mongo mongo = new Mongo("localhost", 27017);
        dbS = mongo.getDB("Sell");
        offerS = dbS.getCollection("offer");
        dbB = mongo.getDB("Buy");
        offerB = dbB.getCollection("offer");
    }
    
    public ArrayList<ArrayList<String>> getAllSellOffers()
    {
        DBCursor cursor = offerS.find();
        while(cursor.hasNext())
        {
            offerList.add(cursor.next().get("title").toString());
            offerList.add(cursor.next().get("descr").toString());
            offerSellList.add(offerList);
        }
        return offerSellList;
    }
    
    public ArrayList<ArrayList<String>> getAllBuyOffers()
    {
        DBCursor cursor = offerB.find();
        while(cursor.hasNext())
        {
            offerList.add(cursor.next().get("title").toString());
            offerList.add(cursor.next().get("descr").toString());
            offerBuyList.add(offerList);
        }
        return offerBuyList;
    }
    
    public ArrayList<ArrayList<String>> getAllOffers()
    {
        offerAllList.addAll(getAllSellOffers());
        offerAllList.addAll(getAllSellOffers());
        return offerAllList;
    }
    
    public boolean validateExistence(String title)
    {
        return true;
    }
    
    @Override
    public void setSellDoc(String title, String descr, String action, String section) 
    {
           BasicDBObject obj = new BasicDBObject();
           obj.put("title", title);
           obj.put("descr", descr);
           obj.put("action", action);
           obj.put("section", section);
           offerS.insert(obj);
    }
    
    @Override
    public void setBuyDoc(String title, String descr, String action, String section)
    {
        BasicDBObject obj = new BasicDBObject();
        obj.put("title", title);
        obj.put("descr", descr);
        obj.put("action", action);
        obj.put("section", section);
        offerB.insert(obj);
    }
}
