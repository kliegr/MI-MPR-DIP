// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.AdmissionResult;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AdmissionResultDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AdmissionResultIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AdmissionResultIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AdmissionResultIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AdmissionResultIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AdmissionResultIntegrationTest: @Transactional;
    
    @Autowired
    private AdmissionResultDataOnDemand AdmissionResultIntegrationTest.dod;
    
    @Test
    public void AdmissionResultIntegrationTest.testCountAdmissionResults() {
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", dod.getRandomAdmissionResult());
        long count = AdmissionResult.countAdmissionResults();
        Assert.assertTrue("Counter for 'AdmissionResult' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testFindAdmissionResult() {
        AdmissionResult obj = dod.getRandomAdmissionResult();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", obj);
        Long id = obj.getAdmissionResultId();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to provide an identifier", id);
        obj = AdmissionResult.findAdmissionResult(id);
        Assert.assertNotNull("Find method for 'AdmissionResult' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'AdmissionResult' returned the incorrect identifier", id, obj.getAdmissionResultId());
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testFindAllAdmissionResults() {
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", dod.getRandomAdmissionResult());
        long count = AdmissionResult.countAdmissionResults();
        Assert.assertTrue("Too expensive to perform a find all test for 'AdmissionResult', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<AdmissionResult> result = AdmissionResult.findAllAdmissionResults();
        Assert.assertNotNull("Find all method for 'AdmissionResult' illegally returned null", result);
        Assert.assertTrue("Find all method for 'AdmissionResult' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testFindAdmissionResultEntries() {
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", dod.getRandomAdmissionResult());
        long count = AdmissionResult.countAdmissionResults();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<AdmissionResult> result = AdmissionResult.findAdmissionResultEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'AdmissionResult' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'AdmissionResult' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testFlush() {
        AdmissionResult obj = dod.getRandomAdmissionResult();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", obj);
        Long id = obj.getAdmissionResultId();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to provide an identifier", id);
        obj = AdmissionResult.findAdmissionResult(id);
        Assert.assertNotNull("Find method for 'AdmissionResult' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAdmissionResult(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'AdmissionResult' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testMergeUpdate() {
        AdmissionResult obj = dod.getRandomAdmissionResult();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", obj);
        Long id = obj.getAdmissionResultId();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to provide an identifier", id);
        obj = AdmissionResult.findAdmissionResult(id);
        boolean modified =  dod.modifyAdmissionResult(obj);
        Integer currentVersion = obj.getVersion();
        AdmissionResult merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getAdmissionResultId(), id);
        Assert.assertTrue("Version for 'AdmissionResult' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", dod.getRandomAdmissionResult());
        AdmissionResult obj = dod.getNewTransientAdmissionResult(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'AdmissionResult' identifier to be null", obj.getAdmissionResultId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'AdmissionResult' identifier to no longer be null", obj.getAdmissionResultId());
    }
    
    @Test
    public void AdmissionResultIntegrationTest.testRemove() {
        AdmissionResult obj = dod.getRandomAdmissionResult();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to initialize correctly", obj);
        Long id = obj.getAdmissionResultId();
        Assert.assertNotNull("Data on demand for 'AdmissionResult' failed to provide an identifier", id);
        obj = AdmissionResult.findAdmissionResult(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'AdmissionResult' with identifier '" + id + "'", AdmissionResult.findAdmissionResult(id));
    }
    
}
