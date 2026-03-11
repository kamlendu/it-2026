/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;  
  
import java.io.Serializable;  
  
import jakarta.faces.application.FacesMessage;  
import jakarta.faces.context.FacesContext; 
/**
 *
 * @author root
 */
@Named(value = "progressBean")
@RequestScoped
public class ProgressBean implements Serializable {

    /** Creates a new instance of ProgressBean */
    public ProgressBean() {
    }
    
    private Integer progress;  
  
    public Integer getProgress() {  
        if(progress == null)  
            progress = 0;  
        else {  
            progress = progress + (int)(Math.random() * 35);  
              
            if(progress > 100)  
                progress = 100;  
        }  
          
        return progress;  
    }  
  
    public void setProgress(Integer progress) {  
        this.progress = progress;  
    }  
      
    public void onComplete() {  
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Progress Completed", "Progress Completed"));  
    }  
      
    public void cancel() {  
        progress = null;  
    }  
}