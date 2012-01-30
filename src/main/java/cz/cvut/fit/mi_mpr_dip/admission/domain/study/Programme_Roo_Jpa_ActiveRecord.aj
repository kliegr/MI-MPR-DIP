// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Programme;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Programme_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Programme.entityManager;
    
    public static final EntityManager Programme.entityManager() {
        EntityManager em = new Programme().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Programme.countProgrammes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Programme o", Long.class).getSingleResult();
    }
    
    public static List<Programme> Programme.findAllProgrammes() {
        return entityManager().createQuery("SELECT o FROM Programme o", Programme.class).getResultList();
    }
    
    public static Programme Programme.findProgramme(Long id_) {
        if (id_ == null) return null;
        return entityManager().find(Programme.class, id_);
    }
    
    public static List<Programme> Programme.findProgrammeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Programme o", Programme.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Programme.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Programme.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Programme attached = Programme.findProgramme(this.id_);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Programme.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Programme.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Programme Programme.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Programme merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
