package Model;

public class Event {
	private String id;
	private String name;
	private String date;
	private String time;
	private String stateid;
	private String cityid;
	private String address;
	private String organizationid;
	private String message;
	private String coordinator_name;
	private String coordinator_phone;
	private String coordinator_emailid;

	public String getCoordinator_name() {
		return coordinator_name;
	}

	public void setCoordinator_name(String coordinator_name) {
		this.coordinator_name = coordinator_name;
	}

	public String getCoordinator_phone() {
		return coordinator_phone;
	}

	public void setCoordinator_phone(String coordinator_phone) {
		this.coordinator_phone = coordinator_phone;
	}

	public String getCoordinator_emailid() {
		return coordinator_emailid;
	}

	public void setCoordinator_emailid(String coordinator_emailid) {
		this.coordinator_emailid = coordinator_emailid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStateid() {
		return stateid;
	}

	public void setStateid(String stateid) {
		this.stateid = stateid;
	}

	public String getCityid() {
		return cityid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOrganizationid() {
		return organizationid;
	}

	public void setOrganizationid(String organizationid) {
		this.organizationid = organizationid;
	}

}
