// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.address;

import java.util.Set;

privileged aspect AddressType_Roo_JavaBean {
    
    public int AddressType.getVersion() {
        return this.version;
    }
    
    public void AddressType.setVersion(int version) {
        this.version = version;
    }
    
    public Long AddressType.getAddressTypeId() {
        return this.addressTypeId;
    }
    
    public void AddressType.setAddressTypeId(Long addressTypeId) {
        this.addressTypeId = addressTypeId;
    }
    
    public String AddressType.getName() {
        return this.name;
    }
    
    public void AddressType.setName(String name) {
        this.name = name;
    }
    
    public Set<Address> AddressType.getAddresses() {
        return this.addresses;
    }
    
    public void AddressType.setAddresses(Set<Address> addresses) {
        this.addresses = addresses;
    }
    
}
