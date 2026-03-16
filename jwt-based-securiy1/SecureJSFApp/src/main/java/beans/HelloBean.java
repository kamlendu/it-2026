/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import client.SecureClient;
import jakarta.inject.Named;
import jakarta.inject.Inject;
import record.KeepRecord;

/**
 *
 * @author root
 */
@Named(value = "helloBean")
//@RequestScoped
public class HelloBean {
    
    SecureClient cl;
    String secureHello;
    String message="";
    @Inject KeepRecord keepRecord;

    
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
         cl = new SecureClient(keepRecord.getToken());
         message="";
        return cl.sayHello();
        }
        catch(Exception e)
        {
            message="You are Forbidden to access";
        }
        return null;
     }

    public void setSecureHello(String secureHello) {
        this.secureHello = secureHello;
    }
  
}
