// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.personal;


privileged aspect Document_Roo_JavaBean {
    
    public int Document.getVersion() {
        return this.version;
    }
    
    public void Document.setVersion(int version) {
        this.version = version;
    }
    
    public Long Document.getDocumentId() {
        return this.documentId;
    }
    
    public void Document.setDocumentId(Long documentId) {
        this.documentId = documentId;
    }
    
    public DocumentType Document.getDocumentType() {
        return this.documentType;
    }
    
    public void Document.setDocumentType(DocumentType documentType) {
        this.documentType = documentType;
    }
    
    public String Document.getNumber() {
        return this.number;
    }
    
    public void Document.setNumber(String number) {
        this.number = number;
    }
    
}
