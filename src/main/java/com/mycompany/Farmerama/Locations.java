/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Farmerama;

import java.util.ArrayList;

/**
 *
 * @author Tolis MacNamli
 */
public class Locations {
    
    public static ArrayList<String> Lat = new ArrayList<String>();
    public static ArrayList<String> Lng = new ArrayList<String>();
    public static ArrayList<String> userName = new ArrayList<String>();
    
    public Locations(){
    }
    
    public Locations(String username,String userLat, String userLng){
        
        Lat.add(userLat);
        Lng.add(userLng);
        userName.add(username);
       
    }
    
    
    
    
    
    
    
}
