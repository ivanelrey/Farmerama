/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import com.mongodb.*;
import static com.mongodb.client.model.Filters.eq;
import java.util.ArrayList;
import org.bson.Document;

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
    ArrayList<String> titleBuyOffers = new ArrayList<String>();
    ArrayList<String> titleSellOffers = new ArrayList<String>();
    ArrayList<String> authorBuyOffers = new ArrayList<String>();
    ArrayList<String> authorSellOffers = new ArrayList<String>();
    ArrayList<String> descrBuyOffers = new ArrayList<String>();
    ArrayList<String> descrSellOffers = new ArrayList<String>();
    
    public CreateOfferPage()
    {
        Mongo mongo = new Mongo("localhost", 27017);
        dbS = mongo.getDB("Sell");
        offerS = dbS.getCollection("offer");
        dbB = mongo.getDB("Buy");
        offerB = dbB.getCollection("offer");
    }
    
    public ArrayList<String> getDescrBuyOffers()
    {
        DBCursor cursor = offerB.find();
        while(cursor.hasNext())
        {
            descrBuyOffers.add(cursor.next().get("descr").toString());
        }
        
        return descrBuyOffers;
    }
    
    public ArrayList<String> getDescrSellOffers()
    {
        DBCursor cursor = offerS.find();
        while(cursor.hasNext())
        {
            descrSellOffers.add(cursor.next().get("descr").toString());
        }
        
        return descrSellOffers;
    }
    
    public ArrayList<String> getTitleBuyOffers()
    {
        DBCursor cursor = offerB.find();
        while(cursor.hasNext())
        {
            titleBuyOffers.add(cursor.next().get("title").toString());
        }
        
        return titleBuyOffers;
    }
    
    public ArrayList<String> getTitleSellOffers()
    {
        DBCursor cursor = offerS.find();
        while(cursor.hasNext())
        {
            titleSellOffers.add(cursor.next().get("title").toString());
        }
        
        return titleSellOffers;
    }
    
    public ArrayList<String> getAuthorBuyOffers()
    {
        DBCursor cursor = offerB.find();
        while(cursor.hasNext())
        {
            authorBuyOffers.add(cursor.next().get("author").toString());
        }
        
        return authorBuyOffers;
    }
    
    public ArrayList<String> getAuthorSellOffers()
    {
        DBCursor cursor = offerS.find();
        while(cursor.hasNext())
        {
            authorSellOffers.add(cursor.next().get("author").toString());
        }
        
        return authorSellOffers;
    }
    
    public boolean validateExistence(String title)
    {
        return true;
    }
    
    @Override
    public void setSellDoc(String author, String title, String descr, String action, String section) 
    {
           BasicDBObject obj = new BasicDBObject();
           obj.put("author", author);
           obj.put("title", title);
           obj.put("descr", descr);
           obj.put("action", action);
           obj.put("section", section);
           offerS.insert(obj);
    }
    
    @Override
    public void setBuyDoc(String author, String title, String descr, String action, String section)
    {
        BasicDBObject obj = new BasicDBObject();
        obj.put("author", author);
        obj.put("title", title);
        obj.put("descr", descr);
        obj.put("action", action);
        obj.put("section", section);
        offerB.insert(obj);
    }
}
