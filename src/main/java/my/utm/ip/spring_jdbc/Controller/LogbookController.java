package my.utm.ip.spring_jdbc.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import my.utm.ip.spring_jdbc.Model.Logbook;

@Controller
@RequestMapping("/logbook")
public class LogbookController {
    @Autowired
    JdbcTemplate template;

    @RequestMapping("/test")
    ModelAndView list() {
        ModelAndView mv = new ModelAndView("output");
        mv.addObject("title", "List Records");
        final List<String> result = new ArrayList<String>();
        String sql = "SELECT * FROM logbook";
        final List<Logbook> list = template.query(sql,
                new BeanPropertyRowMapper<Logbook>(Logbook.class));
        for (Logbook p : list) {
            result.add(p.toString());
        }
        mv.addObject("result", result);
        return mv;
    }

    @RequestMapping("/")
    public ModelAndView viewLogbookEntries(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("viewLogbookEntry");
        mv.addObject("title", "List Records");
        
        String role = request.getParameter("role");
        mv.addObject("role", role);

        if (role == null) {
        // Handle case where no role is selected
        mv.addObject("result", "Please select a role");
        return mv;
        }
        String sql;
        List<Logbook> logbookList;
        if ("driver".equals(role)) {
        sql = "SELECT * FROM logbook WHERE driverName = 'Luka'";
        } else if ("manager".equals(role)) {
            return new ModelAndView("redirect:/logbook/manager");
        } else {
        // Handle other roles or invalid role
        mv.addObject("result", "Invalid role");
        return mv;
        }

        logbookList = template.query(sql, new BeanPropertyRowMapper<>(Logbook.class));

        mv.addObject("logbookList", logbookList);
        return mv;
    }

    @RequestMapping("/manager")
    public ModelAndView managerView(){
        ModelAndView mv = new ModelAndView("viewLogbookEntry");
        mv.addObject("role", "manager");
        String sql = "SELECT * FROM logbook";
        List<Logbook> logbookList;
        logbookList = template.query(sql, new BeanPropertyRowMapper<>(Logbook.class));
        mv.addObject("logbookList", logbookList);
        return mv;
    }

    @RequestMapping("/edit/{logbookID}")
    public ModelAndView editLogbookEntries(@PathVariable Long logbookID) {
        ModelAndView mv = new ModelAndView("editLogbookEntry");

        // Use a parameterized query to filter records based on logbookID
        String sql = "SELECT * FROM logbook WHERE logbookID = ?";
        final List<Map<String, Object>> rows = template.queryForList(sql, logbookID);
        mv.addObject("role", "driver");
        // Check if any records were found
        if (!rows.isEmpty()) {
            // Access the first row (assuming logbookID is unique)
            Map<String, Object> logbook = rows.get(0);
            mv.addObject("logbook", logbook);
        }

        return mv;
    }

    @RequestMapping("/view/{logbookID}")
    public ModelAndView viewLogbookEntry(@PathVariable Long logbookID) {
        ModelAndView mv = new ModelAndView("editLogbookEntry");

        String sql = "SELECT * FROM logbook WHERE logbookID = ?";
        final List<Map<String, Object>> rows = template.queryForList(sql, logbookID);
        mv.addObject("role", "manager");
        if (!rows.isEmpty()) {
            Map<String, Object> logbook = rows.get(0);
            mv.addObject("logbook", logbook);
        }

        return mv;
    }

    @RequestMapping("/update/{logbookID}")
    public ModelAndView updateLogbookEntry(
            @PathVariable String logbookID,
            @RequestParam String driverName,
            @RequestParam String type,
            @RequestParam String date,
            @RequestParam Double petrol,
            @RequestParam String campusRoute,
            @RequestParam String reservedDest,
            @RequestParam String reservedDepart,
            @RequestParam Double reservedToll,
            @RequestParam Double reservedMileage) {
        final List<String> result = new ArrayList<>();
        java.sql.Date sqlDate = java.sql.Date.valueOf(date);

        String sql = "UPDATE logbook SET driverName=?, type=?, date=?, petrol=?, campusRoute=?,reservedDest=?,reservedDepart=?,reservedToll=?,reservedMileage=?  WHERE logbookID=?";
        int count = template.update(sql, driverName, type, sqlDate, petrol, campusRoute, reservedDest, reservedDepart,
                reservedToll, reservedMileage,
                logbookID);

        if (count > 0) {
            result.add("Logbook entry with ID " + logbookID + " updated successfully.");
        } else {
            result.add("No logbook entry found for update with ID: " + logbookID);
        }

        return new ModelAndView("redirect:/logbook/modified");
    }

    @RequestMapping("/insert")
    public ModelAndView insertLogbook() {
        ModelAndView mv = new ModelAndView("insertLogbookEntry");

        return mv;
    
    }

    @RequestMapping("/insert/new")
    public ModelAndView storeLogbook(@RequestParam String driverName,
    @RequestParam String type,
    @RequestParam String date,
    @RequestParam Double petrol) {
        java.sql.Date sqlDate = java.sql.Date.valueOf(date);
        String sql = "INSERT INTO logbook (driverName, type, date, petrol) VALUES (?, ?, ?, ?)";
        template.update(sql, driverName, type, sqlDate, petrol);
        return new ModelAndView("redirect:/logbook/modified");
    
    }

    @RequestMapping("/delete/{logbookID}")
    public ModelAndView removeLogbookEntry(@PathVariable Long logbookID) {
        String sql = "DELETE FROM logbook WHERE logbookID = ?";
        template.update(sql, logbookID);

        return new ModelAndView("redirect:/logbook/modified");
    }

    @RequestMapping("/modified")
    public ModelAndView viewLogbookEntry() {
        ModelAndView mv = new ModelAndView("viewLogbookEntry");
        mv.addObject("title", "List Records");
        mv.addObject("role", "driver");
        String sql = "SELECT * FROM logbook WHERE driverName = 'Luka'";
        List<Logbook> logbookList;
        logbookList = template.query(sql, new BeanPropertyRowMapper<>(Logbook.class));

        mv.addObject("logbookList", logbookList);
        return mv;
    }

}
