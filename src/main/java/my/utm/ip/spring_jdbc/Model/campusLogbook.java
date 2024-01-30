package my.utm.ip.spring_jdbc.Model;

import java.sql.Date;

public class campusLogbook extends Logbook {
    private String campusRoute;
    private reservedLogbook reservedLogbook;

    public campusLogbook(int logbookID, String driverName, String type, Date date, Double petrol, String campusRoute,
            String reservedDest, String reservedDepart, Double reservedToll, Double reservedMileage) {
        super(logbookID, driverName, type, date, petrol, campusRoute);
        this.campusRoute = campusRoute;
       
    }


    public String getCampusRoute() {
        return campusRoute;
    }

    public void setCampusRoute(String campusRoute) {
        this.campusRoute = campusRoute;
    }

    public reservedLogbook getReservedLogbook() {
        return reservedLogbook;
    }

    public void setReservedLogbook(reservedLogbook reservedLogbook) {
        this.reservedLogbook = reservedLogbook;
    }
}
