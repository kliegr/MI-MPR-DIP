// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import java.util.Date;

privileged aspect ReferenceNumber_Roo_JavaBean {
    
    public int ReferenceNumber.getVersion() {
        return this.version;
    }
    
    public void ReferenceNumber.setVersion(int version) {
        this.version = version;
    }
    
    public Long ReferenceNumber.getReferenceNumberId() {
        return this.referenceNumberId;
    }
    
    public void ReferenceNumber.setReferenceNumberId(Long referenceNumberId) {
        this.referenceNumberId = referenceNumberId;
    }
    
    public String ReferenceNumber.getCode() {
        return this.code;
    }
    
    public void ReferenceNumber.setCode(String code) {
        this.code = code;
    }
    
    public Date ReferenceNumber.getExecuted() {
        return this.executed;
    }
    
    public void ReferenceNumber.setExecuted(Date executed) {
        this.executed = executed;
    }
    
    public ReferenceNumberType ReferenceNumber.getReferenceNumberType() {
        return this.referenceNumberType;
    }
    
    public void ReferenceNumber.setReferenceNumberType(ReferenceNumberType referenceNumberType) {
        this.referenceNumberType = referenceNumberType;
    }
    
}
