/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Set;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Inject;
import jakarta.security.enterprise.AuthenticationStatus;
import jakarta.security.enterprise.SecurityContext;
import static jakarta.security.enterprise.authentication.mechanism.http.AuthenticationParameters.withParams;
import jakarta.security.enterprise.credential.Credential;
import jakarta.security.enterprise.credential.Password;
import jakarta.security.enterprise.credential.UsernamePasswordCredential;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import record.KeepRecord;


/**
 *
 * @author root
 */
@Named(value = "loginBean")
@RequestScoped
public class LoginBean {
    @Inject SecurityContext ctx;
   @Inject KeepRecord keepRecord;
    
    private String username;
    private String password;
    private Set<String> roles;
    private String errorstatus;
    private AuthenticationStatus status;
    
    public AuthenticationStatus getStatus() {
        return status;
    }

    public void setStatus(AuthenticationStatus status) {
        this.status = status;
    }

    public SecurityContext getCtx() {
        return ctx;
    }

    public void setCtx(SecurityContext ctx) {
        this.ctx = ctx;
    }

    public KeepRecord getKeepRecord() {
        return keepRecord;
    }

    public void setKeepRecord(KeepRecord keepRecord) {
        this.keepRecord = keepRecord;
    }

    public String getErrorstatus() {
        return errorstatus;
    }

    public void setErrorstatus(String errorstatus) {
        this.errorstatus = errorstatus;
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

    public Set<String> getRoles() {
        return roles;
    }

    public void setRoles(Set<String> roles) {
        this.roles = roles;
    }

    public String getErrorStatus() {
        return errorstatus;
    }

    public void setErrorStatus(String status) {
        this.errorstatus = status;
    }

    public String login()
    {
        try{
        FacesContext context = FacesContext.getCurrentInstance();
        
        Credential credential = new UsernamePasswordCredential(username, new Password(password));
         HttpServletRequest request = (HttpServletRequest) FacesContext
                 .getCurrentInstance()
                 .getExternalContext().getRequest();
        HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
      
    AuthenticationStatus     mystatus=   ctx.authenticate(request, response, withParams().credential(credential));
     
     if(mystatus.equals(mystatus.SUCCESS))
        {
          
          keepRecord.setUsername(username);
          keepRecord.setPassword(password);
          
          
          


System.out.println("Jsf username "+ keepRecord.getUsername());
    System.out.println("jsf password "+ keepRecord.getUsername());
           
        if(ctx.isCallerInRole("Admin"))
            return "/admin/Admin";
       else if(ctx.isCallerInRole("Supervisor"))
            return "/user/User";    
       
        }
     else
     {
          errorstatus= "User Name or Password may be wrong";
          return "/Login";
     }
       
        }
        catch(Exception e)
        {
             errorstatus= "User Name or Password may be wrong";
            e.printStackTrace();
        }
        return "/Login";
    }
    /**
     * Creates a new instance of LoginBean
     */
    
    public String logout()
    {
        try{
        HttpServletRequest request = (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();
        HttpSession session= request.getSession();
        request.logout();
       session.invalidate();
      keepRecord.reset();
        }
        catch(Exception e)
        {
            
        }
        return "/Login";
    }
    public LoginBean() {
        
       // errorstatus="";
    }
    
   
    
  
}
