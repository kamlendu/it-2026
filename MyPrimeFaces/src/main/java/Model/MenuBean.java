/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
  import jakarta.faces.application.FacesMessage;  
import jakarta.faces.context.FacesContext;  
import jakarta.faces.event.ActionEvent;  
/**
 *
 * @author root
 */
@Named(value = "menuBean")
@RequestScoped
public class MenuBean { 
      
    public void save(ActionEvent actionEvent) {  
        addMessage("Data saved");  
    }  
      
    public void update(ActionEvent actionEvent) {  
        addMessage("Data updated");  
    }  
      
    public void delete(ActionEvent actionEvent) {  
        addMessage("Data deleted");  
    }  
      
    public void addMessage(String summary) {  
        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, summary,  null);  
        FacesContext.getCurrentInstance().addMessage(null, message);  
    }  
}
