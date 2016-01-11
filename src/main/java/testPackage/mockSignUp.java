/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testPackage;

import com.mycompany.Farmerama.getAllAccounts;
import java.util.ArrayList;

/**
 *
 * @author Tolis MacNamli
 */
public class mockSignUp {
    
    public boolean validateInput(String un, String pw)
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
    
     public boolean validateInput1(String un, String pw)
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
     
      public boolean validateInput2(String un, String pw)
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
    
      
       public boolean validateInput3(String un, String pw)
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
    
     public boolean validateInput4(String un, String pw)
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
     
      public boolean validateInput5(String un, String pw)
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
    
    
     public boolean validExistence1(String un)
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
     
      public boolean validateInput6(String un, String pw)
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
    
      public boolean validateInput7(String un, String pw)
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
      
      public boolean validateInput8(String un, String pw)
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
      
      public boolean validateInput9(String un, String pw)
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
      
      public boolean validateInput10(String un, String pw)
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
 
      public boolean validateInput11(String un, String pw)
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
      
}
