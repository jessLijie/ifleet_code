package my.utm.ip.spring_jdbc.Controller;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import my.utm.ip.spring_jdbc.Model.License;

@Controller
@RequestMapping("/license")
public class LicenseController {
    @Autowired
    JdbcTemplate template;

    @RequestMapping("/")
    ModelAndView list() {
        ModelAndView mv = new ModelAndView("output");
        mv.addObject("title", "List Records");
        final List<String> result = new ArrayList<String>();
        String sql = "SELECT * FROM license";
        final List<License> list = template.query(sql,
                new BeanPropertyRowMapper<License>(License.class));
        for (License p : list) {
            result.add(p.toString());
        }
        mv.addObject("result", result);
        return mv;
    }

    
}
