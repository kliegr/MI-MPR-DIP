// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.personal;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect DocumentType_Roo_Finder {
    
    public static TypedQuery<DocumentType> DocumentType.findDocumentTypesByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = DocumentType.entityManager();
        TypedQuery<DocumentType> q = em.createQuery("SELECT o FROM DocumentType AS o WHERE o.name = :name", DocumentType.class);
        q.setParameter("name", name);
        return q;
    }
    
}
