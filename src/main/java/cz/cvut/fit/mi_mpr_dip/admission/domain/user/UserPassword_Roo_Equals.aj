// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect UserPassword_Roo_Equals {
    
    public boolean UserPassword.equals(Object obj) {
        if (!(obj instanceof UserPassword)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        UserPassword rhs = (UserPassword) obj;
        return new EqualsBuilder().append(hash, rhs.hash).append(salt, rhs.salt).isEquals();
    }
    
    public int UserPassword.hashCode() {
        return new HashCodeBuilder().append(hash).append(salt).toHashCode();
    }
    
}
