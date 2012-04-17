// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.user;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect UserSession_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager UserSession.entityManager;
    
    public static final EntityManager UserSession.entityManager() {
        EntityManager em = new UserSession().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserSession.countUserSessions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM UserSession o", Long.class).getSingleResult();
    }
    
    public static List<UserSession> UserSession.findAllUserSessions() {
        return entityManager().createQuery("SELECT o FROM UserSession o", UserSession.class).getResultList();
    }
    
    public static UserSession UserSession.findUserSession(Long userSessionId) {
        if (userSessionId == null) return null;
        return entityManager().find(UserSession.class, userSessionId);
    }
    
    public static List<UserSession> UserSession.findUserSessionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM UserSession o", UserSession.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void UserSession.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserSession.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserSession attached = UserSession.findUserSession(this.userSessionId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserSession.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void UserSession.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public UserSession UserSession.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserSession merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
