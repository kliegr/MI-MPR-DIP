// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.StudyMode;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect StudyMode_Roo_Jpa_Entity {
    
    declare @type: StudyMode: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_")
    private Long StudyMode.id_;
    
    @Version
    @Column(name = "version")
    private Integer StudyMode.version;
    
    public Long StudyMode.getId_() {
        return this.id_;
    }
    
    public void StudyMode.setId_(Long id) {
        this.id_ = id;
    }
    
    public Integer StudyMode.getVersion() {
        return this.version;
    }
    
    public void StudyMode.setVersion(Integer version) {
        this.version = version;
    }
    
}
