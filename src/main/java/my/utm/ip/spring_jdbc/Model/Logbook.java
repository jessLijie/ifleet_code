package my.utm.ip.spring_jdbc.Model;

import java.sql.Date;

public class Logbook {
  private int logbookID;
  private String driverName;
  private String type;
  private Date date;
  private Double petrol;
 
  public Logbook() {
    this.logbookID = 0;
    this.driverName = "";
    this.type = "";
    this.date = null;
    this.petrol = 0.00;
}

  
public Logbook(int logbookID, String driverName, String type, Date date, Double petrol, String campusRoute) {
    this.logbookID = logbookID;
    this.driverName = driverName;
    this.type = type;
    this.date = date;
    this.petrol = petrol;
    
}
public int getLogbookID() {
    return logbookID;
}
public void setLogbookID(int logbookID) {
    this.logbookID = logbookID;
}
public String getDriverName() {
    return driverName;
}
public void setDriverName(String driverName) {
    this.driverName = driverName;
}
public String getType() {
    return type;
}
public void setType(String type) {
    this.type = type;
}
public Date getDate() {
    return date;
}
public void setDate(Date date) {
    this.date = date;
}
public Double getPetrol() {
    return petrol;
}
public void setPetrol(Double petrol) {
    this.petrol = petrol;
}


@Override
public String toString() {
    return "Logbook [logbookID=" + logbookID + ", driverName=" + driverName + ", type=" + type + ", date=" + date
            + ", petrol=" + petrol + "]";
}



}
