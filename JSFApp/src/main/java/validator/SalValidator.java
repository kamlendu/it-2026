/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package validator;

import jakarta.faces.application.FacesMessage;
import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.validator.FacesValidator;
import jakarta.faces.validator.Validator;
import jakarta.faces.validator.ValidatorException;

/**
 *
 * @author kamlendu
 */

@FacesValidator("myvalidator")
public class SalValidator implements Validator {

    @Override
    public void validate(FacesContext fc, UIComponent uic, Object t) throws ValidatorException {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   double sal = (Double) t;

     if( sal <2500)
     {
         
         FacesMessage fm = new FacesMessage("Salary cannot be less than 2500");
         
         fm.setSeverity(FacesMessage.SEVERITY_ERROR);
         
         throw new ValidatorException(fm);
         
     }
    
    
    }
    
    
    
}
