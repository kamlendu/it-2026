/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.validator.ValidatorException;

/**
 *
 * @author kamlendu
 */
@Named(value = "person")
@RequestScoped
public class Person {
    
    String username;
    String password;
    String gender;
    
    String city;
    Integer age;
    
    double salary;
    String email;
    String[] hobbies;
    

    /**
     * Creates a new instance of Person
     */
    public Person() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String[] getHobbies() {
        return hobbies;
    }

    public void setHobbies(String[] hobbies) {
        this.hobbies = hobbies;
    }
    
    public String showOutput()
    {
        return "Show";
    }
    
    
    public void validateSalary(FacesContext ctx, UIComponent uc, Object o)
    {
        
     double sal = (Double) o;

     if( sal <2500)
     {
         
         FacesMessage fm = new FacesMessage("Salary cannot be less than 2500");
         
         fm.setSeverity(FacesMessage.SEVERITY_ERROR);
         
         throw new ValidatorException(fm);
         
     }
     
     
    }
    
    
}
