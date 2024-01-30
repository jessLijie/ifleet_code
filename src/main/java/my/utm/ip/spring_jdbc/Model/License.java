package my.utm.ip.spring_jdbc.Model;

public class License {
    private int licenseID;
    private String licenseImg;
    private int driverID;

    public License() {
        this.licenseID = 0;
        this.licenseImg = "";
        this.driverID = 0;
    }
    
    public License(int licenseID, String licenseImg, int driverID) {
        this.licenseID = licenseID;
        this.licenseImg = licenseImg;
        this.driverID = driverID;
    }

    public int getLicenseID() {
        return licenseID;
    }
    public void setLicenseID(int licenseID) {
        this.licenseID = licenseID;
    }
    
    public int getDriverID() {
        return driverID;
    }
    public void setDriverID(int driverID) {
        this.driverID = driverID;
    }

    @Override
        public String toString() {
            return " {id=" + licenseID + ", driverID=" + driverID + ", licenseImg=" + licenseImg +" }";
        }

    public String getLicenseImg() {
        return licenseImg;
    }

    public void setLicenseImg(String licenseImg) {
        this.licenseImg = licenseImg;
    }

    
}
