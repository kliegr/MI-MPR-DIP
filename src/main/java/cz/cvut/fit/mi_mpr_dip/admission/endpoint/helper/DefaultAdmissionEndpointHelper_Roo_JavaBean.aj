// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper;

import cz.cvut.fit.mi_mpr_dip.admission.dao.AdmissionDao;
import cz.cvut.fit.mi_mpr_dip.admission.endpoint.helper.DefaultAdmissionEndpointHelper;

privileged aspect DefaultAdmissionEndpointHelper_Roo_JavaBean {
    
    public AdmissionDao DefaultAdmissionEndpointHelper.getAdmissionDao() {
        return this.admissionDao;
    }
    
    public void DefaultAdmissionEndpointHelper.setAdmissionDao(AdmissionDao admissionDao) {
        this.admissionDao = admissionDao;
    }
    
}
