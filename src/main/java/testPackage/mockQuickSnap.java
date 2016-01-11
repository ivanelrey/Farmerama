/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testPackage;

/**
 *
 * @author Tolis MacNamli
 */
public class mockQuickSnap {
    
    public class quickSnap {
    
    public String image ;
    
    public quickSnap() {
        
    }
    
    public void getImage(String image1){
        
        this.image = image1;
        
    }
    
    public String imageOut(){
        
        return image;
        
    }

    }
}
