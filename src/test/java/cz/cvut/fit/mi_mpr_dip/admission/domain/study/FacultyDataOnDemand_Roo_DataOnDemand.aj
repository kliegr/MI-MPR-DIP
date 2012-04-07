// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Faculty;
import cz.cvut.fit.mi_mpr_dip.admission.domain.study.FacultyDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect FacultyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FacultyDataOnDemand: @Component;
    
    private Random FacultyDataOnDemand.rnd = new SecureRandom();
    
    private List<Faculty> FacultyDataOnDemand.data;
    
    public Faculty FacultyDataOnDemand.getNewTransientFaculty(int index) {
        Faculty obj = new Faculty();
        setName(obj, index);
        return obj;
    }
    
    public void FacultyDataOnDemand.setName(Faculty obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public Faculty FacultyDataOnDemand.getSpecificFaculty(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Faculty obj = data.get(index);
        Long id = obj.getFacultyId();
        return Faculty.findFaculty(id);
    }
    
    public Faculty FacultyDataOnDemand.getRandomFaculty() {
        init();
        Faculty obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getFacultyId();
        return Faculty.findFaculty(id);
    }
    
    public boolean FacultyDataOnDemand.modifyFaculty(Faculty obj) {
        return false;
    }
    
    public void FacultyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Faculty.findFacultyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Faculty' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Faculty>();
        for (int i = 0; i < 10; i++) {
            Faculty obj = getNewTransientFaculty(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
