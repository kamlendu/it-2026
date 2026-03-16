/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package record;

import java.io.Serializable;
import jakarta.ejb.Stateful;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;

/**
 *
 * @author root
 */

@Named
@SessionScoped
public class KeepRecord implements Serializable {
    
    String username;
     String password;

    public KeepRecord() {
        
    }
    
    

    public  String getUsername() {
        return username;
    }

    public  void setUsername(String username) {
        this.username = username;
    }

    public  String getPassword() {
        return password;
    }

    public  void setPassword(String password) {
        this.password = password;
    }
    
    public  void reset()
    {
        username=null;
        password=null;
    }
    
}
