// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect EvaluationType_Roo_Equals {
    
    public boolean EvaluationType.equals(Object obj) {
        if (!(obj instanceof EvaluationType)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        EvaluationType rhs = (EvaluationType) obj;
        return new EqualsBuilder().append(name, rhs.name).isEquals();
    }
    
    public int EvaluationType.hashCode() {
        return new HashCodeBuilder().append(name).toHashCode();
    }
    
}
