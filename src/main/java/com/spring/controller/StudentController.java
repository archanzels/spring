package com.spring.controller;

import com.spring.model.Student;
import com.spring.service.StudentService;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/list")
    public String showStudent(Model theModel) {
        List<Student> theStudents = studentService.getStudents();
        theModel.addAttribute("students", theStudents);
        return "student/student-list";
    }

    @GetMapping("/showAddForm")
    public String addStudent(Model theModel) {
        Student student = new Student();
        theModel.addAttribute("student", student);
        return "student/student-form";
    }

    @PostMapping("/save")
    public String saveStudent(@ModelAttribute("student") @Valid Student theStudent, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "student/student-form";
        } else {
            studentService.addStudent(theStudent);
            return "redirect:/student/list";
        }
    }

    @GetMapping("/delete")
    public String deleteStudent(@RequestParam("studentId") int theId, Model theModel) {
        studentService.delete(theId);
        return "redirect:/student/list";
    }

    @GetMapping("/update")
    public String updateStudent(@RequestParam("studentId") int theId, Model theModel) {
        Student theStudent = studentService.getStudent(theId);
        theModel.addAttribute("student", theStudent);
        return "student/student-form";
    }

    @GetMapping("/upload")
    public String showUploadForm() {
        return "student/upload-form";
    }

    @PostMapping("/processUpload")
    public String processUpload(@RequestParam("excelFile") MultipartFile excelFile) {
        try {
            List<Student> studentList = new ArrayList<>();
            int i = 1;
            XSSFWorkbook workbook = new XSSFWorkbook(excelFile.getInputStream());
            XSSFSheet sheet = workbook.getSheetAt(0);
            while (i <= sheet.getLastRowNum()) {
                XSSFRow row = sheet.getRow(i++);
                Student student = new Student();
                student.setName(row.getCell(1).getStringCellValue());
                studentList.add(student);
            }
            workbook.close();
            studentService.uploadFromExcel(studentList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/student/list";
    }
}
