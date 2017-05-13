package data;

public class President {
	private String fName, mName, lName, party, termNumber, startYear, endYear, image;

	public President(String fName, String mName, String lName, String party, String termNumber, String startYear,
			String endYear, String image) {
		super();
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.party = party;
		this.termNumber = termNumber;
		this.startYear = startYear;
		this.endYear = endYear;
		this.image = image;
	}

	public President() {
		super();
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getParty() {
		return party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	public String getTermNumber() {
		return termNumber;
	}

	public void setTermNumber(String termNumber) {
		this.termNumber = termNumber;
	}

	public String getStartYear() {
		return startYear;
	}

	public void setStartYear(String startYear) {
		this.startYear = startYear;
	}

	public String getEndYear() {
		return endYear;
	}

	public void setEndYear(String endYear) {
		this.endYear = endYear;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("President [fName=").append(fName).append(", mName=").append(mName).append(", lName=")
				.append(lName).append(", party=").append(party).append(", termNumber=").append(termNumber)
				.append(", startYear=").append(startYear).append(", endYear=").append(endYear).append("]");
		return builder.toString();
	}
	
	
}
