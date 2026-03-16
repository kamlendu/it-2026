/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import client.SecureClient;
import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Inject;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import record.KeepRecord;
//import record.KeepRecord;

/**
 *
 * @author root
 */
@Named(value = "helloBean")
@RequestScoped
public class HelloBean {
   @Inject private KeepRecord keepRecord;
    
    SecureClient cl;
    String secureHello;
    String message="";

    
    public String getMessage() {
        return message;
       
    }

    /**
     * Creates a new instance of HelloBean
     */
    public void setMessage(String message) {    
        this.message = message;
    }

    public HelloBean() {
    }

    public String getSecureHello() {
        try{
              HttpServletRequest request = (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();
      
              HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
     
         String username = keepRecord.getUsername();
       String password = keepRecord.getPassword();
        cl = new SecureClient(username, password);
         message="";
        return cl.sayHello();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            message="You are Forbidden to access";
        }
        return null;
     }

    public void setSecureHello(String secureHello) {
        this.secureHello = secureHello;
    }
  
}
