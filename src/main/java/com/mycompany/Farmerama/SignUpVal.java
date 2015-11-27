/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import com.mongodb.*;

/**
 *
 * @author ntinos
 */
public class SignUpVal implements SignUpInterface
{
    private String usrName;
    private String pWord;
    private String pWord1;
    private String eMail;
    DBCollection account;
    DB db;
    
    public SignUpVal()
    {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("accounts");
        account = db.getCollection("account");
    }
    
    public void setUsrName(String usrName)
    {
        this.usrName = usrName;
    }
    public void setPWord(String pWord)
    {
        this.pWord = pWord;
    }
    public void setPWord1(String pWord1)
    {
        this.pWord1 = pWord1;
    }
    public void setEMail(String eMail)
    {
        this.eMail = eMail;
    }
    
    public String getUsrName()
    {
        return usrName;
    }
    public String getPWord()
    {
        return pWord;
    }
    public String getPWord1()
    {
        return pWord1;
    }
    public String getEMail()
    {
        return eMail;
    }

    @Override
    public void getDoc() 
    {
        BasicDBObject query = new BasicDBObject();
        query.put("","");
    }

    @Override
    public void setDoc(String un, String pw, String email) 
    {
        BasicDBObject obj = new BasicDBObject();
        obj.put("user", un);
        obj.put("password", pw);
        obj.put("email", email);
        account.insert(obj);
    }
}
