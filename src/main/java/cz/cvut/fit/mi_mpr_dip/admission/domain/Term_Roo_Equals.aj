// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Term;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Term_Roo_Equals {
    
    public boolean Term.equals(Object obj) {
        if (!(obj instanceof Term)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Term rhs = (Term) obj;
        return new EqualsBuilder().append(appologyTo, rhs.appologyTo).append(capacity, rhs.capacity).append(registerFrom, rhs.registerFrom).append(registerTo, rhs.registerTo).append(room, rhs.room).append(termType, rhs.termType).isEquals();
    }
    
    public int Term.hashCode() {
        return new HashCodeBuilder().append(appologyTo).append(capacity).append(registerFrom).append(registerTo).append(room).append(termType).toHashCode();
    }
    
}
