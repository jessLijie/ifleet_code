package my.utm.ip.spring_jdbc.Model;

import java.sql.Date;

public class reservedBusLogbook extends reservedLogbook {
    private Double travelAllowance;

    public reservedBusLogbook(int logbookID, String driverName, String type, Date date, Double petrol,
            String reservedDest, String reservedDepart, Double reservedToll, Double reservedMileage,
            Double travelAllowance) {
        super(logbookID, driverName, type, date, petrol, reservedDest, reservedDepart, reservedToll,
                reservedMileage);
        this.travelAllowance = travelAllowance;
    }

    public Double getTravelAllowance() {
        return travelAllowance;
    }

    public void setTravelAllowance(Double travelAllowance) {
        this.travelAllowance = travelAllowance;
    }
}
