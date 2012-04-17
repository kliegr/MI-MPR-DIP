// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.address;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect Country_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Country.entityManager;
    
    public static final EntityManager Country.entityManager() {
        EntityManager em = new Country().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Country.countCountrys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Country o", Long.class).getSingleResult();
    }
    
    public static List<Country> Country.findAllCountrys() {
        return entityManager().createQuery("SELECT o FROM Country o", Country.class).getResultList();
    }
    
    public static Country Country.findCountry(Long countryId) {
        if (countryId == null) return null;
        return entityManager().find(Country.class, countryId);
    }
    
    public static List<Country> Country.findCountryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Country o", Country.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Country.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Country.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Country attached = Country.findCountry(this.countryId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Country.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Country.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Country Country.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Country merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
