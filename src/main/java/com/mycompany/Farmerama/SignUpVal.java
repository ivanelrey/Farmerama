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
public class SignUpVal implements SignUpInterface
{
    private String usrName;
    private String pWord;
    private String pWord1;
    private String eMail;
    private String sex;
    private String section;
    private String num;
    private String message="Invalid Input.";
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
     public void setNumber(String num)
    {
        this.num = num;
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
     public String getNumber()
    {
        return num;
    }
    
    public boolean validateInput(String un, String pw, String pw1,
            String email, String sex, String section)
    {
        boolean isAtLeast   = pw.length() < 6 || pw.length() > 14;
        boolean hasRestr   = !pw.matches("[A-Za-z0-9]*");
        if(un.substring(0, 1).matches("[0-9]"))
        {
            return false;
        }
        if(un.length() < 6 || un.length() > 14)
        {
            return false;
        }
        if(isAtLeast || hasRestr)
        {
            return false;
        }
        return true;
    }
    
    public boolean validExistence(String un)
    {
        getAllAccounts member = new getAllAccounts();
        ArrayList <String> result;
        result = member.getSearchedAccounts(un);
        System.out.println(result);
        if(result.isEmpty())
        {
            return true;
        }
        else
        {
            return false;
        }   
    }

    @Override
    public void getDoc() 
    {
        
    }

    @Override
    public void setDoc(String un, String pw, String email, String sex, String section, String num) 
    {
        BasicDBObject obj = new BasicDBObject();
        obj.put("user", un);
        obj.put("password", pw);
        obj.put("email", email);
        obj.put("sex", sex);
        obj.put("section", section);
        obj.put("number",num);
        account.insert(obj);
    }
}
