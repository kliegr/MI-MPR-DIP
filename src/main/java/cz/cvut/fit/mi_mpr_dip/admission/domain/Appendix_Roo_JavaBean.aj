// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Appendix;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixContent;
import cz.cvut.fit.mi_mpr_dip.admission.domain.AppendixType;
import cz.cvut.fit.mi_mpr_dip.admission.domain.Link;

privileged aspect Appendix_Roo_JavaBean {
    
    public int Appendix.getVersion() {
        return this.version;
    }
    
    public void Appendix.setVersion(int version) {
        this.version = version;
    }
    
    public Long Appendix.getAppendixId() {
        return this.appendixId;
    }
    
    public void Appendix.setAppendixId(Long appendixId) {
        this.appendixId = appendixId;
    }
    
    public String Appendix.getIdentifier() {
        return this.identifier;
    }
    
    public void Appendix.setIdentifier(String identifier) {
        this.identifier = identifier;
    }
    
    public String Appendix.getFilename() {
        return this.filename;
    }
    
    public void Appendix.setFilename(String filename) {
        this.filename = filename;
    }
    
    public Link Appendix.getLink() {
        return this.link;
    }
    
    public void Appendix.setLink(Link link) {
        this.link = link;
    }
    
    public String Appendix.getMimeType() {
        return this.mimeType;
    }
    
    public void Appendix.setMimeType(String mimeType) {
        this.mimeType = mimeType;
    }
    
    public AppendixContent Appendix.getAppendixContent() {
        return this.appendixContent;
    }
    
    public void Appendix.setAppendixContent(AppendixContent appendixContent) {
        this.appendixContent = appendixContent;
    }
    
    public String Appendix.getContent() {
        return this.content;
    }
    
    public void Appendix.setContent(String content) {
        this.content = content;
    }
    
    public AppendixType Appendix.getAppendixType() {
        return this.appendixType;
    }
    
    public void Appendix.setAppendixType(AppendixType appendixType) {
        this.appendixType = appendixType;
    }
    
}
