// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.collection;

import cz.cvut.fit.mi_mpr_dip.admission.domain.collection.Programs;
import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Programme;
import java.util.Set;

privileged aspect Programs_Roo_JavaBean {
    
    public Set<Programme> Programs.getPrograms() {
        return this.programs;
    }
    
    public void Programs.setPrograms(Set<Programme> programs) {
        this.programs = programs;
    }
    
}
