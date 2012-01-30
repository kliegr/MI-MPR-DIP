// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Degree;
import cz.cvut.fit.mi_mpr_dip.admission.domain.study.DegreeDataOnDemand;
import cz.cvut.fit.mi_mpr_dip.admission.domain.study.DegreeIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DegreeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DegreeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DegreeIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DegreeIntegrationTest: @Transactional;
    
    @Autowired
    private DegreeDataOnDemand DegreeIntegrationTest.dod;
    
    @Test
    public void DegreeIntegrationTest.testCountDegrees() {
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", dod.getRandomDegree());
        long count = Degree.countDegrees();
        Assert.assertTrue("Counter for 'Degree' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DegreeIntegrationTest.testFindDegree() {
        Degree obj = dod.getRandomDegree();
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", obj);
        Long id = obj.getDegreeId();
        Assert.assertNotNull("Data on demand for 'Degree' failed to provide an identifier", id);
        obj = Degree.findDegree(id);
        Assert.assertNotNull("Find method for 'Degree' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Degree' returned the incorrect identifier", id, obj.getDegreeId());
    }
    
    @Test
    public void DegreeIntegrationTest.testFindAllDegrees() {
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", dod.getRandomDegree());
        long count = Degree.countDegrees();
        Assert.assertTrue("Too expensive to perform a find all test for 'Degree', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Degree> result = Degree.findAllDegrees();
        Assert.assertNotNull("Find all method for 'Degree' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Degree' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DegreeIntegrationTest.testFindDegreeEntries() {
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", dod.getRandomDegree());
        long count = Degree.countDegrees();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Degree> result = Degree.findDegreeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Degree' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Degree' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DegreeIntegrationTest.testFlush() {
        Degree obj = dod.getRandomDegree();
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", obj);
        Long id = obj.getDegreeId();
        Assert.assertNotNull("Data on demand for 'Degree' failed to provide an identifier", id);
        obj = Degree.findDegree(id);
        Assert.assertNotNull("Find method for 'Degree' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDegree(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Degree' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DegreeIntegrationTest.testMergeUpdate() {
        Degree obj = dod.getRandomDegree();
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", obj);
        Long id = obj.getDegreeId();
        Assert.assertNotNull("Data on demand for 'Degree' failed to provide an identifier", id);
        obj = Degree.findDegree(id);
        boolean modified =  dod.modifyDegree(obj);
        Integer currentVersion = obj.getVersion();
        Degree merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getDegreeId(), id);
        Assert.assertTrue("Version for 'Degree' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DegreeIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", dod.getRandomDegree());
        Degree obj = dod.getNewTransientDegree(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Degree' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Degree' identifier to be null", obj.getDegreeId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Degree' identifier to no longer be null", obj.getDegreeId());
    }
    
    @Test
    public void DegreeIntegrationTest.testRemove() {
        Degree obj = dod.getRandomDegree();
        Assert.assertNotNull("Data on demand for 'Degree' failed to initialize correctly", obj);
        Long id = obj.getDegreeId();
        Assert.assertNotNull("Data on demand for 'Degree' failed to provide an identifier", id);
        obj = Degree.findDegree(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Degree' with identifier '" + id + "'", Degree.findDegree(id));
    }
    
}
