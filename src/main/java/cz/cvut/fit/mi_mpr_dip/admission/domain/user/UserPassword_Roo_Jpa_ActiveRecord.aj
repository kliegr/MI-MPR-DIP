// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect UserPassword_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager UserPassword.entityManager;
    
    public static final EntityManager UserPassword.entityManager() {
        EntityManager em = new UserPassword().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserPassword.countUserPasswords() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserPassword o", Long.class).getSingleResult();
    }
    
    public static List<UserPassword> UserPassword.findAllUserPasswords() {
        return entityManager().createQuery("SELECT o FROM UserPassword o", UserPassword.class).getResultList();
    }
    
    public static UserPassword UserPassword.findUserPassword(Long userPasswordId) {
        if (userPasswordId == null) return null;
        return entityManager().find(UserPassword.class, userPasswordId);
    }
    
    public static List<UserPassword> UserPassword.findUserPasswordEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserPassword o", UserPassword.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void UserPassword.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserPassword.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserPassword attached = UserPassword.findUserPassword(this.userPasswordId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserPassword.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserPassword.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserPassword UserPassword.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserPassword merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
