package com.armezo.easysurvey.EasySurvey.UserModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin_user_master")
public class UserMaster {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="userid")
	private String userid;
	
	@Column(name="password")
	private String password;
	
	@Column(name="roleid")
	private String roleid;
	
	@Column(name="status")
	private String status;
	
	@Column(name="EMAIL_ID")
	private String emailId;
	
	@Column(name="contact_no")
	private String contactNo;
	
	@Column(name="company_name")
	private String companyName;
	
	@Column(name="cmp_short_name")
	private String cmpShortName;
	
	@Column(name="photo_flag")
	private String photoFlag;
	
	@Column(name="photo_key")
	private String photoKey;
	
	@Column(name="system_type")
	private String systemType;
}
