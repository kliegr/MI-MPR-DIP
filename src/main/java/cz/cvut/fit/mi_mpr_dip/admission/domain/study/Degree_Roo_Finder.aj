// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Degree_Roo_Finder {
    
    public static TypedQuery<Degree> Degree.findDegreesByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = Degree.entityManager();
        TypedQuery<Degree> q = em.createQuery("SELECT o FROM Degree AS o WHERE o.name = :name", Degree.class);
        q.setParameter("name", name);
        return q;
    }
    
}
