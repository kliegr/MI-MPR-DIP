// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import java.util.List;

privileged aspect Admissions_Roo_JavaBean {
    
    public Long Admissions.getCount() {
        return this.count;
    }
    
    public void Admissions.setCount(Long count) {
        this.count = count;
    }
    
    public Long Admissions.getTotalCount() {
        return this.totalCount;
    }
    
    public void Admissions.setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }
    
    public List<Admission> Admissions.getAdmissions() {
        return this.admissions;
    }
    
    public void Admissions.setAdmissions(List<Admission> admissions) {
        this.admissions = admissions;
    }
    
}
