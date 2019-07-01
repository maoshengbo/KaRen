package com.example.kaRen.webserviceController;

import com.example.kaRen.domain.Student;
import com.example.kaRen.service.StudentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/stu")
public class StudentController {

    private static final Logger logger = LoggerFactory.getLogger(StudentController.class);

    @Autowired
    private StudentService studentService;

    @RequestMapping("/list")
    public List<Student> getStus(){
        logger.info("从数据库读取Student集合");
        logger.error("从数据库读取Student集合");
        logger.debug("从数据库读取Student集合");
        return studentService.getList();
    }
}
