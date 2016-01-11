/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testPackage;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Tolis MacNamli
 */
public class mockQuickSnapTest {
    
    public mockQuickSnapTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    
    @Test
    public void testgetCnt() {
        System.out.println("getCnt");
        double a = 1;
        double b = 2;
        mockQuickSnap instance = new mockQuickSnap();
        double expResult = 3;
        double result = instance.getCnt(a, b);
        assertEquals(expResult, result,0.0001);   
    }
    
    @Test
    public void testgetCnt1() {
        System.out.println("getCnt");
        double a = 23;
        double b = 23;
        mockQuickSnap instance = new mockQuickSnap();
        double expResult = 46;
        double result = instance.getCnt1(a, b);
        assertEquals(expResult, result,0.0001);   
    }
    
    @Test
    public void testgetCnt2() {
        System.out.println("getCnt");
        double a = 4;
        double b = 4;
        mockQuickSnap instance = new mockQuickSnap();
        double expResult = 8;
        double result = instance.getCnt2(a, b);
        assertEquals(expResult, result,0.0001);   
    }
    
    @Test
    public void testgetCnt3() {
        System.out.println("getCnt");
        double a = -1;
        double b = -2;
        mockQuickSnap instance = new mockQuickSnap();
        double expResult = -3;
        double result = instance.getCnt3(a, b);
        assertEquals(expResult, result,0.0001);   
    }
    
    @Test
    public void testgetCnt4() {
        System.out.println("getCnt");
        double a = 1;
        double b = 2;
        mockQuickSnap instance = new mockQuickSnap();
        double expResult = 3;
        double result = instance.getCnt4(a, b);
        assertEquals(expResult, result,0.0001);   
    }
    
    @Test
    public void testgetCnt5() {
        System.out.println("getCnt");
        double a = 1;
        double b = 2;
        mockQuickSnap instance = new mockQuickSnap();
        double expResult = 3;
        double result = instance.getCnt4(a, b);
        assertEquals(expResult, result,0.0001);   
    }
    
}
