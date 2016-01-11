/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testPackage;

/**
 *
 * @author Gomesito
 */
public class locatonsMock {
    
    public boolean getLoc(double latitude,double longitute){

        
        if(latitude > 90 || latitude < -90 || longitute > 180 || longitute < -180)
        {
            return false;
        }
        else
        {
              return true;
        }
}
    
    
}
