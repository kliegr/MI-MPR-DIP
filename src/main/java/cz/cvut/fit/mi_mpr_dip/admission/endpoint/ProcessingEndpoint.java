package cz.cvut.fit.mi_mpr_dip.admission.endpoint;

import java.net.URISyntaxException;

import javax.ws.rs.core.Response;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import cz.cvut.fit.mi_mpr_dip.admission.domain.Admissions;

public interface ProcessingEndpoint {

	public Response getUserIdentity();

	public Response getAdmission(String admissionCode);

	public Admissions getAdmissions(Integer count, Integer page);

	public Admissions importAdmissions(Admissions admissions) throws URISyntaxException;

	public Response addAdmission(Admission admission) throws URISyntaxException;

	public Response deleteAdmission(String admissionCode);
}
