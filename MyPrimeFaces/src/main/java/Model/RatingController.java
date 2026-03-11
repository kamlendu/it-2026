/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
import jakarta.faces.application.FacesMessage;  
import jakarta.faces.context.FacesContext;  
  
import org.primefaces.event.RateEvent;

/**
 *
 * @author root
 */
@Named(value = "ratingController")
@RequestScoped
public class RatingController {

        private int rating1=1;  
  
    private int rating2=2;  
  
    private int rating3=1;  
  
    private int rating4 =3;  
  
    public void handleRate(RateEvent rateEvent) {  
        FacesMessage message = new FacesMessage(
        FacesMessage.SEVERITY_INFO,
        "Rate Event",
        "You rated: " + ((Double) rateEvent.getRating()).intValue()
    );
    FacesContext.getCurrentInstance().addMessage(null, message);    
    }  
  
    public int getRating1() {  
        return rating1;  
    }  
  
    public void setRating1(int rating1) {  
        this.rating1 = rating1;  
    }  
  
    public int getRating2() {  
        return rating2;  
    }  
  
    public void setRating2(int rating2) {  
        this.rating2 = rating2;  
    }  
  
    public int getRating3() {  
        return rating3;  
    }  
  
    public void setRating3(int rating3) {  
        this.rating3 = rating3;  
    }  
  
    public int getRating4() {  
        return rating4;  
    }  
  
    public void setRating4(int rating4) {  
        this.rating4 = rating4;  
    } 
}
