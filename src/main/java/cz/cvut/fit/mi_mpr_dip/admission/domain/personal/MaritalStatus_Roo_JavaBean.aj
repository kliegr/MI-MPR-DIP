// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.personal;

import java.util.Set;

privileged aspect MaritalStatus_Roo_JavaBean {
    
    public int MaritalStatus.getVersion() {
        return this.version;
    }
    
    public void MaritalStatus.setVersion(int version) {
        this.version = version;
    }
    
    public Long MaritalStatus.getMaritalStatusId() {
        return this.maritalStatusId;
    }
    
    public void MaritalStatus.setMaritalStatusId(Long maritalStatusId) {
        this.maritalStatusId = maritalStatusId;
    }
    
    public String MaritalStatus.getName() {
        return this.name;
    }
    
    public void MaritalStatus.setName(String name) {
        this.name = name;
    }
    
    public Set<Person> MaritalStatus.getPersons() {
        return this.persons;
    }
    
    public void MaritalStatus.setPersons(Set<Person> persons) {
        this.persons = persons;
    }
    
}
