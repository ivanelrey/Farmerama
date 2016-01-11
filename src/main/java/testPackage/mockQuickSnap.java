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

    

    double getCnt(double a, double b) {
        double cnt;
        cnt = a + b;
        return cnt;
    }
    
    double getCnt1(double a, double b) {
        double cnt;
        cnt = a + b;
        return cnt;
    }
    
    double getCnt2(double a, double b) {
        double cnt;
        cnt = a + b;
        return cnt;
    }
    
    double getCnt3(double a, double b) {
        double cnt;
        cnt = a + b;
        return cnt;
    }
    
    double getCnt4(double a, double b) {
        double cnt;
        cnt = a + b;
        return cnt;
    }
    
    double getCnt5(double a, double b) {
        double cnt;
        cnt = a + b;
        return cnt;
    }
    
    public class quickSnap {
    
    public String image ;
    
    public quickSnap() {
        
    }
    
    public void getImage(String image1){
        
        this.image = image1;
        
    }
    
    public String imageOut(){
        
        boolean exists = true;
        String error = "error";
        
        if(exists){
        
        return image;
        }else{
            return error;
        }
        
    }
    
    }
}
