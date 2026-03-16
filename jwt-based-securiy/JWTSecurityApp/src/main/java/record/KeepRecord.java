/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package record;

import java.io.Serializable;
import java.util.Set;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import jakarta.security.enterprise.CallerPrincipal;

/**
 *
 * @author root
 */
@Named
@SessionScoped
public class KeepRecord implements Serializable {
    
  
    private  CallerPrincipal principal;
    private  Set<String> roles;
    private  String token;
    private  String username;
    private  String password;

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


    public  String getToken() {
        return token;
    }

    public  void setToken(String token) {
        this.token = token;
    }

   
    public  CallerPrincipal getPrincipal() {
        return principal;
    }

    public  void setPrincipal(CallerPrincipal principal) {
        this.principal = principal;
    }

    public  Set<String> getRoles() {
        return roles;
    }

    public  void setRoles(Set<String> roles) {
        this.roles = roles;
    }

   

    
   
    public  void reset()
    {
        
        principal=null;
        roles=null;
        username=null;
        password=null;
        token=null;
    }
}
