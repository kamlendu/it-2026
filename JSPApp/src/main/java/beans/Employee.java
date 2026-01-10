/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.io.Serializable;
import java.util.HashMap;

/**
 *
 * @author kamlendu
 */
public class Employee implements Serializable {
    
    private int empno;
    private String ename;
    private double salary;
    HashMap<String, String> errors;
    boolean allOK = true;

    public Employee() {
        
        empno=0;
        ename="";
        salary=0.0;
        errors = new HashMap<>();
    }

    public Employee(int empno, String ename, double salary) {
        this.empno = empno;
        this.ename = ename;
        this.salary = salary;
        errors = new HashMap<>();
    }

    public boolean validate()
    {
        allOK=true;
        if(empno<=0)
        {
            errors.put("empno", "Empno should be more than 0 !");
            allOK=false;
        }
        if(ename.equals(""))
        {
            errors.put("ename", "name can not be blank");
            allOK=false;
        }
        if(salary<=1000)
        {
            errors.put("salary", "Salary should be more than 1000");
            allOK=false;
        }
        
         return allOK;  
    }
    
    
    public String getError(String key)
    {
        String err = errors.get(key.trim());
    
        return (err==null)?"":err;
    }
   
    public int getEmpno() {
        return empno;
    }

    public void setEmpno(int empno) {
        this.empno = empno;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
    
    
    
    
    
}
