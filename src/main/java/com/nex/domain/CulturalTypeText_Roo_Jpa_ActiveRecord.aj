// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nex.domain;

import com.nex.domain.CulturalTypeText;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CulturalTypeText_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext(unitName = "puCulfinder")
    transient EntityManager CulturalTypeText.entityManager;
    
    public static final EntityManager CulturalTypeText.entityManager() {
        EntityManager em = new CulturalTypeText().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CulturalTypeText.countCulturalTypeTexts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CulturalTypeText o", Long.class).getSingleResult();
    }
    
    public static List<CulturalTypeText> CulturalTypeText.findAllCulturalTypeTexts() {
        return entityManager().createQuery("SELECT o FROM CulturalTypeText o", CulturalTypeText.class).getResultList();
    }
    
    public static CulturalTypeText CulturalTypeText.findCulturalTypeText(Long id) {
        if (id == null) return null;
        return entityManager().find(CulturalTypeText.class, id);
    }
    
    public static List<CulturalTypeText> CulturalTypeText.findCulturalTypeTextEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CulturalTypeText o", CulturalTypeText.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CulturalTypeText.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CulturalTypeText.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CulturalTypeText attached = CulturalTypeText.findCulturalTypeText(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CulturalTypeText.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CulturalTypeText.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CulturalTypeText CulturalTypeText.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CulturalTypeText merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}