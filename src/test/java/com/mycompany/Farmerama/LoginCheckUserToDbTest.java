/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.Farmerama;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import static org.junit.Assert.assertEquals;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;
import de.flapdoodle.embedmongo.MongoDBRuntime;
import de.flapdoodle.embedmongo.MongodExecutable;
import de.flapdoodle.embedmongo.MongodProcess;
import de.flapdoodle.embedmongo.config.MongodConfig;
import de.flapdoodle.embedmongo.distribution.Version;
import de.flapdoodle.embedmongo.runtime.Network;
import java.io.IOException;
/**
 *
 * @author Tolis MacNamli
 */
public class LoginCheckUserToDbTest {
    
    public LoginCheckUserToDbTest() {
   
    }   
    
    @BeforeClass
    public static void setUpClass() {
        
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() throws IOException {

    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of checkUser method, of class LoginCheckUserToDb.
     */
    @Test
    public void testCheckUser() {
        System.out.println("checkUser");
        String user = "tolios01";
        String pass = "123qweAA";
        LoginCheckUserToDb instance = new LoginCheckUserToDb();
        boolean expResult = true;
        boolean result = instance.checkUser(user, pass);
        assertEquals(expResult, result);

    }
    
}
