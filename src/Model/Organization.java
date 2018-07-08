package Model;

public class Organization {
	private String organization_id;
	private String organization_name;
	private String central_office_address;
	private String email;
	private String website;
	private String type;
	private String fristname;
	private String lastname;

	public String getFristname() {
		return fristname;
	}

	public void setFristname(String fristname) {
		this.fristname = fristname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	private String administrative_address;
	private String administrative_email;
	private String administrative_phone;
	private String administrative_fax;
	private String password;
	private String logo;

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOrganization_id() {
		return organization_id;
	}

	public void setOrganization_id(String organization_id) {
		this.organization_id = organization_id;
	}

	public String getOrganization_name() {
		return organization_name;
	}

	public void setOrganization_name(String organization_name) {
		this.organization_name = organization_name;
	}

	public String getCentral_office_address() {
		return central_office_address;
	}

	public void setCentral_office_address(String central_office_address) {
		this.central_office_address = central_office_address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAdministrative_address() {
		return administrative_address;
	}

	public void setAdministrative_address(String administrative_address) {
		this.administrative_address = administrative_address;
	}

	public String getAdministrative_email() {
		return administrative_email;
	}

	public void setAdministrative_email(String administrative_email) {
		this.administrative_email = administrative_email;
	}

	public String getAdministrative_phone() {
		return administrative_phone;
	}

	public void setAdministrative_phone(String administrative_phone) {
		this.administrative_phone = administrative_phone;
	}

	public String getAdministrative_fax() {
		return administrative_fax;
	}

	public void setAdministrative_fax(String administrative_fax) {
		this.administrative_fax = administrative_fax;
	}
}
