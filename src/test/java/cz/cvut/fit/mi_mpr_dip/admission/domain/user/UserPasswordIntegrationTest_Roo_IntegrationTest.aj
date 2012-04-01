// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserPassword;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserPasswordDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserPasswordIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserPasswordIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UserPasswordIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UserPasswordIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: UserPasswordIntegrationTest: @Transactional;
    
    @Autowired
    private UserPasswordDataOnDemand UserPasswordIntegrationTest.dod;
    
    @Test
    public void UserPasswordIntegrationTest.testCountUserPasswords() {
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", dod.getRandomUserPassword());
        long count = UserPassword.countUserPasswords();
        Assert.assertTrue("Counter for 'UserPassword' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UserPasswordIntegrationTest.testFindUserPassword() {
        UserPassword obj = dod.getRandomUserPassword();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", obj);
        Long id = obj.getUserPasswordId();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to provide an identifier", id);
        obj = UserPassword.findUserPassword(id);
        Assert.assertNotNull("Find method for 'UserPassword' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'UserPassword' returned the incorrect identifier", id, obj.getUserPasswordId());
    }
    
    @Test
    public void UserPasswordIntegrationTest.testFindAllUserPasswords() {
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", dod.getRandomUserPassword());
        long count = UserPassword.countUserPasswords();
        Assert.assertTrue("Too expensive to perform a find all test for 'UserPassword', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<UserPassword> result = UserPassword.findAllUserPasswords();
        Assert.assertNotNull("Find all method for 'UserPassword' illegally returned null", result);
        Assert.assertTrue("Find all method for 'UserPassword' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UserPasswordIntegrationTest.testFindUserPasswordEntries() {
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", dod.getRandomUserPassword());
        long count = UserPassword.countUserPasswords();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<UserPassword> result = UserPassword.findUserPasswordEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'UserPassword' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'UserPassword' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UserPasswordIntegrationTest.testFlush() {
        UserPassword obj = dod.getRandomUserPassword();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", obj);
        Long id = obj.getUserPasswordId();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to provide an identifier", id);
        obj = UserPassword.findUserPassword(id);
        Assert.assertNotNull("Find method for 'UserPassword' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUserPassword(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'UserPassword' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserPasswordIntegrationTest.testMergeUpdate() {
        UserPassword obj = dod.getRandomUserPassword();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", obj);
        Long id = obj.getUserPasswordId();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to provide an identifier", id);
        obj = UserPassword.findUserPassword(id);
        boolean modified =  dod.modifyUserPassword(obj);
        Integer currentVersion = obj.getVersion();
        UserPassword merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getUserPasswordId(), id);
        Assert.assertTrue("Version for 'UserPassword' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserPasswordIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", dod.getRandomUserPassword());
        UserPassword obj = dod.getNewTransientUserPassword(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'UserPassword' identifier to be null", obj.getUserPasswordId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'UserPassword' identifier to no longer be null", obj.getUserPasswordId());
    }
    
    @Test
    public void UserPasswordIntegrationTest.testRemove() {
        UserPassword obj = dod.getRandomUserPassword();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to initialize correctly", obj);
        Long id = obj.getUserPasswordId();
        Assert.assertNotNull("Data on demand for 'UserPassword' failed to provide an identifier", id);
        obj = UserPassword.findUserPassword(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'UserPassword' with identifier '" + id + "'", UserPassword.findUserPassword(id));
    }
    
}
