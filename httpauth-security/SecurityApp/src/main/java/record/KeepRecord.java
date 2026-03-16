/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package record;

import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import jakarta.security.enterprise.CallerPrincipal;
import jakarta.security.enterprise.credential.Credential;
import java.io.Serializable;
import java.util.Set;

/**
 *
 * @author kamlendu
 */
@Named
@SessionScoped
public class KeepRecord implements Serializable {
    
    Credential credential;
    Set<String> roles;
    String username;
    String password;
    CallerPrincipal principal;

    public Credential getCredential() {
        return credential;
    }

    public void setCredential(Credential credential) {
        this.credential = credential;
    }

    public Set<String> getRoles() {
        return roles;
    }

    public void setRoles(Set<String> roles) {
        this.roles = roles;
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

    public void setPassword(String password) {
        this.password = password;
    }

    public CallerPrincipal getPrincipal() {
        return principal;
    }

    public void setPrincipal(CallerPrincipal principal) {
        this.principal = principal;
    }
 
    
    public void reset()
    {
        credential = null;
        roles  = null;
        principal =null;
        username = null;
        password = null;
    }
    
}
