// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.validation;

import cz.cvut.fit.mi_mpr_dip.admission.dao.AdmissionDao;

privileged aspect AdmissionCodeValidator_Roo_JavaBean {
    
    public AdmissionDao AdmissionCodeValidator.getAdmissionDao() {
        return this.admissionDao;
    }
    
    public void AdmissionCodeValidator.setAdmissionDao(AdmissionDao admissionDao) {
        this.admissionDao = admissionDao;
    }
    
}
