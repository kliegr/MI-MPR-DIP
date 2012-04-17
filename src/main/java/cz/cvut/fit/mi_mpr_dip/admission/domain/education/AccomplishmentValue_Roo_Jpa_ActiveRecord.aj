// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.education;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect AccomplishmentValue_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AccomplishmentValue.entityManager;
    
    public static final EntityManager AccomplishmentValue.entityManager() {
        EntityManager em = new AccomplishmentValue().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AccomplishmentValue.countAccomplishmentValues() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AccomplishmentValue o", Long.class).getSingleResult();
    }
    
    public static List<AccomplishmentValue> AccomplishmentValue.findAllAccomplishmentValues() {
        return entityManager().createQuery("SELECT o FROM AccomplishmentValue o", AccomplishmentValue.class).getResultList();
    }
    
    public static AccomplishmentValue AccomplishmentValue.findAccomplishmentValue(Long accomplishmentValueId) {
        if (accomplishmentValueId == null) return null;
        return entityManager().find(AccomplishmentValue.class, accomplishmentValueId);
    }
    
    public static List<AccomplishmentValue> AccomplishmentValue.findAccomplishmentValueEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AccomplishmentValue o", AccomplishmentValue.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AccomplishmentValue.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AccomplishmentValue.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AccomplishmentValue attached = AccomplishmentValue.findAccomplishmentValue(this.accomplishmentValueId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AccomplishmentValue.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AccomplishmentValue.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AccomplishmentValue AccomplishmentValue.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AccomplishmentValue merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
