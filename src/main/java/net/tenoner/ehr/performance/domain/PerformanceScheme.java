package net.tenoner.ehr.performance.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import net.tenoner.ehr.saas.domain.AbstractCompanyDomain;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.macula.core.hibernate.audit.Auditable;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "PERFORMANCE_SCHEME")
@Auditable
public class PerformanceScheme extends AbstractCompanyDomain {

	private static final long serialVersionUID = 1L;

}
