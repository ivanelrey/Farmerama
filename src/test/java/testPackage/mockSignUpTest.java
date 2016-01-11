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
public class mockSignUpTest {
    
    public mockSignUpTest() {
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
     * Test of validateInput method, of class mockSignUp.
     */
    @Test
    public void testValidateInput() {
        System.out.println("validateInput");
        String un = "tolis001";
        String pw = "patates22A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput1 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput1() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput1(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput2 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput2() {
        System.out.println("validateInput");
        String un = "gereerati";
        String pw = "paefrfers00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput2(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput3 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput3() {
        System.out.println("validateInput");
        String un = "erferfti";
        String pw = "paerf00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput3(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput4 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput4() {
        System.out.println("validateInput");
        String un = "erffffati";
        String pw = "perf0A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput2(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput5 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput5() {
        System.out.println("validateInput");
        String un = "geerfrarati";
        String pw = "paterf2A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput2(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput6 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput6() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput6(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput7 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput7() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput7(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput8 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput8() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput8(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
    /**
     * Test of validateInput9 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput9() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput9(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
     /**
     * Test of validateInput10 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput10() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput9(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }
    
     /**
     * Test of validateInput11 method, of class mockSignUp.
     */
    @Test
    public void testValidateInput11() {
        System.out.println("validateInput");
        String un = "geiaxarati";
        String pw = "patates00A";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = instance.validateInput9(un, pw);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of validExistence method, of class mockSignUp.
     */
    @Test
    public void testValidExistence() {
        System.out.println("validExistence");
        String un = "tolis001";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = true;
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    /**
     * Test of validExistence1 method, of class mockSignUp.
     */
    @Test
    public void testValidExistence1() {
        System.out.println("validExistence");
        String un = "tolis001";
        mockSignUp instance = new mockSignUp();
        boolean expResult = true;
        boolean result = true;
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
