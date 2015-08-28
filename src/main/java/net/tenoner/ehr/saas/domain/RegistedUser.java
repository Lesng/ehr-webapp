package net.tenoner.ehr.saas.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Email;
import org.macula.core.validation.Length2;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "SS_USER")
public class RegistedUser extends AbstractCompanyDomain {

	private static final long serialVersionUID = 1L;

	/** 用户名 */
	@Column(name = "USER_NAME", length = 50, nullable = false, unique = true)
	@NotNull
	@Length2(min = 1, max = 50)
	private String userName;

	/** 密码 */
	@Column(name = "PASSWORD", length = 250, nullable = false)
	@NotNull
	@Length2(min = 1, max = 250)
	@JsonIgnore
	@XmlTransient
	private String password;

	/** 用户类型 */
	@Column(name = "USER_TYPE", length = 3, nullable = false)
	@NotNull
	@Length2(min = 1, max = 3)
	private String userType;

	/** 用户来源 */
	@Column(name = "USER_FROM", length = 20, nullable = false)
	@NotNull
	@Length2(min = 1, max = 20)
	private String userFrom;

	/** 用户姓名 */
	@Column(name = "USER_REAL_NAME", length = 50, nullable = false)
	@NotNull
	@Length2(min = 1, max = 50)
	private String userRealName;

	/** 用户别名 */
	@Column(name = "USER_NICK_NAME", length = 150, nullable = true)
	@Length2(min = 0, max = 150)
	private String userNickName;

	/** 用户所属组织 */
	@Column(name = "ORG_CODE", length = 50, nullable = false)
	@NotNull
	@Length2(min = 1, max = 50)
	private String orgCode;

	/** 生效日期 */
	@Column(name = "EFFECTIVE_DATE", nullable = false)
	@NotNull
	private Date effectiveDate;

	/** 失效日期 */
	@Column(name = "INACTIVE_DATE", nullable = true)
	private Date inactiveDate;

	/** 是否有效 */
	@Column(name = "IS_ENABLED", length = 1, nullable = false)
	@NotNull
	private Boolean enabled;

	/** 上级用户帐号 */
	@Column(name = "LEADER_ACCOUNT", length = 250, nullable = true)
	@Length2(min = 0, max = 250)
	private String leaderAccount;

	/**
	 * 用户区域 由语言与地区字串拼接而成，中间用下划线连接。 语言字串遵循 ISO-639 标准，地区字串遵循 ISO-3166 标准。
	 */
	@Column(name = "LOCALE", length = 20, nullable = false)
	@NotNull
	@Length2(min = 1, max = 20)
	private String locale;

	/** 用户时区 采用TimeZone中 getAvailableIDs 方法获取的时区ID */
	@Column(name = "TIMEZONE", length = 50, nullable = false)
	@NotNull
	@Length2(min = 1, max = 50)
	private String timezone;

	/** 性别'F'：女；'M'：男 */
	@Column(name = "SEX", length = 1, nullable = false)
	@NotNull
	@Length2(min = 1, max = 1)
	private String sex;

	/** 移动电话 */
	@Column(name = "MOBILE", length = 50, nullable = true)
	@Length2(min = 0, max = 50)
	private String mobile;

	/** 电子邮箱 */
	@Column(name = "EMAIL", length = 50, nullable = true)
	@Length2(min = 0, max = 50)
	@Email
	private String email;

	/** 国家、地区 */
	@Column(name = "REGION", length = 250, nullable = true)
	@Length2(min = 0, max = 250)
	private String region;

	/** 省 */
	@Column(name = "STATE", length = 250, nullable = true)
	@Length2(min = 0, max = 250)
	private String state;

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the userType
	 */
	public String getUserType() {
		return userType;
	}

	/**
	 * @param userType the userType to set
	 */
	public void setUserType(String userType) {
		this.userType = userType;
	}

	/**
	 * @return the userFrom
	 */
	public String getUserFrom() {
		return userFrom;
	}

	/**
	 * @param userFrom the userFrom to set
	 */
	public void setUserFrom(String userFrom) {
		this.userFrom = userFrom;
	}

	/**
	 * @return the userRealName
	 */
	public String getUserRealName() {
		return userRealName;
	}

	/**
	 * @param userRealName the userRealName to set
	 */
	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	/**
	 * @return the userNickName
	 */
	public String getUserNickName() {
		return userNickName;
	}

	/**
	 * @param userNickName the userNickName to set
	 */
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	/**
	 * @return the orgCode
	 */
	public String getOrgCode() {
		return orgCode;
	}

	/**
	 * @param orgCode the orgCode to set
	 */
	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	/**
	 * @return the effectiveDate
	 */
	public Date getEffectiveDate() {
		return effectiveDate;
	}

	/**
	 * @param effectiveDate the effectiveDate to set
	 */
	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	/**
	 * @return the inactiveDate
	 */
	public Date getInactiveDate() {
		return inactiveDate;
	}

	/**
	 * @param inactiveDate the inactiveDate to set
	 */
	public void setInactiveDate(Date inactiveDate) {
		this.inactiveDate = inactiveDate;
	}

	/**
	 * @return the enabled
	 */
	public Boolean getEnabled() {
		return enabled;
	}

	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	/**
	 * @return the leaderAccount
	 */
	public String getLeaderAccount() {
		return leaderAccount;
	}

	/**
	 * @param leaderAccount the leaderAccount to set
	 */
	public void setLeaderAccount(String leaderAccount) {
		this.leaderAccount = leaderAccount;
	}

	/**
	 * @return the locale
	 */
	public String getLocale() {
		return locale;
	}

	/**
	 * @param locale the locale to set
	 */
	public void setLocale(String locale) {
		this.locale = locale;
	}

	/**
	 * @return the timezone
	 */
	public String getTimezone() {
		return timezone;
	}

	/**
	 * @param timezone the timezone to set
	 */
	public void setTimezone(String timezone) {
		this.timezone = timezone;
	}

	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}

	/**
	 * @param region the region to set
	 */
	public void setRegion(String region) {
		this.region = region;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the officeAddr
	 */
	public String getOfficeAddr() {
		return officeAddr;
	}

	/**
	 * @param officeAddr the officeAddr to set
	 */
	public void setOfficeAddr(String officeAddr) {
		this.officeAddr = officeAddr;
	}

	/** 市县 */
	@Column(name = "CITY", length = 250, nullable = true)
	@Length2(min = 0, max = 250)
	private String city;

	/** 办公地点 */
	@Column(name = "OFFICE_ADDR", length = 250, nullable = true)
	@Length2(min = 0, max = 250)
	private String officeAddr;

}
