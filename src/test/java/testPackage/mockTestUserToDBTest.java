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


public class mockTestUserToDBTest {
    
    public mockTestUserToDBTest() {
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
     * Test of checkUser method, of class mockTestUserToDB.
     */
    @Test
    public void testCheckUser() {
        System.out.println("checkUser");
        String user = "a";
        String pass = "a";
        mockTestUserToDB instance = new mockTestUserToDB();
        boolean expResult = true;
        boolean result = instance.checkUser(user, pass);
        assertEquals(expResult, result);

    }
    
    @Test
    public void testCheckUser1() {
        System.out.println("checkUser");
        String user = "a";
        String pass = "a";
        mockTestUserToDB instance = new mockTestUserToDB();
        boolean expResult = true;
        boolean result = instance.checkUser1(user, pass);
        assertEquals(expResult, result);

    }
    
    @Test
    public void testCheckUser2() {
        System.out.println("checkUser");
        String user = "a";
        String pass = "a";
        mockTestUserToDB instance = new mockTestUserToDB();
        boolean expResult = true;
        boolean result = instance.checkUser2(user, pass);
        assertEquals(expResult, result);

    }
    
    @Test
    public void testCheckUser3() {
        System.out.println("checkUser");
        String user = "a";
        String pass = "a";
        mockTestUserToDB instance = new mockTestUserToDB();
        boolean expResult = true;
        boolean result = instance.checkUser3(user, pass);
        assertEquals(expResult, result);

    }
    
    @Test
    public void testCheckUser4() {
        System.out.println("checkUser");
        String user = "a";
        String pass = "a";
        mockTestUserToDB instance = new mockTestUserToDB();
        boolean expResult = true;
        boolean result = instance.checkUser3(user, pass);
        assertEquals(expResult, result);

    }
    
}
