// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import cz.cvut.fit.mi_mpr_dip.admission.domain.user.UserPermission;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect UserPermission_Roo_Equals {
    
    public boolean UserPermission.equals(Object obj) {
        if (!(obj instanceof UserPermission)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        UserPermission rhs = (UserPermission) obj;
        return new EqualsBuilder().append(name, rhs.name).isEquals();
    }
    
    public int UserPermission.hashCode() {
        return new HashCodeBuilder().append(name).toHashCode();
    }
    
}
