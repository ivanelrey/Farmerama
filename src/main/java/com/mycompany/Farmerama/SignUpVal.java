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
    private String sex;
    private String section;
    DBCollection account;
    DB db;
    
    public SignUpVal()
    {
        Mongo mongo = new Mongo("localhost", 27017);
        db = mongo.getDB("accounts");
        account = db.getCollection("account");
    }
    
    public void setSection(String section)
    {
        this.section = section;
    }
    public void setSex(String sex)
    {
        this.sex = sex;
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
    
    public String getSex()
    {
        return sex;
    }
    public String getSection()
    {
        return section;
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
    public void setDoc(String un, String pw, String email, String sex, String section) 
    {
        BasicDBObject obj = new BasicDBObject();
        obj.put("user", un);
        obj.put("password", pw);
        obj.put("email", email);
        obj.put("sex", sex);
        obj.put("section", section);
        
        account.insert(obj);
    }
}
