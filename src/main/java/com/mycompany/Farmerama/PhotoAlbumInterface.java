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
public interface PhotoAlbumInterface {
   
    public void putInDb(String s,String user); 
    
  public ArrayList<String> getPhoto(String userName);
    
}
