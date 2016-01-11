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
 * @author Gomesito
 */
public class locatonsMockTest {
    
    public locatonsMockTest() {
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

    /**
     * Test of getLoc method, of class locatonsMock.
     */
    @Test
    public void testGetLocBigLat() {
        System.out.println("getLoc");
        double lat = 95;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
    public void testGetLocSmallLat() {
        System.out.println("getLoc");
        double lat = 15;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
    public void testGetLocZeroLat() {
        System.out.println("getLoc");
        double lat = 0;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    @Test
    public void testGetLocNegLat() {
        System.out.println("getLoc");
        double lat = -15;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
    public void testGetLocZeroLatLng() {
        System.out.println("getLoc");
        double lat = 0;
        double lng = 0;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    @Test
    public void testGetLocBigNegLat() {
        System.out.println("getLoc");
        double lat = -155;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
     @Test
    public void testGetLocBigNegLng() {
        System.out.println("getLoc");
        double lat = -15;
        double lng = -280;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
    public void testGetLocSmallLat1() {
        System.out.println("getLoc");
        double lat = 25;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
    public void testGetLocZeroLat1() {
        System.out.println("getLoc");
        double lat = 0;
        double lng = 180;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    @Test
    public void testGetLocNegLat1() {
        System.out.println("getLoc");
        double lat = -151;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
    public void testGetLocZeroLat2() {
        System.out.println("getLoc");
        double lat = 0;
        double lng = 2;
        locatonsMock instance = new locatonsMock();
        boolean expResult = true;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    @Test
    public void testGetLocBigNegLa2t() {
        System.out.println("getLoc");
        double lat = -175;
        double lng = 80;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
     @Test
    public void testGetLocBigNegLng2() {
        System.out.println("getLoc");
        double lat = -15;
        double lng = -580;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    @Test
      public void testGetLocBigLngBigLat2() {
        System.out.println("getLoc");
        double lat = 155;
        double lng = 580;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
      @Test
        public void testGetLocBigNegLngBigLat() {
        System.out.println("getLoc");
        double lat = -150;
        double lng = -580;
        locatonsMock instance = new locatonsMock();
        boolean expResult = false;
        boolean result = instance.getLoc(lat, lng);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
}
